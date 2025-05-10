## Playbook: Website Defacement

**¡Investigar, remediar (contener, erradicar) y comunicarse en paralelo!**

Asignar pasos a individuos o equipos para que trabajen simultáneamente, siempre que sea posible; este manual de estrategias no es puramente secuencial. Use su mejor criterio.

### Investigar

1. Desconectar inmediatamente el servidor desfigurado para una investigación más profunda.
   * Esto es especialmente importante si la desfiguración es ofensiva o provocativa de alguna manera. Elimínela del público lo antes posible para evitar daños y mitigar el impacto en el negocio.
   * El mensaje de desfiguración también puede contener información falsa que podría engañar a los usuarios o ponerlos en riesgo.
   * Desconectar el servidor permitirá una investigación más profunda de la desfiguración. Esto puede ser necesario, ya que el hacker podría haber penetrado más profundamente en la organización accediendo a servidores de aplicaciones, bases de datos, etc.
2. Determinar la fuente de la vulnerabilidad del sistema que fue utilizada por el atacante. Exploits comunes incluyen:
   * Ataques de inyección SQL
   * Este tipo de ataque ocurre cuando un atacante interfiere con las consultas de una aplicación a la base de datos. Por lo tanto, puede provocar acceso no autorizado a datos privados o sensibles. Lea más sobre ataques de inyección SQL [aquí](https://www.acunetix.com/websitesecurity/sql-injection/)
   * Ataques de inclusión remota de archivos (RFI)
   * Este tipo de ataque explota la función de referencia de una aplicación para cargar malware desde una URL remota. Lea más sobre ataques RFI [aquí](https://www.acunetix.com/blog/articles/remote-file-inclusion-rfi/)
   * Webshells
   * Más información sobre webshells y desfiguración de sitios web [aquí](https://www.wordfence.com/blog/2017/06/wso-shell/)
   * Diseño deficiente de aplicaciones web
   * Hacks de JavaScript
   * Hacks de PHP/ASP
   * Más información sobre hacking con JavaScript (https://itnext.io/how-companies-are-hacked-via-malicious-javascript-code-12aa82560bdc)
   * Otros métodos de detección incluyen:

   * Revisar los registros del servidor

   * Revisar el registro de acceso y el registro de errores de la página web para detectar cualquier actividad sospechosa o desconocida

   * Por supuesto, también es recomendable revisar los registros del firewall IDS o IPS, si están disponibles

   * Revisar archivos con contenido estático

   * Escanear bases de datos para detectar contenido malicioso

3. Reúne cualquier pista sobre quién es el hacker o para qué organización trabaja. Considera las siguientes preguntas:
   * ¿Qué representaba la desfiguración? ¿Incluía un mensaje obvio?
   * ¿Parecía la desfiguración inofensiva o intencional? ¿Podría ser el hacker un niño que hacía tonterías o un grupo de profesionales con un motivo?
   * ¿Parece que tu organización fue el objetivo? ¿Quién podría querer atacar a tu organización?
   * ¿Qué pretendía lograr el hacker?
   * Consulta [aquí](https://www.geeksforgeeks.org/types-of-hackers/) para obtener más información sobre los tipos de hackers que podrían haber atacado tu página web.
4. Recopile otra información importante de la página alterada, como:
   * una captura de pantalla de la alteración
   * el dominio y la dirección IP de la página
   * detalles del servidor web
   * el código fuente de la página
   * analice esto cuidadosamente para identificar el problema y asegurarse de que se encuentre en un servidor de la empresa
   * nombre o información sobre el atacante
5. También existen herramientas disponibles para facilitar la detección y el análisis de registros. Algunas de ellas se enumeran a continuación:
   * Weblog Expert
   * Sawmill
   * Deep Log Analyzer

### Remediar

* **Planifique eventos de remediación** donde estos pasos se implementen conjuntamente (o de forma coordinada), con los equipos adecuados listos para responder ante cualquier interrupción.
* **Considere el tiempo y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contención

1. Realizamos una copia de seguridad de todos los datos almacenados en el servidor web con fines forenses.
2. Como se mencionó anteriormente, asegúrese de desconectar temporalmente el servidor de la página desfigurada mientras se realiza la investigación.
   * Debe tener una página de error preparada para esta situación que informe a los usuarios y/o empleados que se está realizando mantenimiento y que la página que buscaron volverá pronto. Incluso puede tener un sitio web de respaldo preparado donde pueda publicar contenido mientras se realiza la investigación y la remediación, y que su página de error temporal redirija a los usuarios a este sitio de respaldo.
   * Revise su mapa de arquitectura de red. Si la brecha se produce en otro sistema de la red, desconéctelo e investíguelo.
3. Una vez determinado el origen del ataque, aplique las medidas necesarias para garantizar que esto no vuelva a ocurrir. Esto puede incluir modificar el código o editar los derechos de acceso. * Consulte la sección "Investigar" para conocer las fuentes comunes de vulnerabilidad.
   * Si esto ocurre fuera de su dominio, simplemente asegúrese de proporcionar al personal correspondiente toda la información sobre el ataque y permita que los expertos realicen su trabajo.

### Recuperar

1. Elimine el mensaje del hacker y reemplácelo con contenido original y legítimo. Si se perdieron datos durante el ataque, consulte las copias de seguridad y restaure la página original en la medida de lo posible.
   * Revise las copias de seguridad para detectar indicadores de vulnerabilidad.
   * Considere la posibilidad de una recuperación parcial y la realización de pruebas de integridad de las copias de seguridad.
2. Considere solicitar a los usuarios que cambien sus credenciales de inicio de sesión si el servidor web cuenta con autenticación de usuario.
3. Después de implementar las medidas para evitar riesgos (como se recomienda a continuación), restaure su servidor mostrando el contenido original de la página.
4. Si es necesario o aplicable, prepare una disculpa o explicación del ataque para los usuarios o cualquier persona que haya presenciado la desfiguración. Asegúrese de que quede claro que el contenido de la desfiguración no refleja a su organización en absoluto.

#### Prevención de Riesgos

1. Use la menor cantidad de complementos necesaria. Los hackers atacan sitios web vulnerables con múltiples fuentes de entrada. Puede limitar estas fuentes de entrada utilizando solo lo necesario y eliminando cualquier complemento o software obsoleto o sin usar. También es importante actualizarlos lo antes posible.

2. Supervise de cerca y exija el acceso al contenido administrativo. Permita que las personas accedan solo a lo que necesitan. Esto reducirá la posibilidad de que errores humanos provoquen ciberataques. Existen más métodos de prevención caseros mencionados en [este artículo](https://cirt.gy/index.php/node/116) (pasos 6-12) y en el recurso n.° 4 al final de este manual.

3. Revise regularmente su sitio web para detectar malware escaneando el código fuente. Busque scripts, iframes o URL que le resulten desconocidos y asegúrese de escanear también las URL que sí le resulten familiares.

4. Existen muchos escáneres web automatizados de gran reputación que no le costarán nada de tiempo y analizarán exhaustivamente su sitio web en busca de vulnerabilidades con regularidad. Aquí tiene un [enlace a escáneres populares](https://resources.infosecinstitute.com/14-popular-web-application-vulnerability-scanners/#gref).

5. Protéjase de puntos de explotación comunes, como inyecciones SQL y ataques XSS. [Este artículo](https://www.banffcyber.com/knowledge-base/articles/best-practices-address-issue-web-defacement/) incluye las mejores prácticas para defenderse de estos ataques.

6. Instale programas de detección de desfiguración para que, en caso de un nuevo ataque, esté preparado y pueda responder rápidamente. Aquí tiene un [artículo](https://www.techradar.com/news/best-website-defacement-monitoring-service) que resume algunos de los mejores servicios de monitorización de 2020. 7. Hable con sus empleados sobre la importancia de mantener el acceso administrativo limitado y confidencial, e infórmeles sobre estos pasos para evitar incidentes, incluyendo capacitaciones periódicas sobre ciberseguridad.

### Comunicar

1. Escalar el incidente y comunicarse con la gerencia según el procedimiento
1. Documentar el incidente según el procedimiento (e informarlo si corresponde)
1. Comunicarse con los asesores legales internos y externos según el procedimiento, incluyendo discusiones sobre cumplimiento, exposición al riesgo, responsabilidad, contacto con las fuerzas del orden, etc.
1. Comunicarse con los usuarios (internos)
   1. Comunicar las actualizaciones de respuesta a incidentes según el procedimiento
   1. Comunicar el impacto del incidente **y** las acciones de respuesta a incidentes (p. ej., contención: "¿por qué está inactivo el recurso compartido de archivos?")
   1. Comunicar los requisitos: "¿qué deben hacer y qué no deben hacer los usuarios?"
1. Comunicarse con los clientes
   1. Centrarse especialmente en aquellos cuyos datos se vieron afectados
   1. Generar las notificaciones necesarias según la normativa aplicable (en particular, aquellas que puedan considerar la desfiguración como una filtración de datos o que requieran notificaciones).
1. Contactar con la(s) aseguradora(s)
   1. Analizar qué recursos pueden poner a disposición, qué herramientas y proveedores respaldan y por los que pagarán, etc.
   1. Cumplir con los requisitos de informes y reclamaciones para proteger la elegibilidad
1. Considerar la posibilidad de notificar e involucrar a las fuerzas del orden. O
   1. Fuerza policial local
   1. Fuerza policial estatal o regional
   1. Fuerza policial federal o nacional
1. Comunicarse con los proveedores de seguridad y TI.

#### Información adicional

1. <a name="defacement-playbook-ref-1"></a>A helpful and detailed [paper](https://pdfs.semanticscholar.org/899e/2d629e06d920b9059edb21fcb52cdb33f783.pdf) on defacement detection.
2. <a name="defacement-playbook-ref-2"></a>10 tools for [better website monitoring and security](https://geekflare.com/website-defacement-monitoring/)
3. <a name="defacement-playbook-ref-3"></a>[2019 Website Threat Research Report](https://sucuri.net/reports/2019-hacked-website-report/) with helpful statistics.
4. <a name="defacement-playbook-ref-4"></a>[Article](https://www.imperva.com/learn/application-security/website-defacement-attack/) including DIYs and Best practices to prevent website defacement.