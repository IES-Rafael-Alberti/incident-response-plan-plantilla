# Playbook: Defensa contra Cryptojacking

## Preparación

- Designar un equipo de operaciones que incluya al menos un experto en seguridad de TI y un representante del equipo de infraestructura.
- Determinar y definir los Roles del equipo de Operaciones:
  - Incident Commander (IC): Gerente del riesgo.
  - Incident Commander-Adjunto: Gerente de Amenaza.
  - Escriba: Documenta el incidente.
  - SME's: Gerente de Vulnerabilidad, si tiene servicios externalizados o internos.
- Mantener una lista de contactos actualizada para el equipo de operaciones, incluidos los contactos internos y externos relevantes (proveedores de servicios, especialistas en seguridad externos, etc.).
- Implementar y mantener medidas de seguridad para prevenir ataques de cryptojacking, como bloquear scripts de minería de criptomonedas en la red y en los navegadores de los empleados, instalar extensiones de seguridad en los navegadores y mantener actualizados los sistemas operativos y las aplicaciones.
- Revise y mantenga la línea de tiempo.
- Entrevístese con los usuarios, gerentes y seguridad física. Y tanto con los SME's internos o externos, si los hubiera y procede.
- El Escriba debe ir documentando durante la resolución del incidente y servirá de apoyo.

## Investigación

- Que ocurre en la web
  - Hemos detectado que la web va con lentitud.
  - Los clientes han emitido quejas sobre el tema anterior.
- Monitoreo de uso de CPU y ancho de banda de la red
  - Monitorear el uso de CPU y el ancho de banda de la red en tiempo real utilizando herramientas de monitoreo de redes y sistemas.
  - Configurar alertas en las herramientas de monitoreo para alertar al equipo de operaciones sobre posibles ataques de cryptojacking.

## Remediar

- Planificar eventos de remediación
- Analizar todo el código de la web buscando anomalias.
- Analizar logs buscando nuevas entradas.
- Analizar vulnerabilidades de los sistemas.

## Contención

- Cuarentena
  - Poner en cuarentena los servidores afectados.
  - Adquirir otro servidor para duplicar el servidor con las copias de seguridad, para tener disponibilidad en el tiempo de volver a la normalidad.

## Erradicar

- Disponibilidad
  - Ingresar en otro servidor las copias de seguridad, asegurándonos que la web estaba correcta en ese momento para no perder la disponibilidad.
- Encuentra el vector de infección
  - Comprobar todos los archivos de la web para encontrar el vector de infección.
- Vigilar la infección
  - Debemos considerar el aumento de la infección, ya que puede haber más de una web infectada.


## Comunicar

- Escalar el incidente y comunicarlo a la dirección según el procedimiento.
- Documentar el incidente según el procedimiento.
- Comunicarse con los usuarios (internos)
- Comunicar las actualizaciones

### Comunicar a la dirección

El Incident Commander debe escalar el incidente a la dirección según el procedimiento establecido. Esto puede incluir informar al equipo de gestión de riesgos, al equipo de seguridad de la información y a otros responsables de la toma de decisiones. La dirección debe ser informada sobre la naturaleza del incidente, la gravedad y las posibles consecuencias para el negocio.

### Documentar el incidente

Es importante documentar el incidente de cryptojacking para su posterior análisis y revisión. El Escriba del equipo de operaciones debe tomar notas detalladas sobre las acciones tomadas durante el incidente, incluyendo los pasos de investigación, los hallazgos y la resolución del problema. Además, se debe preparar un informe final del incidente que documente el impacto y las lecciones aprendidas para mejorar la respuesta a futuros incidentes de cryptojacking.

### Comunicarse con los usuarios (internos)

Es importante comunicarse con los usuarios internos afectados por el incidente de cryptojacking. Esto puede incluir notificar a los empleados sobre el incidente, informarles sobre los pasos tomados para remediar el problema y proporcionarles consejos sobre cómo evitar futuros ataques de cryptojacking.

### Comunicar las actualizaciones

El equipo de operaciones debe mantener a la dirección y a otros responsables informados sobre las actualizaciones del incidente, incluyendo cualquier progreso en la investigación, los hallazgos y la resolución del problema. Además, se deben comunicar las actualizaciones a los usuarios internos y externos afectados por el incidente de cryptojacking para mantenerlos informados sobre el estado del incidente y los pasos tomados para remediar el problema. 