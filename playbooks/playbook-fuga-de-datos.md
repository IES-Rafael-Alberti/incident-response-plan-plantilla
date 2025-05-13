# Playbook: Fuga de Datos / Exfiltración de Información

**Investiga, remedia (contén, erradica) y comunica en paralelo.**

Asigna pasos a individuos o equipos para que trabajen en paralelo siempre que sea posible; este playbook no es puramente secuencial. Usa tu mejor criterio.

---

## Investigar

1. **Detecta y confirma la fuga/exfiltración de datos**
    * Revisa alertas de DLP (Prevención de Pérdida de Datos), SIEM, firewalls, EDR, CASB y sistemas de monitorización de red.
    * Analiza reportes o avisos sobre transferencias anómalas, accesos inusuales, subida/descarga de grandes volúmenes de información o acceso a datos fuera de horario/patrones habituales.
    * Pregunta a los usuarios o equipos afectados si han notado movimientos de archivos, transferencias, mensajes extraños o pérdida de información.

2. **Determina el vector y alcance de la fuga**
    * ¿Se usó correo electrónico, almacenamiento en la nube, dispositivos USB, FTP, mensajería instantánea o canales alternativos?
    * ¿El ataque proviene de un actor externo (ataque dirigido, malware) o interno (empleado, proveedor con acceso)?
    * ¿Qué tipo de información fue exfiltrada (datos personales, confidenciales, financieros, propiedad intelectual)? ¿Cuál es su sensibilidad y volumen?

3. **Recopila y preserva evidencias digitales**
    * Extrae logs detallados de red, firewalls, DLP, sistemas de archivos y aplicaciones afectadas.
    * Recopila registros de acceso, transferencias, emails, conexiones VPN, logs de sistemas cloud y uso de dispositivos extraíbles.
    * Realiza imágenes forenses de dispositivos/servidores involucrados si procede.
    * Guarda evidencias siguiendo la cadena de custodia para cumplimiento legal o auditoría.

4. **Hazte estas preguntas clave y sigue estas estrategias:**
    * ¿Cuándo y cómo se produjo la exfiltración?
    * ¿Cuánto tiempo duró? ¿Se trata de un único evento o de una fuga continuada?
    * ¿Quién ha tenido acceso a los datos afectados?
    * ¿Es posible que datos se hayan filtrado a internet público (pastebin, foros, darkweb) o circulen entre terceros?
    * ¿Qué riesgos supone para la organización, clientes, proveedores y empleados?
    * ¿Se utilizó algún método de ocultación o cifrado para dificultar la detección de la fuga?
    * ¿Existen indicios de movimiento lateral, escalada de privilegios, o de intento de borrar rastros?
    * ¿Se detectaron cargas/descargas masivas fuera de horario normal, desde ubicaciones inusuales o dispositivos no autorizados?
    * ¿Existen copias de seguridad/restauración previas de los datos exfiltrados?

**Herramientas recomendadas:** DLP, SIEM, soluciones de monitorización de red, sistemas EDR, herramientas forenses, análisis de logs cloud/IT, motores de búsqueda de fugas públicas (Have I Been Pwned, LeakIX, Pastebin).

---

## Remediar

* **Planifica los eventos de remediación** para que se produzcan de forma paralela o coordinada, con los equipos preparados y evitando la pérdida de más datos o destrucción de evidencias.
* **Considera el impacto de cada acción:** algunas medidas pueden interrumpir servicios, alertar al atacante o impedir la recolección de más pruebas.

### Contención

1. **Aísla los sistemas/dispositivos responsables de la exfiltración** (puede incluir servidores, endpoints, cuentas cloud, correo).
2. **Deshabilita accesos y privilegios para usuarios/cuentas implicados.**
3. **Suspende transferencias de datos externas y desconecta servicios de almacenamiento/remoto si procede.**
4. **Bloquea accesos a plataformas cloud, FTP, email y a dispositivos removibles (USB, discos duros portátiles) en la red involucrada.**
5. **Refuerza los controles de firewall/detección de conexiones sospechosas.**
6. **Comunica a RRHH y a legal si se sospecha de implicación de personal interno, siguiendo el protocolo adecuado.**
7. **Monitorea en tiempo real todos los intentos nuevos de exfiltración.**

**Herramientas y procedimientos:**  
- Consola DLP/SIEM, gestión de AD/IAM, administración de firewall/proxy, bloqueo de dispositivos por GPO/MDM, y coordinación con el equipo de legal/compliance.

---

### Erradicación

1. Elimina malware, scripts o herramientas de exfiltración detectadas en los sistemas afectados.
2. Revoca permisos de cuentas comprometidas, elimina cuentas temporales o no autorizadas.
3. Parchea vulnerabilidades explotadas (aplicaciones, servicios expuestos, configuraciones erróneas).
4. Restablece o reconfigura los sistemas y servicios afectados para impedir nuevas fugas.
5. Actualiza los controles de seguridad y reglas DLP según el vector utilizado.
6. Realiza un análisis exhaustivo para asegurar que no quedan puertas traseras, procesos ocultos o mecanismos de persistencia.

---


## Comunicar

1. **Escala el incidente y comunica con dirección, responsables de seguridad, legal y compliance según el plan interno.**
2. **Documenta exhaustivamente el incidente, incluyendo evidencias, cronología, usuarios implicados y posibles impactos.**
3. **Consulta con el área legal sobre obligaciones regulatorias (RGPD, LOPDGDD, sectoriales) y procede con la notificación o reporte según corresponda.**
4. **Notifica a usuarios, clientes o partners afectados sobre la naturaleza y alcance de la fuga, ofreciendo transparencia y canales para consultas.**
5. **Prepara y envía notificaciones a autoridades de protección de datos y reguladores si la información exfiltrada contiene datos personales sensibles o información protegida legalmente.**
6. **Contacta con la aseguradora si se dispone de póliza de ciberseguridad y activa el protocolo de apoyo.**
7. **Considera notificar a Fuerzas y Cuerpos de Seguridad (INCIBE, AEPD, Guardia Civil, Policía Nacional) para investigaciones judiciales o si hay riesgo de delito grave.**
8. **Colabora con proveedores tecnológicos si la fuga impactó a servicios de terceros.**
9. **Redacta comunicaciones claras y no alarmistas para empleados, clientes y otros públicos, informando de acciones realizadas y compromisos de mejora.**
10. **Asegura el registro de todo el proceso de comunicación para su posterior análisis y cumplimiento normativo.**

---

## Recuperar

1. **Recupera los servicios y datos asegurando que la brecha está cerrada y monitoriza la integridad de los sistemas.**
2. **Notifica a los usuarios afectados y solicita cambio de contraseñas en caso de acceso indebido a cuentas.**
3. **Revisa y refuerza controles de acceso, privilegios y políticas de compartición de información.**
4. **Asegura que existen y funcionan copias de seguridad válidas y no contaminadas.**
5. **Implanta medidas de monitorización reforzada sobre los sistemas y datos más sensibles, especialmente en los días/semanas siguientes.**
6. **Realiza simulacros o formaciones extraordinarias si la fuga se debió a un fallo humano o falta de concienciación.**
7. **Prepara y comunica el informe de lecciones aprendidas, con mejoras en procedimientos y controles para prevenir incidentes similares.**

---

### Prevención y reducción de riesgos

1. Aplica controles DLP de prevención y detección en endpoints, red y cloud.
2. Limita los privilegios de acceso a información sensible según el principio de mínimo privilegio.
3. Utiliza herramientas de cifrado para los datos en reposo y en tránsito.
4. Refuerza los controles de acceso a dispositivos extraíbles y plataformas de almacenamiento externo.
5. Realiza auditorías periódicas de accesos y transferencias a datos críticos.
6. Implementa MFA y segmentación de red para proteger los datos clave.
7. Forma regularmente a empleados sobre phishing, ingeniería social y riesgos de manejo indebido de información.
8. Mantén actualizadas políticas de seguridad de la información, uso de servicios cloud y dispositivos personales (BYOD).
9. Configura alertas tempranas ante intentos de subida/descarga masiva de archivos y transferencias fuera de horario habitual.

---

### Referencia: Recursos para la remediación

- Personal de ciberseguridad, IT y legal/compliance
- Consolas DLP, SIEM, EDR y soluciones de backup
- Soporte de proveedores cloud y consultoría forense si es necesario
- Documentación de protocolos internos, políticas de gestión de datos y acceso

---

## Recursos

### Acciones recomendadas para usuarios ante sospecha de fuga/exfiltración de datos

1. Mantén la calma y no modifiques ni elimines archivos ni sistemas posiblemente afectados.
2. Notifica de inmediato al departamento de seguridad o IT cualquier actividad inusual (descargas masivas, envío de información a correos externos, acceso no autorizado).
3. No reenvíes ficheros sospechosos ni compartas información sobre el incidente fuera del canal oficial.
4. Anota lo sucedido: cuándo, qué observaste, quién estaba presente, a qué información accediste.
5. Coopera con el equipo de respuesta y sigue sus instrucciones estrictamente.

### Acciones recomendadas para el helpdesk ante posible fuga/exfiltración

1. Abre un ticket/documento de incidente según el procedimiento, recogiendo todos los detalles aportados.
2. Verifica la identidad del informante y recopila toda la información relevante (dispositivos, sistemas, datos, usuarios).
3. Escala y comunica el incidente de inmediato al área de ciberseguridad.
4. No borres, restaures ni manipules evidencias sin autorización del equipo forense.
5. Colabora en el aislamiento de sistemas y en la recopilación de logs/archivos bajo indicación.
6. Documenta cada paso efectuado y guarda logs, notas y comunicaciones.

---

### Información adicional

1. [MITRE ATT&CK: Data Exfiltration](https://attack.mitre.org/tactics/TA0010/)