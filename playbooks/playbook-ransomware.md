---
title: "PB-01 Ransomware y Cifrado Malicioso"
version: "1.0"
date: "Enero 2026"
classification: "CONFIDENCIAL"
organization: "Security S.L."
severity: "Crítica"
---

# Ransomware

## Descripción

Este playbook cubre incidentes en los que un atacante cifra archivos o sistemas de Security S.L. y exige un rescate para restaurar el acceso a la información.

Es el escenario de mayor prioridad debido al antecedente documentado de ransomware previo por USB y a la posibilidad de impacto directo sobre servidores, portátiles y backups.

## Técnicas relacionadas

- T1091 Replication Through Removable Media.
- T1566 Phishing.
- T1486 Data Encrypted for Impact.
- T1490 Inhibit System Recovery.
- T1562.001 Impair Defenses.

## Activos en riesgo

- Servidor de archivos.
- Datos de clientes.
- Portátiles Dell Latitude 3440.
- Backups conectados a red.
- Servicios compartidos y repositorios de información.

## Indicadores de compromiso

- Archivos con extensión desconocida o cifrada.
- Mensajes de rescate en escritorio o carpetas.
- Alto consumo de CPU o disco.
- Alertas del antivirus sobre cifrado masivo.
- Imposibilidad de abrir documentos habituales.

## Regla principal

Nunca se paga el rescate. La decisión de no pago está preaprobada por Dirección.

## Identificación

- Detectar archivos cifrados, extensiones extrañas o mensajes de rescate.
- Notificar de inmediato al equipo TIC.
- Confirmar si el cifrado es real y qué sistemas están afectados.
- Declarar el incidente como crítico y activar el CSIRT.
- Registrar hora, usuario que detectó el evento y equipos afectados.

## Contención

- Aislar físicamente los equipos afectados desconectando red y WiFi.
- No apagar todavía el equipo si se prevé análisis forense.
- Deshabilitar la cuenta del usuario afectado en Active Directory.
- Revisar si el vector de entrada fue USB, correo o red.
- Desconectar backups expuestos en red.
- Si hay propagación, aislar el segmento completo en firewall o VLAN.
- Capturar memoria RAM si es posible antes de apagar.

## Erradicación

- Identificar el tipo de ransomware si es posible.
- Comprobar si existe decryptor gratuito utilizable.
- Si no existe decryptor, preparar reimagen completa.
- Verificar la integridad del backup offsite antes de usarlo.
- Aplicar el parche o corrección que cerró el vector de entrada.
- Revocar credenciales de los usuarios en sistemas afectados.
- Eliminar cuentas, servicios y tareas persistentes creadas por el atacante.

## Recuperación

- Restaurar sistemas desde backup offsite verificado.
- Reinstalar el sistema operativo desde imagen limpia.
- Reaplicar BitLocker y MDM en portátiles restaurados.
- Mantener monitorización intensiva durante al menos 72 horas.
- Volver a producción solo con aprobación formal del RS y del Jefe TIC.

## Lecciones aprendidas

- Celebrar reunión post-incidente en 7 días.
- Emitir informe preliminar en 24 horas.
- Emitir informe final en 15 días.
- Revisar por qué falló la prevención inicial.
- Ajustar frecuencia de backups si no se cumplió el RPO.
- Valorar si hubo obligación de notificación RGPD.