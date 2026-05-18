param(
    [string]$PlaybookDir = (Join-Path $PSScriptRoot "..\playbooks"),
    [string]$OutputPath = (Join-Path $PSScriptRoot "..\playbooks\diagramas-flujo-playbooks.md")
)

$ErrorActionPreference = "Stop"

$focusByFile = @{
    "playbook-ransomware.md" = @{
        trigger = "Cifrado, nota de rescate o actividad masiva anomala"
        containment = "Aislar equipos, proteger backups y cortar SMB/RDP/VPN no imprescindible"
        recovery = "Restaurar desde copias limpias y validar CRM/ERP, servidores y datos"
    }
    "playbook-phishing.md" = @{
        trigger = "Correo sospechoso, enlace malicioso o adjunto peligroso"
        containment = "Purgar mensajes, bloquear URL/dominios y aislar equipos afectados"
        recovery = "Reactivar cuentas tras credenciales rotadas, MFA y validacion"
    }
    "playbook-identity-and-access.md" = @{
        trigger = "Inicio de sesion anomalo, cuenta abusada o permisos sospechosos"
        containment = "Bloquear cuentas, revocar sesiones y retirar permisos"
        recovery = "Restaurar acceso legitimo con minimo privilegio y monitorizacion"
    }
    "playbook-defacement.md" = @{
        trigger = "Contenido web no autorizado, web shell o caida de web/tienda"
        containment = "Activar mantenimiento, aislar web y bloquear origen malicioso"
        recovery = "Restaurar contenido limpio y validar tienda, formularios y DNS"
    }
    "playbook-supply-chain.md" = @{
        trigger = "Proveedor, integracion o actualizacion sospechosa"
        containment = "Suspender accesos de proveedor y pausar integraciones"
        recovery = "Restablecer proveedor limpio o servicio alternativo validado"
    }
    "playbook-data-breach.md" = @{
        trigger = "Acceso, perdida, exposicion o exfiltracion de datos personales"
        containment = "Cerrar exposicion, bloquear salida y preservar evidencias"
        recovery = "Restaurar datos integros y reabrir permisos revisados"
    }
    "playbook-cloud-services.md" = @{
        trigger = "Acceso cloud anomalo, token/API key expuesta o almacenamiento publico"
        containment = "Revocar tokens, bloquear cuentas y cerrar comparticiones"
        recovery = "Restaurar servicio cloud con permisos, MFA y logs reforzados"
    }
}

function Convert-ToMermaidLabel {
    param([string]$Text)
    return ($Text -replace '"', "'")
}

$playbooks = Get-ChildItem -Path $PlaybookDir -Filter "playbook-*.md" |
    Sort-Object Name

$lines = [System.Collections.Generic.List[string]]::new()
$lines.Add("# Diagramas de flujo de playbooks")
$lines.Add("")
$lines.Add("Este archivo se genera automaticamente desde scripts/generate-playbook-diagrams.ps1. Cada diagrama resume el flujo operativo del playbook y mantiene la relacion con las evidencias MITRE ATT&CK y RE&CT.")
$lines.Add("")
$lines.Add("Para regenerarlo:")
$lines.Add("")
$lines.Add('```powershell')
$lines.Add(".\scripts\generate-playbook-diagrams.ps1")
$lines.Add('```')
$lines.Add("")

foreach ($playbook in $playbooks) {
    $content = Get-Content -Raw -Encoding UTF8 $playbook.FullName
    $titleMatch = [regex]::Match($content, "(?m)^## Playbook:\s*(.+)$")
    if (-not $titleMatch.Success) {
        continue
    }

    $title = $titleMatch.Groups[1].Value.Trim()
    $evidenceMatch = [regex]::Match($content, "(?m)^Evidencias asociadas:\s*(.+)$")
    $evidence = if ($evidenceMatch.Success) { $evidenceMatch.Groups[1].Value.Trim() } else { "No definida" }
    $focus = $focusByFile[$playbook.Name]
    if (-not $focus) {
        $focus = @{
            trigger = "Reporte o alerta relacionada con el incidente"
            containment = "Aplicar contencion indicada por el playbook"
            recovery = "Recuperar servicio y validar con negocio"
        }
    }

    $trigger = Convert-ToMermaidLabel $focus.trigger
    $containment = Convert-ToMermaidLabel $focus.containment
    $recovery = Convert-ToMermaidLabel $focus.recovery
    $safeTitle = Convert-ToMermaidLabel $title

    $lines.Add("## $title")
    $lines.Add("")
    $lines.Add('Playbook fuente: `playbooks/' + $playbook.Name + '`')
    $lines.Add("")
    $lines.Add("Evidencias MITRE/RE&CT: $evidence")
    $lines.Add("")
    $lines.Add('```mermaid')
    $lines.Add("flowchart TD")
    $lines.Add("    A[""Deteccion: $trigger""] --> B[""Abrir expediente y nombrar incidente""]")
    $lines.Add("    B --> C[""Investigar con ATT&CK: vector, alcance, evidencias e IOCs""]")
    $lines.Add("    C --> Q[""Responder preguntas clave de investigacion del playbook""]")
    $lines.Add("    Q --> D[""Clasificar severidad S1-S4""]")
    $lines.Add("    D --> E{""S1/S2, datos personales o activo critico?""}")
    $lines.Add("    E -- ""Si"" --> F[""Escalar a Incident Commander, Direccion, Legal y Comunicacion""]")
    $lines.Add("    E -- ""No"" --> G[""Gestionar por TIC/CISO con seguimiento del IC""]")
    $lines.Add("    F --> H{""Compromiso confirmado?""}")
    $lines.Add("    G --> H")
    $lines.Add("    H -- ""No"" --> I[""Cerrar como evento, documentar y monitorizar""]")
    $lines.Add("    H -- ""Si"" --> J[""Contener con RE&CT: $containment""]")
    $lines.Add("    J --> K[""Erradicar causa raiz, persistencia y configuraciones debiles""]")
    $lines.Add("    K --> L[""Recuperar: $recovery""]")
    $lines.Add("    L --> M[""Validar servicio/datos con propietario de negocio""]")
    $lines.Add("    M --> N[""Monitorizar 72h y actualizar detecciones""]")
    $lines.Add("    N --> O[""Informe, AAR y mejora del playbook: $safeTitle""]")
    $lines.Add('```')
    $lines.Add("")
}

$outputDir = Split-Path -Parent $OutputPath
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
}

Set-Content -Path $OutputPath -Value $lines -Encoding UTF8
Write-Output "Generado $OutputPath con $($playbooks.Count) playbooks."
