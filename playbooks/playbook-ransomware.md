
## Playbook: Ransomware

**Investigar, remediar (contener, erradicar) y comunicar en paralelo. La contención es fundamental en los incidentes de ransomware, priorice en consecuencia.**

Asigne pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este libro de jugadas no es puramente secuencial. Utilice su mejor criterio.

### Fase de Identificación

En la fase de identificación y detección se ha de clasificar el incidente para determinar una serie de puntos sobre el ransomware:

- Determinar el tipo de ransomware
- **Determinar el alcance:** Sistemas infectados, datos afectados.
- **Evaluar el impacto:** Evaluar el impacto funcional en la empresa o objetivo empresarial, sobre la confidencialidad, integridad y disponibilidad de los mismos.
- **Encontrar el vector de ataque:** Comprobar las tácticas en la Initial Access tactic de MITRE ATT&CK

Esta identificación puede ser pasiva o activa, si está ocurriendo en el momento (activa) o si estamos observando ciertos comportamientos extraños (pasiva). En cualquiera de los dos casos, identificar los activos afectados es crucial para el problema.

Durante esta fase es fundamental la comunicación con del equipo con las personas involucradas, recopilando y documentando con la mayor claridad posible la información aportada, para así determinar con mayor precisión los activos involucrados.

Métodos de ataque más comunes según MITRE ATT&CK:

- Archivos adjuntos de correo electrónico.
- Enlaces maliciosos incrustados en el correo electrónico.
- Vulnerabilidades del navegador web.
- Propagación a través de malware.
- Dispositivos USB portátiles infectados con malware.
- Protocolo RDP poco seguro.

El equipo de respuesta a incidentes deberán implementar métodos consistentes de evaluación y priorizar eventos de ransomware para determinar las escaladas requeridas.

### Fase de Mitigación

Actividades encaminadas a erradicar y limpiar o desinfectar las computadoras afectadas. Implementar medidas para evitar la reinfección. Eliminar determinados componentes, tales como malware, cuentas comprometidas, identificar y mitigar todas las vulnerabilidades que fueron explotadas. Este proceso de erradicación del evento en la red, mediante herramientas tecnológicas o manualmente dependiendo del impacto y complejidad de la situación.

Es fundamental erradicar la causa raíz que provocó la brecha de seguridad para que a futuro no vuelva ser explotada. Hasta que esta fase esté completa en su totalidad no se puede volver los sistemas a su normalidad por el riesgo que representa.

### Fase de Contención

**En situaciones de Ransomware, la contención es fundamental.  Informar de las medidas de contención con los datos de la investigación.  Dé mayor prioridad a las cuarentenas y otras medidas de contención que durante una respuesta típica.**

Las cuarentenas impiden la propagación desde los sistemas infectados y evitan la propagación hacia los demás sistemas y datos críticos.

Si no ha sido posible ninguna acción de mitigación inicial:

- Tomar una imagen forense del sistema y una captura de memoria de una muestra de dispositivos afectados (por ejemplo, estaciones de trabajo, servidores, servidores virtuales y servidores en la nube). Recopilar cualquier registro relevante, así como muestras de cualquier binario de malware "precursor" y observables asociados o indicadores de compromiso.
- Conservar la evidencia que es de naturaleza altamente volátil, o limitada en retención, para evitar la pérdida o la manipulación.
- Consulte en la comunidad de ciberseguridad incluso si las acciones de mitigación son posibles, con respecto a los posibles descifradores disponibles, ya que los investigadores de seguridad pueden haber descubierto fallas de cifrado para algunas variantes de ransomware y liberado descifrado u otros tipos de herramientas.

Para continuar con los pasos para contener y mitigar el incidente:

- Orientarse bajo una guía confiable para la variante de ransomware en particular y seguir los pasos recomendados para identificar y contener los sistemas o redes afectados.
- Deshabilitar la ejecución de binarios de ransomware conocidos, esto minimizará el daño y el impacto en los sistemas.
- Identificar los sistemas y las cuentas involucradas, Esto puede incluir cuentas de correos electrónicos.
- Poner en cuarentena los sistemas infectados
- Poner en cuarentena a los usuarios y grupos afectados.
- Ponga en cuarentena los archivos compartidos (no sólo los conocidos; proteja también los no infectados).
- Ponga en cuarentena las bases de datos compartidas (no sólo los servidores infectados conocidos; proteja también las bases de datos no infectadas)
- Ponga en cuarentena las copias de seguridad, si no están ya protegidas
- Contener los sistemas asociados que puedan usarse para acceso no autorizado adicional o continuo, para evitar filtración de credenciales.

### Fase de erradicación

- Revisar las propiedades de archivos cifrados o notas de rescate para identificar usuarios específicos.
- Revisar los registros de eventos RDP, para comprobar las conexiones de red se han realizado correctamente.
- Revisar el registro de seguridad de Windows, los eventros SMB y los registros relacionados que puedan identificar eventos de autenticación o acceso.
- Ejecutar un software de captura de paquetes como Wireshark en el serivodr afectado para identificar direcciones IPs involucradas en la escritura activo o cambio de nombre de los archivos.
- Realizar análisis extensos para identificar mecanismos de persistencia de afuera hacia adentro y viceversa.

### Fase de Recuperación

- Volver a conectar los sistemas y restaurar los datos de copias de seguridad cifradas sin conexión en función de una priorización de los servicios críticos.
- Tener cuidado de no volver a infectar los sistemas limpios durante la recuperación. Por ejemplo, si se ha creado una nueva red VLAN con fines de recuperación, asegurarse de que solo se agreguen sistemas limpios.
- Documentar las lecciones aprendidas del incidente y las actividades de respuesta asociadas para informar las actualizaciones y refinar las políticas, planes y procedimientos de la organización y guiar los ejercicios futuros de los mismos.

### Fase Post-Incidente

- Reunión informativa: Analizar lo que ha salido bien, los desafíos enfrentados y las mejoras potenciales.
- Documentación: Realizar un informe detallado del incidente, incluidos los cronogramas, sistemas afectados, acciones de respuesta y hallazgos para la referencia futura.
- Actualización del plan: Según lo aprendido, actualiza el plan de respuesta incidentes, protocolos y herramientas.
