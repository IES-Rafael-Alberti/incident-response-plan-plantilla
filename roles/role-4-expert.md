# Rol: Experto en la Materia (Subject Matter Expert - SME)

## Descripción

El Experto en la Materia (SME) es la persona responsable de un área técnica concreta dentro de la respuesta a incidentes. Su área puede ser un sistema, un servicio, un componente de infraestructura o un equipo específico.

Durante un incidente, el SME es el punto de referencia técnico de su área. Su trabajo es ayudar al Incident Commander (IC) a entender qué está pasando, qué impacto tiene y qué opciones existen para investigar o resolver el problema.

El SME no toma decisiones finales durante el incidente. El IC es quien dirige la respuesta. El SME propone, analiza y ejecuta acciones cuando se le indica.

---

## Deberes Principales

### 1. Respuesta inicial ante incidentes

Cuando se notifica un incidente:

- **Unirse a la llamada rápidamente**: en un máximo de 5–10 minutos.
- **Confirmar presencia**: “Soy el SME de [área], conectado.”
- **Escuchar primero**: entender el contexto antes de responder o actuar.

---

### 2. Diagnóstico del área

Durante el incidente, el IC hará preguntas sobre tu área. Debes responder de forma clara y directa:

- **Estado del sistema**:
  - “El servicio está operativo sin errores visibles.”
  - “Estamos viendo degradación en el rendimiento.”

- **Posibles causas**:
  - Explica solo lo que sepas.
  - Si no hay información suficiente: “Necesito investigar 10–15 minutos para confirmarlo.”

- **Acciones posibles**:
  - “Podemos revisar logs, reiniciar el servicio o aislar el nodo afectado.”

---

### 3. Comunicación durante el incidente

El SME debe comunicar de forma breve, estructurada y basada en hechos:

- **Estado** → cómo está tu área ahora.
- **Acciones** → qué se puede hacer para investigar o solucionar.
- **Necesidades** → qué recursos o accesos hacen falta.

Ejemplo:
- Estado: “Base de datos funcionando con normalidad.”
- Acciones: “Revisar consultas lentas o logs de errores.”
- Necesidades: “Acceso a métricas del clúster.”

Reglas de comunicación:
- Ser breve y directo.
- Evitar explicaciones largas.
- Usar datos concretos (números, logs, eventos).
- No especular sin evidencia.

---

### 4. Ejecución de acciones

Cuando el Incident Commander asigna una tarea:

- **Ejecutar exactamente lo indicado**.
- **Informar del progreso**: “Estamos aplicando el cambio, estará listo en 10 minutos.”
- **Si hay bloqueo**: “No puedo continuar porque falta acceso a X.”
- **Escalar si es necesario**: pedir apoyo de otros SMEs o permisos adicionales.

---

### 5. Colaboración durante la investigación

- Apoyar en el análisis técnico del incidente.
- Aportar contexto sobre el comportamiento del sistema.
- Sugerir alternativas si es necesario.
- Coordinarse con otros SMEs si el incidente afecta a varias áreas.

---

### 6. No asignar culpas

Durante el incidente:

- No señalar responsables.
- No justificar fallos de forma personal o organizativa.
- Enfocarse únicamente en resolver el problema.

El análisis de causas se hace después del incidente.

---

## Preparación para el periodo de guardia

Antes de estar de guardia como SME:

- Conocer el plan de respuesta a incidentes.
- Entender los playbooks de su área.
- Tener acceso configurado a herramientas de monitoreo y comunicación.
- Verificar que puede unirse a llamadas de incidente.
- Organizar disponibilidad durante el turno.
- Coordinar relevos si hay ausencias previstas.
- Evitar conflictos de rol (no ser IC y SME del mismo equipo a la vez).

---

## Durante el periodo de guardia

### Disponibilidad

- Tener acceso a portátil o dispositivo con conexión.
- Estar localizable durante todo el turno.
- Responder en 5–10 minutos a cualquier alerta.

---

### En la llamada de incidente

- Responder preguntas del IC de forma clara.
- Mantener el enfoque en hechos, no opiniones.
- Seguir instrucciones sin desviarse del alcance asignado.
- Indicar si algo no se sabe o requiere investigación.
- Escalar bloqueos técnicos o de permisos.

---

### Gestión de problemas

- Si detectas algo relevante, comunicarlo al IC aunque no lo pregunte.
- Proponer mejoras o alternativas cuando sea útil.
- Esperar aprobación antes de ejecutar cambios.

---

## Principios de actuación

### Comunicación

- Usar lenguaje claro y simple.
- Evitar tecnicismos innecesarios.
- Ser directo: responder lo preguntado, sin rodeos.
- Priorizar información útil para la toma de decisiones.

---

### Actitud operativa

- Trabajar bajo dirección del IC.
- No improvisar cambios no autorizados.
- Mantener calma en situaciones de presión.
- Aceptar cambios de decisión sin conflicto.

---

### Trabajo en equipo

- Colaborar con otros SMEs cuando sea necesario.
- Compartir información relevante sin retrasos.
- Ayudar a completar la visión global del incidente.

---

## Requisitos para ser SME

### Requisitos básicos

- Conocimiento sólido del área asignada.
- Comprensión del plan de respuesta a incidentes.
- Participación en simulacros o ejercicios internos.
- Designación formal por el equipo responsable.

---

### Proceso de incorporación

1. Asignación del rol por el responsable del equipo.
2. Revisión de documentación de incidentes.
3. Participación en ejercicios prácticos.
4. Incorporación a la rotación de guardias.
5. Activación como SME en incidentes reales.

---

## Recursos y referencias

- Plan de respuesta a incidentes (documento principal)
- Playbooks técnicos del área correspondiente
- Rol de Incident Commander
- Procedimientos internos de guardia y escalado

---

**Documento**: Rol - Experto en la Materia (SME)<br>
**Grupo G5**: Sergio G., Iván P., Manuel P., Javier C.<br>
**Fecha**: Mayo 2026
