---
title: "PB-03 Fuga de Información"
version: "1.0"
date: "Enero 2026"
classification: "CONFIDENCIAL"
organization: "Security S.L."
severity: "Alta-Crítica"
---

# Fuga de Información

## Descripción

Este playbook cubre la extracción, exposición o acceso no autorizado a información confidencial o datos personales de Security S.L., sus clientes o proveedores.

La activación de este playbook implica valorar de inmediato las obligaciones del RGPD.

## Técnicas relacionadas

- T1041 Exfiltration Over C2 Channel.
- T1048 Exfiltration Over Alternative Protocol.
- T1567 Exfiltration to Cloud.

## Activos en riesgo

- Datos personales de clientes.
- Datos financieros.
- Nóminas.
- Propiedad intelectual.
- Expedientes de clientes.
- Servicios cloud no autorizados o Shadow IT.

## Indicadores de compromiso

- Tráfico inusual hacia IPs externas.
- Transferencias masivas de archivos.
- Uso de servicios cloud personales o no autorizados.
- Alertas DLP.
- Descargas o consultas fuera de horario normal.

## Identificación

- Confirmar qué datos se han exfiltrado.
- Determinar si incluyen datos personales.
- Revisar logs de firewall, DLP y cloud.
- Notificar de inmediato al DPO.
- Identificar destino, volumen y momento de la exfiltración.

## Contención

- Bloquear el canal de exfiltración en firewall o proxy.
- Revocar el acceso del usuario o proceso implicado.
- Deshabilitar accesos Shadow IT detectados.
- Iniciar la evaluación de notificación a la AEPD dentro del plazo de 72 horas desde la confirmación.

## Erradicación y recuperación

- Identificar y cerrar el vector de exfiltración.
- Corregir reglas DLP o configuraciones débiles.
- Invalidar o recuperar datos exfiltrados si es técnicamente posible.
- Preparar la notificación a AEPD si procede.
- Preparar comunicación a afectados si el riesgo es alto.

## Lecciones aprendidas

- Revisar por qué el control preventivo falló.
- Reforzar DLP y monitorización de exfiltración.
- Ajustar reglas de acceso y permisos.
- Incorporar el incidente al seguimiento de cumplimiento RGPD.