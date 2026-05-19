# Rol: Especialista en Recuperación (Recovery Specialist)

## Descripción

El Especialista en Recuperación es la persona responsable de restaurar sistemas y servicios después de un incidente, asegurando que la recuperación se realiza de forma segura, controlada y verificada.

Su objetivo principal es devolver los sistemas a funcionamiento normal sin reintroducir el problema original (por ejemplo, malware o configuraciones comprometidas).

Este rol es especialmente crítico en escenarios como ransomware o compromiso de datos, donde restaurar mal un backup puede empeorar la situación.

---

## Responsabilidades Principales

### 1. Evaluación de backups antes de la restauración

Antes de restaurar cualquier sistema, es necesario validar la seguridad e integridad del backup:

- Identificar el último backup limpio disponible.
- Confirmar que el backup no está comprometido.
- Verificar la ubicación del backup (idealmente externo o aislado).
- Revisar logs de generación del backup (errores, anomalías, interrupciones).

Preguntas clave:
- ¿De qué fecha es el backup?
- ¿Está almacenado en un entorno seguro?
- ¿Se ha verificado su integridad recientemente?
- ¿Hay indicios de compromiso en ese periodo?

Si no se puede garantizar la limpieza del backup, no debe usarse hasta nueva validación.

---

### 2. Validación de integridad del backup

Antes de iniciar la restauración, se deben realizar comprobaciones básicas de integridad:

- Verificación de hash o checksum (si está disponible).
- Escaneo antivirus o antimalware del backup (si es posible).
- Revisión de consistencia de archivos (muestras aleatorias).
- Validación de logs del sistema de backup.

El objetivo es confirmar que el backup es válido y seguro antes de restaurar nada.

---

### 3. Planificación de la restauración

La restauración debe realizarse de forma gradual, no masiva:

- Restaurar sistemas por fases.
- Priorizar servicios críticos (correo, archivos, autenticación).
- Validar cada fase antes de continuar con la siguiente.
- Monitorizar cada sistema tras su restauración.

Ejemplo de planificación:

- Fase 1: Restauración de sistemas críticos (correo / identidad)
- Fase 2: Restauración de servicios de soporte (archivos, aplicaciones internas)
- Fase 3: Restauración completa del resto de infraestructura

---

### 4. Ejecución de la restauración

Cuando el Incident Commander lo autoriza:

- Aislar el sistema antes de restaurar.
- Restaurar desde el backup validado.
- Registrar todos los pasos y tiempos del proceso.
- Realizar una reconexión controlada (idealmente en entorno aislado o de pruebas).
- Validar el funcionamiento del servicio restaurado.

Es obligatorio documentar el proceso de forma clara y cronológica.

---

### 5. Verificación post-restauración

Tras la restauración, se debe comprobar:

- Que el servicio funciona correctamente.
- Que no hay signos de malware persistente.
- Que no existen usuarios o configuraciones sospechosas.
- Que los datos restaurados son coherentes.

Si se detecta cualquier anomalía, se debe detener la expansión de la restauración y escalar al Incident Commander.

---

### 6. Escenarios críticos

Si no existen backups válidos o todos están comprometidos:

- Escalar inmediatamente al Incident Commander.
- Evaluar opciones alternativas:
  - Restauración parcial con riesgo controlado.
  - Reconstrucción completa del sistema.
  - Pérdida parcial o total de datos (último recurso).

---

## Buenas prácticas durante la recuperación

- No restaurar todo de golpe.
- No asumir que un backup es seguro sin validación.
- Documentar cada acción realizada.
- Mantener comunicación constante con el Incident Commander.
- No tomar decisiones críticas sin autorización.

---

## Capacidades necesarias

- Conocimiento de sistemas de backup y restauración.
- Experiencia en sistemas operativos (Linux / Windows Server).
- Nociones de redes y segmentación (VLAN, aislamiento).
- Capacidad de documentación clara y precisa.
- Atención al detalle bajo presión.

---

## Pruebas y mantenimiento del rol

Para asegurar que el proceso funciona correctamente:

- Pruebas periódicas de restauración de archivos.
- Simulacros de recuperación de sistemas completos.
- Validación de backups de forma regular.

### Ejemplo de registro

- **Fecha:** 01/04/2026
- **Sistema:** Servidor de pruebas
- **Backup:** 31/03/2026
- **Resultado:** Correcto
- **Tiempo:** 45 minutos

---

## Después del incidente

El Recovery Specialist debe:

- Documentar el proceso completo de restauración.
- Indicar qué backups se utilizaron.
- Reportar incidencias durante la recuperación.
- Participar en la revisión posterior al incidente.

---

## Recursos

- Plan de respuesta a incidentes
- Procedimientos de backup y restauración
- Rol de Incident Commander
- Rol de SME técnico
- Herramientas de backup y recuperación del entorno

---

**Documento**: Rol - Especialista en Recuperación (Recovery Specialist)<br>
**Grupo G5**: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo<br>
**Fecha**: Mayo 2026
