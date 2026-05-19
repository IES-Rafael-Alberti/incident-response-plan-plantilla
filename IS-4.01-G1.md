## Indice
## Introducción

En la actualidad, la seguridad de la información se ha convertido en un aspecto fundamental para cualquier organización que dependa de sistemas digitales para desarrollar su actividad diaria. En empresas como la analizada en este trabajo, donde buena parte de la operativa se apoya en el correo corporativo, el almacenamiento en la nube, la web, la tienda online y distintas aplicaciones de gestión, cualquier incidente de seguridad puede afectar de forma directa a la continuidad del negocio, a la protección de los datos y a la confianza de clientes y proveedores.

A partir de esta realidad, el presente trabajo se plantea como una propuesta integral orientada a mejorar la seguridad de la empresa desde una perspectiva práctica y organizada. No se trata solo de identificar riesgos o enumerar amenazas, sino de analizar la situación actual de la organización, estudiar sus activos más importantes, valorar las principales debilidades existentes y, a partir de ello, definir medidas concretas que permitan reforzar su nivel de protección y su capacidad de respuesta ante incidentes.

Uno de los aspectos más relevantes del trabajo es que no se limita a un enfoque teórico. A lo largo del desarrollo se adaptan metodologías, referencias y buenas prácticas al contexto real de la empresa objeto de estudio, teniendo en cuenta su tamaño, su dependencia de terceros, su nivel de madurez y los riesgos ya identificados. De este modo, se busca que las medidas propuestas no solo sean correctas desde el punto de vista técnico o metodológico, sino también razonables, aplicables y útiles dentro de un entorno empresarial real.

En conjunto, este trabajo pretende mostrar la importancia de abordar la ciberseguridad de forma estructurada, conectando la prevención, la gestión del riesgo y la respuesta a incidentes dentro de una misma línea de trabajo. El propósito final es contribuir a que la organización esté mejor preparada para proteger sus activos críticos, responder con mayor eficacia ante situaciones adversas y mantener la continuidad de su actividad en un entorno cada vez más expuesto a amenazas de seguridad.

## Plan de respuesta
## Playbooks

Los playbooks identificados como necesarios son:

1. Phishing.
2. Ransomware.
3. Compromiso de identidad y acceso.
4. Compromiso de la cadena de suministro.
5. Desfiguración o desaparición de sitios web.
6. Ataque DDoS.
7. Fuga de datos o exfiltración de información.
8. Explotación de aplicación expuesta a Internet.

La selección se ha basado en la empresa del caso: uso intensivo de correo, tratamiento de datos personales, dependencia de servicios cloud, web y tienda online externalizadas, exposición pública en Internet y madurez de seguridad básica. También se ha tenido en cuenta la taxonomía de incidentes, el impacto sobre CRM, ERP, correo, almacenamiento compartido y continuidad del negocio, y la relación de estos incidentes con ATT&CK y RE&CT.

La justificación de cada uno es:

1. `Phishing` es necesario porque el correo es un canal crítico y además es una vía habitual de robo de credenciales, malware y fraude.
2. `Ransomware` es prioritario porque la empresa depende de ficheros, aplicaciones internas y continuidad operativa.
3. `Compromiso de identidad y acceso` es clave por el uso de servicios cloud, correo y accesos remotos.
4. `Cadena de suministro` es necesario porque hay varios servicios externalizados, especialmente web, tienda online, antivirus y consultoría.
5. `Defacement` encaja por la exposición pública de la web y el impacto reputacional directo.
6. `DDoS` está justificado por la dependencia del canal web y de la disponibilidad de servicios expuestos a Internet.
7. `Fuga de datos` es imprescindible por el tratamiento de datos personales y documentación sensible.
8. `Explotación de aplicación pública` es coherente con la existencia de servicios web accesibles desde Internet y con la falta de control directo sobre su securización.

## Respuesta a las preguntas
## Conlusiones

### 1. Importancia de una respuesta organizada
El plan demuestra que una gestión eficaz de incidentes requiere una estructura clara de actuación. La definición de roles, responsabilidades y procedimientos permite responder de forma coordinada y reducir la improvisación durante situaciones críticas.

### 2. Coordinación entre equipos
La separación de funciones entre investigación, remediación y comunicación facilita que varias tareas se desarrollen al mismo tiempo. Esto permite contener el incidente con mayor rapidez y minimizar el impacto sobre la actividad de la empresa.

### 3. Relevancia de la documentación
El registro continuo de evidencias, cronologías, decisiones y acciones realizadas es fundamental para garantizar el seguimiento del incidente y disponer de información útil para auditorías, revisiones posteriores y posibles requerimientos legales.

### 4. Comunicación clara y transparente
El documento destaca la necesidad de comunicar únicamente información verificada, evitando especulaciones o mensajes ambiguos. Una comunicación transparente ayuda a mantener la confianza de clientes, empleados y proveedores durante la gestión del incidente.

### 5. Mejora continua mediante revisiones posteriores
La realización de revisiones posteriores al incidente (AAR) permite identificar errores, analizar las causas raíz y proponer acciones de mejora. Este proceso contribuye a fortalecer continuamente la capacidad de respuesta de la organización.

### 6. Reducción del impacto operativo y reputacional
La aplicación de este plan ayuda a disminuir el impacto técnico, económico y reputacional derivado de un incidente de seguridad, favoreciendo una recuperación más rápida de los servicios y de la actividad empresarial.

### 7. Necesidad de formación y preparación
El plan deja claro que la eficacia de la respuesta depende también de la preparación previa del personal. La formación, los simulacros y la revisión periódica del plan son elementos esenciales para garantizar una respuesta eficiente ante futuras amenazas.

## Bibliografía

## Anexo

### MITRE ATT&CK

[Anexo MITRE ATT&CK](Investigacin_inicial.svg)
