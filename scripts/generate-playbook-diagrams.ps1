param(
    [string]$PlaybookDir = (Join-Path $PSScriptRoot "..\playbooks"),
    [string]$OutputPath = (Join-Path $PSScriptRoot "..\playbooks\diagramas-flujo-playbooks.md")
)

$ErrorActionPreference = "Stop"

function Convert-ToPlainText {
    param([string]$Text)

    if (-not $Text) {
        return ""
    }

    $clean = $Text
    $clean = [regex]::Replace($clean, '<a\s+name="[^"]+"></a>', '')
    $clean = [regex]::Replace($clean, '\[([^\]]+)\]\([^)]+\)', '$1')
    $clean = [regex]::Replace($clean, '<[^>]+>', '')
    $clean = $clean -replace '\*\*', ''
    $clean = $clean -replace '`', ''
    $clean = $clean -replace '\s+', ' '
    return $clean.Trim()
}

function Convert-ToMermaidLabel {
    param([string]$Text)

    $label = Convert-ToPlainText $Text
    $label = $label -replace '"', "'"
    $label = $label -replace '\[', '('
    $label = $label -replace '\]', ')'
    $label = $label -replace '\{', '('
    $label = $label -replace '\}', ')'
    return $label
}

function Get-NormalizedHeading {
    param([string]$Text)

    $normalized = (Convert-ToPlainText $Text).ToLowerInvariant()
    $normalized = $normalized -replace 'Ã¡', 'a'
    $normalized = $normalized -replace 'Ã©', 'e'
    $normalized = $normalized -replace 'Ã­', 'i'
    $normalized = $normalized -replace 'Ã³', 'o'
    $normalized = $normalized -replace 'Ãº', 'u'
    $normalized = $normalized -replace 'Ã±', 'n'
    $normalized = $normalized -replace 'á', 'a'
    $normalized = $normalized -replace 'é', 'e'
    $normalized = $normalized -replace 'í', 'i'
    $normalized = $normalized -replace 'ó', 'o'
    $normalized = $normalized -replace 'ú', 'u'
    $normalized = $normalized -replace 'ñ', 'n'
    return $normalized
}

function Get-SectionLines {
    param(
        [string[]]$Lines,
        [string]$HeadingPattern,
        [int]$Level
    )

    $start = -1
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i] -match '^(#{2,4})\s+(.+)$') {
            $headingLevel = $Matches[1].Length
            $headingText = Get-NormalizedHeading $Matches[2]
            if ($headingLevel -eq $Level -and $headingText -match $HeadingPattern) {
                $start = $i + 1
                break
            }
        }
    }

    if ($start -lt 0) {
        return @()
    }

    $end = $Lines.Count
    for ($i = $start; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i] -match '^(#{2,4})\s+') {
            $headingLevel = $Matches[1].Length
            if ($headingLevel -le $Level) {
                $end = $i
                break
            }
        }
    }

    if ($end -le $start) {
        return @()
    }

    return $Lines[$start..($end - 1)]
}

function Get-SectionIntroLines {
    param(
        [string[]]$Lines,
        [string]$HeadingPattern,
        [int]$Level
    )

    $section = Get-SectionLines -Lines $Lines -HeadingPattern $HeadingPattern -Level $Level
    if (-not $section -or $section.Count -eq 0) {
        return @()
    }

    $end = $section.Count
    for ($i = 0; $i -lt $section.Count; $i++) {
        if ($section[$i] -match '^#{2,4}\s+') {
            $end = $i
            break
        }
    }

    if ($end -le 0) {
        return @()
    }

    return $section[0..($end - 1)]
}

function Get-IntroText {
    param([string[]]$Lines)

    $parts = [System.Collections.Generic.List[string]]::new()
    for ($i = 1; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i] -match '^#{2,4}\s+') {
            break
        }
        $text = Convert-ToPlainText $Lines[$i]
        if ($text) {
            $parts.Add($text)
        }
    }

    $intro = ($parts -join ' ')
    if ($intro -match '(?i)(este playbook se activa ante.+)$') {
        return $Matches[1]
    }
    return $intro
}

function Get-EvidenceText {
    param([string[]]$Lines)

    foreach ($line in $Lines) {
        if ($line -match '^Evidencias asociadas:\s*(.+)$') {
            return $Matches[1].Trim()
        }
    }
    return "No definida"
}

function Get-MarkdownSteps {
    param([string[]]$SectionLines)

    $steps = [System.Collections.Generic.List[object]]::new()
    $current = $null

    foreach ($line in $SectionLines) {
        if ($line -match '^#{2,4}\s+') {
            continue
        }

        if ($line -match '^\s{0,3}(\d+)\.\s+(.+)$') {
            if ($current) {
                $steps.Add($current)
            }
            $current = [ordered]@{
                text = Convert-ToPlainText $Matches[2]
                details = [System.Collections.Generic.List[string]]::new()
            }
            continue
        }

        if ($line -match '^\s{0,3}[*-]\s+(.+)$') {
            if ($current) {
                $steps.Add($current)
            }
            $current = [ordered]@{
                text = Convert-ToPlainText $Matches[1]
                details = [System.Collections.Generic.List[string]]::new()
            }
            continue
        }

        if ($line -match '^\s+[*-]\s+(.+)$') {
            $detail = Convert-ToPlainText $Matches[1]
            if ($detail) {
                if (-not $current) {
                    $current = [ordered]@{
                        text = $detail
                        details = [System.Collections.Generic.List[string]]::new()
                    }
                }
                else {
                    $current.details.Add($detail)
                }
            }
            continue
        }
    }

    if ($current) {
        $steps.Add($current)
    }

    return $steps
}

function Get-FirstParagraphBefore {
    param(
        [string[]]$Lines,
        [string]$StopPattern
    )

    $parts = [System.Collections.Generic.List[string]]::new()
    foreach ($line in $Lines) {
        if ($line -match $StopPattern) {
            break
        }
        if ($line -match '^#{2,4}\s+') {
            continue
        }
        $text = Convert-ToPlainText $line
        if ($text) {
            $parts.Add($text)
        }
    }
    return ($parts -join ' ')
}

function Get-ParagraphMatching {
    param(
        [string[]]$Lines,
        [string]$Pattern
    )

    $collect = $false
    $parts = [System.Collections.Generic.List[string]]::new()
    foreach ($line in $Lines) {
        $text = Convert-ToPlainText $line
        if (-not $text) {
            if ($collect -and $parts.Count -gt 0) {
                break
            }
            continue
        }
        if (-not $collect -and $text -match $Pattern) {
            $collect = $true
        }
        if ($collect) {
            $parts.Add($text)
        }
    }
    return ($parts -join ' ')
}

function New-NodeId {
    param(
        [string]$Prefix,
        [int]$Number
    )

    return "$Prefix$Number"
}

function Add-Node {
    param(
        [System.Collections.Generic.List[string]]$Lines,
        [string]$Id,
        [string]$Text,
        [string]$Shape = "box"
    )

    $label = Convert-ToMermaidLabel $Text
    if ($Shape -eq "decision") {
        $Lines.Add("    $Id{""$label""}")
    }
    else {
        $Lines.Add("    $Id[""$label""]")
    }
}

function Add-StepNodes {
    param(
        [System.Collections.Generic.List[string]]$Lines,
        [string]$Prefix,
        [string]$Stage,
        [object[]]$Steps,
        [string]$PreviousNode
    )

    $last = $PreviousNode
    for ($i = 0; $i -lt $Steps.Count; $i++) {
        $id = New-NodeId $Prefix ($i + 1)
        $step = $Steps[$i]
        $text = "$Stage $($i + 1): $($step.text)"
        if ($step.details -and $step.details.Count -gt 0) {
            $text = "$text. Detalle: " + (($step.details | ForEach-Object { $_ }) -join '; ')
        }
        Add-Node -Lines $Lines -Id $id -Text $text
        if ($last) {
            $Lines.Add("    $last --> $id")
        }
        $last = $id
    }
    return $last
}

function Add-OptionalSupportBranch {
    param(
        [System.Collections.Generic.List[string]]$Lines,
        [string]$Prefix,
        [string]$Stage,
        [object[]]$Steps,
        [string]$FromNode,
        [string]$ToNode
    )

    if (-not $Steps -or $Steps.Count -eq 0) {
        return
    }

    $startId = "${Prefix}0"
    Add-Node -Lines $Lines -Id $startId -Text $Stage
    $Lines.Add("    $FromNode -.-> $startId")
    $last = Add-StepNodes -Lines $Lines -Prefix $Prefix -Stage $Stage -Steps $Steps -PreviousNode $startId
    $Lines.Add("    $last -.-> $ToNode")
}

$playbooks = Get-ChildItem -Path $PlaybookDir -Filter "playbook-*.md" |
    Sort-Object Name

$lines = [System.Collections.Generic.List[string]]::new()
$lines.Add("# Diagramas de flujo de playbooks")
$lines.Add("")
$lines.Add("Este archivo se genera automaticamente desde `scripts/generate-playbook-diagrams.ps1`. Cada diagrama se construye leyendo las secciones reales del playbook: investigacion, preguntas clave, falso positivo/escalado, contencion, erradicacion, comunicacion, recuperacion y recursos operativos.")
$lines.Add("")
$lines.Add("Para regenerarlo:")
$lines.Add("")
$lines.Add('```powershell')
$lines.Add(".\scripts\generate-playbook-diagrams.ps1")
$lines.Add('```')
$lines.Add("")

foreach ($playbook in $playbooks) {
    $rawLines = Get-Content -Encoding UTF8 $playbook.FullName
    $content = $rawLines -join "`n"
    $titleMatch = [regex]::Match($content, "(?m)^## Playbook:\s*(.+)$")
    if (-not $titleMatch.Success) {
        continue
    }

    $title = $titleMatch.Groups[1].Value.Trim()
    $intro = Get-IntroText $rawLines
    $evidence = Get-EvidenceText $rawLines

    $investigation = Get-MarkdownSteps (Get-SectionLines -Lines $rawLines -HeadingPattern '^(investigar|investigacion)$' -Level 3)
    $questions = Get-MarkdownSteps (Get-SectionLines -Lines $rawLines -HeadingPattern '^preguntas clave de la investigacion$' -Level 4)
    $falsePositiveLines = Get-SectionIntroLines -Lines $rawLines -HeadingPattern '^falso positivo y escalado$' -Level 3
    $falsePositiveText = Get-FirstParagraphBefore -Lines $falsePositiveLines -StopPattern '(?i)^Comprobaciones'
    $falsePositiveChecks = Get-MarkdownSteps $falsePositiveLines
    $escalationText = Get-ParagraphMatching -Lines $falsePositiveLines -Pattern '^(Debe escalarse|Debe escalar)'
    $remediationIntro = Get-MarkdownSteps (Get-SectionIntroLines -Lines $rawLines -HeadingPattern '^remediar$' -Level 3)
    $containment = Get-MarkdownSteps (Get-SectionLines -Lines $rawLines -HeadingPattern '^contencion$' -Level 4)
    $eradication = Get-MarkdownSteps (Get-SectionLines -Lines $rawLines -HeadingPattern '^erradicar$' -Level 4)
    $remediationResources = Get-MarkdownSteps (Get-SectionLines -Lines $rawLines -HeadingPattern '^referencia: recursos de remediacion$' -Level 4)
    $communication = Get-MarkdownSteps (Get-SectionLines -Lines $rawLines -HeadingPattern '^comunicar$' -Level 3)
    $recovery = Get-MarkdownSteps (Get-SectionLines -Lines $rawLines -HeadingPattern '^recuperacion$' -Level 3)
    $userActions = Get-MarkdownSteps (Get-SectionLines -Lines $rawLines -HeadingPattern '^referencia: acciones (del usuario|de usuarios)' -Level 4)
    $helpdeskActions = Get-MarkdownSteps (Get-SectionLines -Lines $rawLines -HeadingPattern '^referencia: acciones del help desk$' -Level 4)

    $lines.Add("## $title")
    $lines.Add("")
    $lines.Add('Playbook fuente: `playbooks/' + $playbook.Name + '`')
    $lines.Add("")
    $lines.Add("Evidencias MITRE/RE&CT: $evidence")
    $lines.Add("")
    $lines.Add('```mermaid')
    $lines.Add("flowchart TD")

    Add-Node -Lines $lines -Id "A" -Text "Activacion: $intro"
    Add-Node -Lines $lines -Id "B" -Text "Abrir expediente, conservar evidencias y nombrar el incidente"
    $lines.Add("    A --> B")
    Add-Node -Lines $lines -Id "M" -Text "Usar evidencias MITRE ATT&CK y RE&CT: $evidence"
    $lines.Add("    B --> M")

    Add-OptionalSupportBranch -Lines $lines -Prefix "U" -Stage "Acciones del usuario" -Steps $userActions -FromNode "A" -ToNode "B"
    Add-OptionalSupportBranch -Lines $lines -Prefix "HD" -Stage "Acciones del help desk" -Steps $helpdeskActions -FromNode "A" -ToNode "B"

    $last = Add-StepNodes -Lines $lines -Prefix "I" -Stage "Investigar" -Steps $investigation -PreviousNode "M"

    if ($questions.Count -gt 0) {
        Add-Node -Lines $lines -Id "Q0" -Text "Responder preguntas clave de la investigacion antes de cerrar alcance"
        $lines.Add("    $last --> Q0")
        $last = Add-StepNodes -Lines $lines -Prefix "Q" -Stage "Pregunta clave" -Steps $questions -PreviousNode "Q0"
    }

    if ($falsePositiveText) {
        Add-Node -Lines $lines -Id "FP0" -Text "Evaluar falso positivo: $falsePositiveText"
        $lines.Add("    $last --> FP0")
        $last = "FP0"
    }

    if ($falsePositiveChecks.Count -gt 0) {
        $last = Add-StepNodes -Lines $lines -Prefix "FP" -Stage "Comprobacion falso positivo" -Steps $falsePositiveChecks -PreviousNode $last
    }

    Add-Node -Lines $lines -Id "FPD" -Text "Se confirma falso positivo?" -Shape "decision"
    $lines.Add("    $last --> FPD")
    Add-Node -Lines $lines -Id "CLOSE" -Text "Cerrar como evento, documentar decision y mantener monitorizacion si procede"
    $lines.Add("    FPD -- ""Si"" --> CLOSE")

    if (-not $escalationText) {
        $escalationText = "Escalar si hay severidad S1/S2, datos personales, proveedor afectado, impacto publico, decision critica o duda de alcance."
    }
    Add-Node -Lines $lines -Id "ESC0" -Text "Evaluar escalado: $escalationText"
    $lines.Add("    FPD -- ""No o duda"" --> ESC0")
    Add-Node -Lines $lines -Id "ESCD" -Text "Requiere escalado?" -Shape "decision"
    $lines.Add("    ESC0 --> ESCD")
    Add-Node -Lines $lines -Id "ESCA" -Text "Activar roles del plan: IC, Adjunto si procede, Escriba, SMEs necesarios y Enlace para terceros/comunicacion"
    $lines.Add("    ESCD -- ""Si"" --> ESCA")

    Add-Node -Lines $lines -Id "R0" -Text "Remediar en paralelo: proteger, detectar, contener, erradicar y preparar recuperacion"
    $lines.Add("    ESCD -- ""No"" --> R0")
    $lines.Add("    ESCA --> R0")

    $last = Add-StepNodes -Lines $lines -Prefix "RP" -Stage "Preparar remediacion" -Steps $remediationIntro -PreviousNode "R0"
    $last = Add-StepNodes -Lines $lines -Prefix "C" -Stage "Contencion" -Steps $containment -PreviousNode $last
    $last = Add-StepNodes -Lines $lines -Prefix "E" -Stage "Erradicar" -Steps $eradication -PreviousNode $last

    if ($remediationResources.Count -gt 0) {
        $last = Add-StepNodes -Lines $lines -Prefix "RR" -Stage "Recurso de remediacion" -Steps $remediationResources -PreviousNode $last
    }

    $last = Add-StepNodes -Lines $lines -Prefix "COM" -Stage "Comunicar" -Steps $communication -PreviousNode $last
    $last = Add-StepNodes -Lines $lines -Prefix "REC" -Stage "Recuperacion" -Steps $recovery -PreviousNode $last

    Add-Node -Lines $lines -Id "END" -Text "Cerrar playbook: informe, AAR, actualizacion de detecciones, MISP si procede y mejoras del plan"
    $lines.Add("    $last --> END")

    $lines.Add('```')
    $lines.Add("")
}

$outputDir = Split-Path -Parent $OutputPath
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
}

Set-Content -Path $OutputPath -Value $lines -Encoding UTF8
Write-Output "Generado $OutputPath con $($playbooks.Count) playbooks."
