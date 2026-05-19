
# Rol: Diputado del Incident Commander

## Descripción

El Diputado es la mano derecha del Incident Commander (IC). Mientras el IC piensa en la estrategia general de respuesta, el Diputado se encarga de los detalles operativos.

El Diputado permite que el IC se concentre en **dirigir la respuesta** en lugar de preocuparse por:
- Anotar qué se está haciendo
- Recordar cuánto tiempo ha pasado
- Asignar límites de tiempo a tareas
- Monitorear si el incidente empeora

Si el IC necesita alejarse o trasladarse a tomar decisiones ejecutivas, **el Diputado asume el rol de IC** para mantener la continuidad.

## Deberes Principales

### 1. Asistir al Incident Commander

Durante el incidente:

- **Escucha atentamente**: Necesitas saber qué está pasando para apoyar bien al IC.
- **Sugiere acciones olvidadas**: "IC, aún no hemos notificado al departamento legal" o "¿Hemos verificado backups?"
- **Controla tiempos**: Anota cuándo empezó el incidente, cuándo terminó, cuántos minutos pasaron en cada fase.
- **Monitorea límites de tiempo**: Si diste a un equipo 15 minutos para investigar, recuerda al IC cuando se acerca el límite.
- **Documenta decisiones**: "El IC decidió cambiar todas las contraseñas a las 14:30" - esto es importante para el post-mortem.

### 2. Administrar la Llamada del Incidente

Ayuda al IC a mantener el orden:

- **Controla quién habla**: Ayuda a reducir participantes cuando ya no son necesarios.
- **Retira a gente si es necesario**: Si alguien se sale del tema o es disruptivo, el IC puede pedirte que lo eches.
- **Mantén las actualizaciones en orden**: Cuando el IC pide estado, ayuda a compilarlos ("Espera, ¿ya reportó el equipo de redes?").
- **Gestiona sub-equipos**: Si hay una investigación paralela, ayuda a que reporten al IC en el orden correcto.

### 3. Monitorear la Gravedad del Incidente

- **Observa si las cosas empeoran**: ¿Se está propagando a más sistemas? ¿Más datos en riesgo?
- **Alerta al IC**: "El incidente parece estar afectando ahora también a producción, no solo al sistema de prueba."
- **Ajusta el nivel de gravedad**: Si fue "Moderado" pero ahora es "Crítico", díselo al IC para que pueda cambiar su estrategia.

### 4. Ser la Mente de Respaldo

- **Verifica que nada se olvide**: "¿Hemos contactado al proveedor afectado?"
- **Sugiere pasos del playbook**: "El playbook dice que deberíamos revisar los logs de los últimos 48 horas."
- **Recuerda consideraciones importantes**: "Necesitamos cumplir con GDPR, así que avisa al departamento legal."

### 5. Asumir el Mando si es Necesario

Si el IC dice "Necesito hablar con el director ejecutivo, toma el control", **tú eres ahora el IC**:

- Continúa la llamada como lo haría el IC.
- Haz preguntas sobre estado.
- Da directivas.
- Cuando el IC vuelva, le das un resumen rápido y devuelves el mando.

## Cómo Ayudar Efectivamente

### Lenguaje

- **Sé conciso**: "IC, el equipo de redes reporta cambios en firewall completados."
- **Usa hechos, no suposiciones**: "Vimos tráfico inusual a las 14:15" no "Probablemente fue un ataque externo."
- **Sé respetuoso**: No contradice al IC públicamente. Si tienes una objeción, habla con él en privado después.

### Tiempos y Límites

Algunos ejemplos de cómo monitorear tiempos:

- **Incidente comienza**: 14:00 - anota la hora exacta.
- **Equipo técnico empieza investigación**: 14:05 - "Investigación comienza. Límite: 14:20."
- **A las 14:18**: "IC, equipo técnico tiene 2 minutos restantes para reportar."
- **A las 14:20**: "IC, se acabó el tiempo de investigación. Equipo técnico, ¿qué encontraron?"

### Documentación Rápida

Durante la llamada, toma notas simples:

```
14:00 - Incidente reportado: cuenta comprometida
14:05 - IC da directiva: cambiar todas las contraseñas
14:10 - Equipo técnico comienza búsqueda de acceso no autorizado
14:20 - Equipo técnico encuentra 3 conexiones sospechosas
14:25 - Decisión: bloquear esas direcciones IP
14:35 - Incidente resuelto: todas las contraseñas cambiadas, acceso bloqueado
```

Esto es útil para el post-mortem.

## Requisitos para Ser Diputado

### Habilidades Necesarias

- **Excelentes habilidades de escucha**: Necesitas entender lo que está pasando en la llamada.
- **Atención a los detalles**: Recordar tiempos, límites, qué se decidió.
- **Capacidad de multitarea**: Escuchar, tomar notas, sugerir ideas, todo al mismo tiempo.
- **Calma bajo presión**: No puedes entrar en pánico durante un incidente.
- **Disposición a apoyar**: Tu rol es ayudar al IC, no ser el protagonista.

### Experiencia Requerida

- **Entrenamiento completado como Incident Commander**: Debes entender el rol de IC antes de poder asistir a uno.
- **Participado en al menos 1 incidente real**: Como observador, para ver cómo funciona esto en la práctica.
- **Entendimiento del plan de respuesta**: Leído todos los playbooks para poder sugerir acciones.

## Cómo Ser Agregado como Diputado

Una vez completada tu capacitación:

1. **Notifica al líder de seguridad**: "He completado el entrenamiento como Diputado."
2. **Te agregamos a la lista**: Ahora eres un Diputado disponible.
3. **En el próximo incidente**: Cuando se abra una llamada, el IC puede pedirte que seas su Diputado.

---

## Recursos y Referencias

- Rol: Incident Commander (debes entender su rol primero)
- Plan de Respuesta a Incidentes (documento principal)
- Todos los playbooks (para sugerir acciones)
- Plantilla de post-mortem (para documentar adecuadamente)

---

**Documento**: Rol - Diputado del Incident Commander
**Grupo G5**: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo
**Fecha**: Mayo 2026
