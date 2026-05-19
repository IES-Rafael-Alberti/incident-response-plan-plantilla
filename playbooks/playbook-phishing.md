---
title: "PB-04 Phishing"
version: "1.0"
date: "Enero 2026"
classification: "CONFIDENCIAL"
organization: "Security S.L."
severity: "Media-Alta"
---

# Phishing

## Descripción

Este playbook cubre campañas de engaño dirigidas a empleados de Security S.L. para obtener credenciales, ejecutar malware o inducir transferencias económicas fraudulentas.

El phishing es uno de los vectores de entrada más frecuentes y suele ser el inicio de incidentes más graves.

## Técnicas relacionadas

- T1566.001 Spearphishing Attachment.
- T1566.002 Spearphishing Link.
- T1598 Phishing for Information.

## Activos en riesgo

- Credenciales de empleados.
- Cuentas de correo.
- Equipos de usuario.
- Datos financieros si hay fraude tipo CEO/BEC.
- Sistemas que ejecuten adjuntos maliciosos.

## Indicadores de compromiso

- Remitente sospechoso o suplantado.
- Adjuntos con extensiones engañosas.
- Enlaces a dominios parecidos al corporativo.
- Mensajes con urgencia artificial.
- Solicitudes de credenciales o transferencia.

## Identificación

- El empleado reporta el correo sospechoso sin interactuar con él.
- TIC analiza cabeceras, SPF, DKIM y DMARC.
- Verificar el enlace real y el hash del adjunto.
- Si hubo clic o ejecución, escalar de inmediato.
- Si la campaña es masiva, notificar a más empleados.

## Contención

- Bloquear dominio y URL maliciosa en el gateway de correo.
- Poner en cuarentena mensajes similares.
- Si hubo ejecución del adjunto, aislar el equipo y seguir el playbook correspondiente.
- Si se entregaron credenciales, activar de inmediato el playbook de credenciales.
- Enviar una alerta interna breve a los empleados.

## Erradicación y recuperación

- Eliminar los mensajes maliciosos de los buzones afectados.
- Actualizar filtros y reglas del gateway.
- Si hubo malware confirmado, seguir el playbook de ransomware.
- Si hubo robo de credenciales, seguir el playbook de credenciales.
- Registrar el incidente para el próximo simulacro de phishing.

## Lecciones aprendidas

- Revisar el grado de detección de los empleados.
- Ajustar campañas de concienciación.
- Mejorar filtros y reglas antiphishing.
- Usar el caso como ejemplo en formación interna.