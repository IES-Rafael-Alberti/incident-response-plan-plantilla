# Playbook: Phishing

## Investigar

- **Determinar el Alcance del Ataque:**

Identificar el alcance del ataque, incluyendo el número total de usuarios afectados y las acciones tomadas en respuesta al correo electrónico de phishing (por ejemplo, descarga de archivos adjuntos, visita al sitio web falsificado, divulgación de información personal o comercial).

- **Análisis de Mensajes:**

Analizar el mensaje de phishing utilizando un dispositivo seguro para determinar la información clave, como remitente, destinatarios, asunto, cuerpo del mensaje, adjuntos y enlaces.

- **Análisis de Enlaces y Adjuntos:**

Utilizar herramientas como nslookup, whois, VirusTotal y sandboxes de malware para analizar los enlaces y adjuntos sospechosos en busca de indicadores de compromiso (IOC).

- **Categorización y Evaluación de la Gravedad:**

Clasificar el tipo de ataque de phishing y evaluar la gravedad considerando el riesgo para la seguridad pública o personal, la exposición de datos sensibles, el impacto en el negocio y la capacidad para controlar o registrar sistemas críticos.

## Remediar

- **Bloqueo de URLs Maliciosas:**

Bloquear el acceso a las URLs maliciosas identificadas para prevenir que los usuarios accedan a sitios web fraudulentos.

- **Educación del Usuario:**

Capacitar a los usuarios sobre cómo identificar correos electrónicos de phishing y qué hacer en caso de recibir uno, incluyendo no hacer clic en enlaces sospechosos ni proporcionar información confidencial.

- **Implementación de Filtros Anti-Phishing:**

Reforzar los filtros de correo electrónico para detectar y bloquear correos electrónicos de phishing antes de que lleguen a la bandeja de entrada del usuario.

- **Reporte de Phishing:**

Establecer un proceso para que los usuarios reporten correos electrónicos de phishing sospechosos al equipo de seguridad para una acción adicional.

- **Cambiar Credenciales:**

Cambiar las credenciales de acceso para cuentas comprometidas y reforzar la autenticación multifactor (MFA) cuando sea posible.

## Recuperar

- **Restauración de Datos:**

En caso de que se hayan comprometido cuentas o información confidencial, restaurar los datos desde copias de seguridad limpias y verificadas para asegurar la integridad y la disponibilidad de la información.

- **Revisión de Políticas de Seguridad:**

Revisar y actualizar las políticas de seguridad para incluir medidas específicas para prevenir el phishing y promover prácticas seguras de uso del correo electrónico.

## Contener

- **Bloqueo de Cuentas Comprometidas:**

Bloquear las cuentas de usuario comprometidas que hayan sido utilizadas para acceder a enlaces de phishing o proporcionar información confidencial.

- **Despliegue de Parches de Seguridad:**

Aplicar parches de seguridad a los sistemas y aplicaciones afectados por cualquier exploit utilizado en los correos electrónicos de phishing para mitigar posibles riesgos de seguridad.

- **Bloquear Acceso a Dominios Maliciosos:**

Bloquear el acceso a dominios maliciosos identificados utilizando DNS, firewalls o proxies.

- **Implementar Retención Forense:**

Implementar retención forense de mensajes y purgar mensajes relacionados de otras bandejas de entrada de usuario.

## Erradicar

- **Identificar Origen del Phishing:**

Identificar el origen del correo electrónico de phishing y tomar medidas para mitigar cualquier riesgo asociado, como el compromiso de cuentas de usuario o la exposición de información confidencial.

- **Revisión de Políticas de Seguridad:**

Revisar y actualizar las políticas de seguridad para incluir medidas específicas para prevenir el phishing y promover prácticas seguras de uso del correo electrónico.

## Comunicar

- **Notificar a las Partes Interesadas:**

Informar a las partes interesadas sobre la detección y respuesta al phishing, los pasos tomados para remediar la situación y cualquier acción adicional que pueda ser necesaria.

- **Alertar a la Dirección:**

Comunicar a la dirección sobre el incidente de phishing, resaltando los riesgos para la organización y las medidas tomadas para mitigar el impacto.

- **Coordinar con Equipos de Seguridad:**

Colaborar con equipos de seguridad internos y externos para compartir información sobre el incidente y desarrollar estrategias de defensa contra el phishing en el futuro.

## Recursos

- Guía de Buenas Prácticas de Seguridad de Phishing de la FTC
- Herramientas de Análisis de Correo Electrónico
- "Seguridad en el Correo Electrónico: Prácticas Recomendadas para la Detección y Respuesta ante Phishing"