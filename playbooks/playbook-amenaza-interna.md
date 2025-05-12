# Playbook: Amenaza Interna (Insider Threat)

**Investiga, remedia (contén, erradica), y comunica en paralelo.**

Asigna pasos a individuos o equipos para que trabajen en paralelo siempre que sea posible; este playbook no es puramente secuencial. Usa tu mejor criterio.

---

## Investigar
1. **Detecta e identifica el incidente de amenaza interna**
    * Consulta alertas de DLP, SIEM, EDR, sistemas de control de acceso y análisis de comportamiento de usuarios (UBA/UEBA).
    * Analiza reportes de usuarios o empleados que hayan detectado actividades extrañas, robo de información, sabotaje, uso indebido de cuentas, etc.
    * El incidente puede involucrar manipulación de datos, robo de propiedad intelectual, exfiltración de información, sabotaje, fraude interno u omisión de controles.

2. **Determina el tipo y alcance de la amenaza**
    * ¿Es un empleado actual, exempleado, proveedor con acceso, o tercero con cuentas privilegiadas?
    * ¿Qué sistemas, datos o servicios fueron afectados o accedidos?
    * ¿Se han producido cambios no autorizados, borrado/destrucción de información, alteraciones en configuraciones críticas, transferencias de archivos, descargas masivas o uso de dispositivos USB?

3. **Recolecta y preserva evidencias digitales**
    * Extrae logs de actividad y auditoría (archivos accedidos, movimientos, cambios de permisos, conexiones remotas).
    * Obtén registros de correo electrónico, chats corporativos, tickets de soporte, conexiones VPN, accesos a bases de datos o aplicaciones críticas.
    * Si procede, imágenes forenses de dispositivos utilizados por el insider.
    * Guarda toda evidencia siguiendo la cadena de custodia para posibles acciones legales o disciplinarias.

4. **Realiza entrevistas y revisa contexto**
    * Entrevista discretamente a empleados testigos y responsables del área afectada.
    * Busca motivos posibles (descontento, presión, beneficios económicos, negligencia, error).
    * Revisa historial de incidencias, conflictos, sanciones o próximas salidas de personal en la empresa.

**Preguntas clave y estrategias para la investigación:**
- ¿Quién fue el actor interno (empleado, proveedor, tercero)?
- ¿Qué acciones realizó, durante cuánto tiempo y con qué motivación?
- ¿Tuvo cómplices? ¿Suplantó identidades (uso indebido de credenciales ajenas)?
- ¿Qué sistemas o datos accedió, copió, alteró o destruyó?
- ¿Hubo exfiltración de datos hacia dispositivos USB, servicios cloud personales, correos externos, impresoras, etc.?
- ¿El insider intentó ocultar rastros o burlar controles (borrado de logs, uso de cuentas genéricas)?
- ¿Cuál es la magnitud del daño real y potencial?
- ¿Podría haber reincidencia o hay más insiders implicados?

**Herramientas recomendadas:** SIEM, DLP, UBA/UEBA, análisis forense, sistemas de gestión de identidades (IAM), soluciones CASB, monitorización de red y endpoints.

---

## Remediar

* **Planifica las acciones de remediación** para que los pasos se ejecuten de manera paralela o coordinada, con los equipos adecuados listos para contener e investigar sin comprometer la operativa ni alertar prematuramente al insider.

* **Considera el impacto y el momento:** Algunas acciones pueden afectar operaciones o alertar al actor interno, lo que podría precipitar borrado de pruebas o sabotaje adicional.

### Contención

1. **Restringe o revoca el acceso del usuario implicado** lo antes posible (bloqueo de cuentas, tarjetas, VPN, aplicaciones, cambio de contraseñas).
2. **Aísla dispositivos y recursos utilizados por el insider** (ordenadores, móviles, correo, almacenamiento en red) para preservar evidencias.
3. **Suspende transferencias, descargas y accesos remotos activos.**
4. **Monitorea en tiempo real** los sistemas sensibles para detectar cualquier actividad residual o intento de escalada/sabotaje.
5. **Coordina con RRHH y dirección** antes de confrontar al insider, si existe posibilidad de acción judicial o despido.

**Herramientas y procedimientos:**  
- Consolas IAM/AD, sistemas de gestión de accesos y sesiones, EDR, DLP, SIEM, herramientas de aislamiento de red, y protocolo de crisis de RRHH.

---

### Erradicación

1. Elimina cuentas, accesos y permisos concedidos al insider, incluidas cuentas de servicio y credenciales secundarias.
2. Revisa y revoca sesiones persistentes, API tokens, accesos a sistemas en la nube y servicios externos.
3. Elimina software o scripts maliciosos instalados por el insider.
4. Parchea o reconfigura sistemas afectados para evitar futuras vías de abuso.
5. Realiza un análisis exhaustivo para detectar y mitigar puertas traseras o mecanismos de persistencia.

---

## Recuperar

1. **Restablece la integridad de los datos y sistemas afectados:**
    * Recupera archivos o configuraciones dañadas mediante backups limpios.
    * Corrige configuraciones alteradas y restaura servicios críticos.
2. **Solicita cambios de contraseña obligatorios a usuarios y administradores afectados, y activa MFA en todos los accesos relevantes.**
3. **Refuerza controles y monitorización** sobre los sistemas anteriormente comprometidos.
4. **Actualiza listas de acceso, roles y políticas según el principio de mínimo privilegio.**
5. **Redacta y comunica un informe de lecciones aprendidas y mejora de procedimientos.**

---

### Prevención y reducción de riesgos

1. Aplica el principio de privilegio mínimo y separación de tareas en todas las cuentas y sistemas.
2. Establece monitorización y alertas de comportamientos anómalos con herramientas UBA/UEBA/DLP/EDR.
3. Realiza campañas periódicas de concienciación sobre ética, seguridad y gestión de información.
4. Refuerza políticas de alta y baja de empleados, así como revocación inmediata de accesos tras despidos o cambios de puesto.
5. Limita el uso de dispositivos portátiles y servicios en la nube personales en el entorno corporativo.
6. Audita frecuentemente los accesos y cambios en datos críticos.
7. Refuerza la cultura de denuncia responsable y canales confidenciales de reporte de actividades sospechosas.
8. Integra controles de acceso condicional para detectar patrones de riesgo (horario inusual, geolocalización anómala, transferencias masivas).

---

### Referencia: Recursos para la remediación

- Equipos de IT, seguridad, recursos humanos y legal/compliance.
- Herramientas de auditoría, análisis forense y monitorización en tiempo real.
- Soporte de gabinetes legales o consultoras externas para despidos y acciones disciplinarias.

---

## Comunicar

1. **Escala y comunica el incidente** a dirección, RRHH, CISO, responsables jurídicos y compliance, siguiendo el plan interno.
2. **Documenta el incidente y todas las acciones**, conservando evidencias para procedimientos legales o disciplinarios.
3. **Consulta con el área legal** sobre obligaciones regulatorias y sanciones aplicables.
4. **Informa a los departamentos afectados** sobre la situación, impactos y acciones tomadas.
5. **Notifica a usuarios, clientes o partners** si sus datos pudieran haberse visto comprometidos (cumple RGPD y normativas sectoriales).
6. **Contacta con aseguradoras** si la póliza de ciberseguridad cubre incidentes de amenaza interna.
7. **Considera notificar a las autoridades policiales o judiciales** si hay perjuicio económico, robo de datos personales, sabotaje o delito probado.
8. **Colabora con proveedores externos** si los accesos alcanzaron infraestructuras de terceros.
9. **Prepara mensajes claros y ajustados a la realidad**, tanto para comunicación interna como externa, evitando alarmismo y protegiendo la reputación.
10. **Registra el incidente para análisis posterior y actualización del plan de respuesta**.

---

## Recursos

### Acciones recomendadas para el usuario ante sospecha de amenaza interna

1. Mantén la calma, no enfrentes directamente al posible insider ni difundas rumores.
2. Informa confidencialmente al área de seguridad, IT o canal ético de la compañía.
3. Recopila pruebas objetivas (pantallazos, logs, emails) siempre que no vulnere la política de la empresa.
4. No realices acciones que puedan alertar al posible autor hasta recibir instrucciones.
5. Sé paciente, colabora con la investigación y sigue las directrices del equipo de respuesta.

### Acciones recomendadas para el helpdesk ante sospecha de amenaza interna

1. Mantén la calma y sigue el protocolo interno.
2. Abre un ticket/documenta toda la información recibida, priorizando la discreción.
3. Si recibes pruebas o indicios, trasládalos al equipo de seguridad y RRHH inmediatamente.
4. No tomes decisiones unilaterales, espera instrucciones del equipo de gestión de incidentes.
5. Si se requiere, ayuda en la recopilación de logs o preservación forense.
6. Colabora con los equipos técnicos y legales siguiendo la cadena de custodia.

---

### Información adicional

1. [MITRE ATT&CK: Insider Threat](https://attack.mitre.org/techniques/T1078/)  