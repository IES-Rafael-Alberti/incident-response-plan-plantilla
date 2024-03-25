
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

No se recomienda pagar el rescate, nada garantiza que los ciberdelincuentes vayan a acceder y proporcionarnos la llave para desencriptar los archivos/sistemas infectados. Además, pagar demuestra que el ransomware funciona y podría aumentar el número de ataques que sufriríamos nosotros y otras organizaciones.

- Volver a conectar los sistemas y restaurar los datos de copias de seguridad cifradas sin conexión en función de una priorización de los servicios críticos.
- Tener cuidado de no volver a infectar los sistemas limpios durante la recuperación. Por ejemplo, si se ha creado una nueva red VLAN con fines de recuperación, asegurarse de que solo se agreguen sistemas limpios.
- Documentar las lecciones aprendidas del incidente y las actividades de respuesta asociadas para informar las actualizaciones y refinar las políticas, planes y procedimientos de la organización y guiar los ejercicios futuros de los mismos.

### Fase Post-Incidente

- Reunión informativa: Analizar lo que ha salido bien, los desafíos enfrentados y las mejoras potenciales.
- Documentación: Realizar un informe detallado del incidente, incluidos los cronogramas, sistemas afectados, acciones de respuesta y hallazgos para la referencia futura.
- Actualización del plan: Según lo aprendido, actualiza el plan de respuesta incidentes, protocolos y herramientas.

### Recursos

**Acciones de los usuarios ante un incidente de ransomware:**

- Mantenga la calma y respire profundamente.
1. Desconecte su sistema de la red.
2. Haz fotos de tu pantalla con tu smartphone mostrando las cosas que has notado: mensajes de rescate, archivos encriptados, mensajes de error del sistema, *etc.*.
3. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz. Todo ayuda.  Documenta lo siguiente:
    1. ¿Qué has notado?
    2. ¿Por qué pensaste que era un problema?
    3. ¿Qué estabas haciendo en el momento en que lo detectaste?
    4. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    5. ¿Dónde estaba cuando ocurrió y en qué red? (oficina/casa/tienda, con cable/inalámbrica, con/sin VPN, *etc.*)
    6. ¿Qué sistemas está utilizando? (sistema operativo, nombre de host, *etc.*)¿Qué cuenta utilizas?
    7. ¿A qué datos suele acceder?
    8. ¿Con quién más se ha puesto en contacto en relación con este incidente y qué le ha dicho?
4. Contacta al servicio de asistencia técnica y ser lo más útil posible
5. Tenga paciencia: la respuesta puede ser perturbadora, pero está protegiendo a su equipo y a la organización. **Gracias.**

**Acciones del servicio de asistencia técnica ante un incidente de ransomware:**

1. Mantenga la calma y respire profundamente.
2. Abra un ticket para documentar el incidente, según el procedimiento.
3. Pida al usuario que tome fotos de su pantalla usando su smartphone mostrando las cosas que ha notado: mensajes de rescate, archivos encriptados, mensajes de error del sistema, *etc.* Si es algo que ha notado directamente, haga lo mismo usted.
4. Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz. 2. Si se trata de un informe de usuario, haz preguntas detalladas, incluyendo:
    1. ¿Qué ha notado?
    2. ¿Por qué pensaste que era un problema?
    3. ¿Qué estabas haciendo en el momento en que lo detectaste?
    4. ¿Cuándo se produjo por primera vez, y con qué frecuencia desde entonces?
    5. ¿De qué redes se trata? (oficina/casa/tienda, cableada/inalámbrica, con/sin VPN, *etc.*)
    6. ¿De qué sistemas se trata? (sistema operativo, nombre de host, *etc.*)
    7. ¿De qué datos se trata? (rutas, tipos de archivos, archivos compartidos, bases de datos, software, *etc.*)
    8. ¿Qué usuarios y cuentas están implicados? (directorio activo, SaaS, SSO, cuentas de servicio, *etc.*)
    9. ¿A qué datos suelen acceder los usuarios implicados?
    10. ¿Con quién más has contactado acerca de este incidente y qué les has dicho?
5. Haz las preguntas de seguimiento que sean necesarias. **Usted es el encargado de responder al incidente, contamos con usted.**
6. Obtenga información de contacto detallada del usuario (domicilio, oficina, móvil), si procede.
7. Registre toda la información en el ticket, incluyendo notas manuscritas y de voz.
8. Poner en cuarentena a los usuarios y sistemas afectados.
9. Póngase en contacto con el equipo de seguridad y estar preparados para participar en la respuesta según las indicaciones: investigación, reparación, comunicación y recuperación.
