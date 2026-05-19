---
title: "PB-02 Compromiso de Credenciales y Acceso No Autorizado"
version: "1.0"
date: "Enero 2026"
classification: "CONFIDENCIAL"
organization: "Security S.L."
severity: "Alta-Crítica"
---

# Compromiso de Credenciales y Acceso No Autorizado

## Descripción

Este playbook cubre accesos no autorizados a sistemas de Security S.L. mediante credenciales robadas, comprometidas o explotadas. Incluye brute force, credential stuffing, phishing exitoso y compromiso de cuenta privilegiada.

## Técnicas relacionadas

- T1078 Valid Accounts.
- T1110 Brute Force.
- T1003 OS Credential Dumping.
- T1021.001 Remote Services.

## Activos en riesgo

- Active Directory.
- Servidores internos.
- Servicios cloud.
- CRM.
- Datos de clientes.
- Cuentas privilegiadas.

## Indicadores de compromiso

- Múltiples intentos de inicio de sesión fallidos seguidos de éxito.
- Logins en horarios inusuales.
- Accesos desde IPs extranjeras o no habituales.
- Acceso a información fuera del rol del usuario.
- Creación de cuentas nuevas en Active Directory.

## Identificación

- Revisar logs de AD, MDM, correo y VPN.
- Confirmar si la cuenta afectada es estándar o privilegiada.
- Clasificar el incidente según el nivel de acceso comprometido.
- Determinar qué sistemas o datos fueron accesibles.

## Contención

- Bloquear de inmediato la cuenta comprometida.
- Revocar tokens de sesión activos en cloud y VPN.
- Si es una cuenta privilegiada, forzar cambio de contraseñas de administradores.
- Activar MFA si no estaba activo.
- Bloquear la IP de origen sospechosa.
- Notificar al usuario por canal alternativo seguro.

## Erradicación

- Revisar Active Directory en busca de nuevas cuentas o cambios de permisos.
- Buscar herramientas de persistencia como scheduled tasks o servicios.
- Ejecutar cambio masivo de contraseñas si se sospecha credential dumping.
- Revocar y regenerar certificados y tokens API comprometidos.

## Recuperación

- Restablecer la contraseña con requisitos robustos.
- Revisar permisos del usuario afectado.
- Restablecer el acceso solo con mínimo privilegio.
- Mantener monitorización intensiva durante 30 días.
- Evaluar si existió acceso a datos personales y si procede notificación RGPD.

## Lecciones aprendidas

- Documentar el vector de entrada real.
- Revisar si la política MFA fue suficiente.
- Ajustar controles de privilegio y detección.
- Incorporar los hallazgos al siguiente simulacro o revisión del plan.