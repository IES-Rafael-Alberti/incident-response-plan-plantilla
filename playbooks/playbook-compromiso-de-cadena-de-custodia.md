
## Playbook: Compromiso en la cadena de proveedores

### Investigar

El producto que ofrecemos o los mecanismos involucrados en el suministro de los mismos podría verse comprometido de cara al consumidor final o el sistema final. Las fases en las que puede ocurrir esto son:

- Manipulación de herramientas de desarrollo.
- Manipulación de un entorno de desarrollo.
- Manipulación de repositorios de código fuente (públicos o privados)
- Manipulación del código fuente en dependencias de código abierto.
- Manipulación de mecanismos de actualización/distribución de software.
- Imágenes del sistema comprometidas/infectadas
- Reemplazo de software legítimo con versiones modificadas
- Ventas de productos modificados/falsificados a distribuidores legítimos
- Interdicción de envíos


El mayor desafío es que los ataques a la cadena de suministro son utilizados por adversarios avanzados, a menudo utilizando nuevas técnicas y herramientas que son difíciles de detectar. Además, la detección de anomalías es un arte impreciso y puede generar demasiadas alertas que los equipos de seguridad deben abordar. Ampliar el equipo de operaciones de seguridad para responder a las alertas y así reducir el tiempo de detección sigue siendo un desafío.

Los ataques a la cadena de suministro amplían aún más el alcance. Además de lo que está bajo el control directo de las organizaciones, los equipos de seguridad deben:

- Hacer un inventario y supervise las herramientas de terceros que utiliza la organización y conozca las vulnerabilidades y las infracciones reveladas.
- Monitorear el acceso remoto otorgado a proveedores, restrinjalo y fortalézcalo con capas adicionales como la autenticación multifactor.
- Supervisar a los proveedores externos que tengan acceso a los recursos corporativos.

### Remediar

* **Planificar eventos de remediación** donde estos pasos se lancen juntos (o de manera coordinada), con equipos apropiados listos para responder a cualquier interrupción.
* **Considerar el tiempo y los compromisos** de las acciones de remediación: tu respuesta tiene consecuencias.

#### Contener

* **Identificar y aislar sistemas comprometidos y aplicaciones:** Identificar los sistemas afectados en la cadena de proveedores y aislarlos de la red, siempre teniendo en cuenta el impacto hacia el negocio.
* **Implementar controles de acceso:** Reforzar los controles de acceso para prevenir la propagación del compromiso a través de la cadena de suministro.
* **Garantizar que no vuelva a suceder:** Si se logra identificar cual fué el origen del ataque, proceder inmediatamente al arrego y puesta en marcha de vuelta del elemento comprometido.

#### Erradicar

* **Despliegue de reglas YARA:**  Es una herramienta de código abierto que fue desarrollada por la plataforma VirusTotal para identificar los elementos de un malware por medio de un análisis estático automatizado.  

* **Despliegue de reglas Sigma:** Es un metalenguaje genérico y abierto, creado por Florian Roth, que permite describir en formato YAML reglas para detectar registros relevantes de una manera directa. El formato de la regla es muy flexible, fácil de escribir y aplicable a cualquier tipo de registro. 

* **Eliminar malware y artefactos:** Realizar un escaneo exhaustivo de todos los sistemas afectados para identificar y eliminar malware y otros artefactos relacionados con el compromiso.
* **Actualizar sistemas y software:** Aplicar parches de seguridad y actualizaciones de software para cerrar posibles brechas de seguridad en la cadena de proveedores.

#### Referencia: Recursos de Remediación

[Reglas YARA](https://keepcoding.io/blog/que-son-las-reglas-yara/)

[Reglas Sigma](https://www.securityartwork.es/2020/05/05/sigmashooter-ii-generando-nuestra-primera-firma-sigma/)

### Comunicar

1. **Notificar a las partes interesadas:** Comunicar de manera proactiva el compromiso a las partes interesadas internas y externas, proporcionando información relevante sobre el impacto y las acciones tomadas.
2. **Coordinar con proveedores:** Establecer una comunicación transparente con los proveedores afectados para colaborar en la respuesta al compromiso y mitigar su impacto.
3. **Comunicar a llos clientes:** Comunicar a todos los clientes que pueden ser víctimas de recibir el producto malformado.
4. **Contactar con aseguradoras:** Rápidamente consultar a la aseguradora e informar detalladamente del incidente para saber que recursos nos prestarán.
5. **Contactar con fuerzas estatales:** Establecer una comunicación transparente con las fuerzas del estado si fuera necesario.
5. **Contactar con empresas externas:** Informar incidentes a empresas de seguridad externas, es decir, Equipos Nacionales de Respuesta a Incidentes de Seguridad Informática (CSIRT). Proporcionar todos los indicadores de compromiso e indicadores de ataque que se hayan observado.

### Recuperar

1. **Restaurar la funcionalidad:** Implementar medidas para restaurar los sistemas y servicios afectados a un estado operativo normal.
2. **Realizar análisis post-incidente:** Evaluar el impacto del compromiso en la cadena de proveedores y mejorar los procesos y controles de seguridad para prevenir futuros incidentes.
3. **Preparar un mensaje explicativo:** Tras este tipo de incidente y para salvaguardar la reputación de la empresa lo mejor es tener un mensaje explciativo de cara al público de que ha pasado y de como lo hemos solucinado.
3. **Creación de un reporte:** 
Desarrollr el Informe de Incidencia utilizando tu plantilla corporativa.
Debe incluir:
- Resumen ejecutivo con una breve descripción de los daños, las acciones tomadas, la causa raíz y las métricas clave (tiempo para detectar, tiempo para responder, tiempo para recuperarse, etc.)
- Cronograma detallado de las acciones del adversario asignadas a las tácticas de ATT&CK (puedes usar Kill Chain, pero lo más probable es que la mayoría de las acciones estén en la etapa Acciones según el objetivo, que no es muy representativa ni útil)
Cronograma detallado de las acciones tomadas por el equipo de respuesta a incidentes
- Análisis de causa raíz y recomendaciones de mejora en función de su conclusión.
- Lista de especialistas involucrados en Respuesta a Incidentes con sus roles

#### Información adicional

1. <a name="https://www.paloaltonetworks.com/blog/security-operations/playbook-of-the-week-automated-rapid-response-to-3cxdesktopapp-supply-chain-attack/"></a>["Playbook of the Week: Automated Rapid Response to 3CXDesktopApp Supply Chain Attack"](#TODO-url), Jane Goh (Apr 06, 2023)

2. <a name="https://www.gartner.com/smarterwithgartner/how-to-respond-to-a-supply-chain-attack"></a>["How to Respond to a Supply Chain Attack"](#TODO-url),  Kasey Panetta (Jan 11, 2021)

3. <a name="https://www.mitre.org/sites/default/files/publications/supply-chain-attack-framework-14-0228.pdf"></a>["Supply Chain Attack Framework and Attack Patterns"](#TODO-url),  John F. Miller (Dec 2013)
