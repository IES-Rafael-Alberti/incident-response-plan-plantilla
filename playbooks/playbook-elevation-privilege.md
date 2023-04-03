## Playbook: Escalada de Privilegio

**Investigar, remediar (contener, erradicar) y comunicar en paralelo!**

### Preparación

Asigne los pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utilice su mejor criterio.

Fase inicial en la que debe pereparar las medidas, para asegurarse que pueden responder de manera efectiva:

* Determinar y definir los Roles del equipo de Operaciones
    * Incident Commander (IC): Gerente del riesgo.
    * Incident Commander-Adjunto: Gerente de Amenaza.
    * Escriba: Documenta el incidente.
    * SME's: Gerente de Vulnerabilidad, si tiene servicios externalizados o internos.
* Revise y mantenga la línea de tiempo.
* Entrevístese con los usuarios, gerentes y seguridad física. Y tanto con los SME's internos o externos, si los hubiera y procede.
* El Escriba debe ir documentando durante la resolución del incidente y servirá de apoyo.

### Investigar 

<<<<<<< Updated upstream
=======
<!--`TODO: Ampliar los pasos de la investigación, incluyendo las preguntas y estrategias clave, para el incidente de escalada de privilegio.`-->
>>>>>>> Stashed changes

En esta fase debe esforzarse por detectar y validar los incidentes rápidamente, porque las infecciones pueden propagarse en cuestión de minutos. La detección temprana puede ayudarle a minimizar el número de sistemas infectados. Lo que reducirá la magnitud del esfuerzo de recuperación y la cantidad de daños que sufra como resultado del incidente.

1. Defina los indicadores de amenazas. Realice las siguientes preguntas y tomé notas si fuera necesario con papel y boli o utilice una herramienta de ticketing:
    * ¿Se han producido accesos a los sistemas o servidor web fuera del horario laboral?
    * ¿Se ha accedido a los sistemas o servidor web a través de puertos o protocolos que no suelen ser los conocidos?
    * ¿Instalación o configuración de software o servicios no autorizados?
    * ¿Se ha inicializado tráfico en la red sospechoso desde la intranet, afectando a las aplicaciones CRM, ERP en la empresa?
    * ¿El usuario no puede conectarse?
    * ¿Ha habido escalada de privilegios inexplicables en cuentas de usuario de los servidores de correo, archivos y aplicaciones o de almacenamiento en la nube?
    * ¿Ha habido modificaciones inexplicables del sistema?
    * ¿Se han producido alertas desde los sistemas IDS/IPS y Firewalls del servicio externalizado?
    * ¿Se han producido notificaciones desde organizaciones del exterior, de socios comerciales o terceros?

2. Categorice el incidente, del grupo "escalada de privilegios".
3. Solicite peticiones de captura paquetes, de la red. Donde se hayan detectado o se infiere de los indicadores de amenazas.
4. Realice escaneos de contenido.
5. El Incident Commander, junto con el equipo de operaciones deberán. Siguiendo una estructura de tiempo determinada. Ir gestionando el incidente, recibiendo la información, de manera organizada y planificando los siguientes pasos.
6. Debe definir los factores de riesgos, basados en los activos identificados en su empresa, tanto los críticos o no críticos. Debe responder de manera afirmativa/negativa.
   * Empleados son afectados por este compromiso.
   * Clientes son afectados por este incidente.
   * Público o personal de seguridad son afectados.
   * Capacidad de controlar/registar/medir/rastrear cualquier cantidad significativa de inventario/productos/propiedad-intelectual/efectivo/ingresos que se haya perdido a causa del incidente.
   * Los productos/bienes y servicios/procesos internos se ven afectados por este compromiso.
   * Este incidente está siendo lanzado por actores de amenaza conocidos. _e.j._, APT's, grupos de ciberdelincuentes (Cozy Bear/APT29, APT38, REvil _etc..._).
   * Hay conocimiento interno de este incidente o por parte de los SME's, aunque se tengan externalizados sus servicios.
   * Se va a tomar como referencia el peor caso de impacto, al no poder mitigar este ataque.
7. Determine los metódos de parcheo para los sistemas/activos afectados. Ayúdese de los SME'e, son la gerencia de las vulnerabilidades. Y deberá llegarse a un consenso con el Incident Commander-Adjunto, del mejor metódo a seguir en su infraestructura de sistemas, en la empresa. Ellos son la gerencia de amenazas. Obteniendo resultados, que permitan dar continuidad al negocio, siendo resilientes en lo que se ejecuta. Y en la medida, que sea posible. Este a su vez, debe comunicar únicamente los avances en el proceso, al Incidente Commander.
8. Realice una recolección de _LOGS_, de los distintos servicios, sistemas de monitorización/detección implantados en la organización.
9. Realice la recolección de evidencia, haga uso de herramientas como Velociraptor. Ganará en eficiencia y trazabilidad en las recolecciones de artefactos, de los diferentes sistemas y Enpoints(EDR).
10. Capture datos de los distintos activos, ayudándose de herramientas de captura de tráfico de red, como WireShark. Como la captura de otros tipos de datos.
11. Analízalos, con herramientas forenses, como la indicada anteriormente. Si tiene el servicio externalizado, que le informe de los avances el/los SME's.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se lancen juntos (o de forma coordinada), con los equipos apropiados listos para responder a cualquier interrupción.
* **Considere el tiempo y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

La contención, tiene dos componentes: detener la propagación del ataque y la prevención de que se produzcan más daños en los sistemas y servicios.
Es importante, que un organización decida que métodos de contención va a emplear en una fase temprana de la respuesta.
Las organizaciones deben de tener estrategias y procedimientos para tomar decisiones relacionadas con la contención. Reflejando, el nivel de riesgo
aceptable para la organización.

#### Contención

<<<<<<< Updated upstream

=======
<!--`TODO: Personalizar los pasos de contención, tácticos y estratégicos, en la escalada de privilegio.`

`TODO: Especificar las herramientas y procedimientos para cada paso, a continuación.`-->
>>>>>>> Stashed changes

1. Identifique los sistemas que han sido accedidos, mediante la escalada de privilegios o que estén en riesgo, de los ya analizados anteriormente.
2. Identifique los sistemas que estén fuera de línea debido a que fueron comprometidos.
3. Identifique el/los sistema(s) bloqueados debido a intentos repetidos de inicio de sesión.
4. Identifique los sistemas con interrupción o degradación de servicios.
   * Servidores (Correo electrónico, archivos y aplicaciones, en la nube, almacenamiento en la nube):
   * Equipos de trabajo (Departamentos _facturación y ventas, compras, comunicación y RRSS, TIC, RRHH, Delivery, Mantenimiento, Legal, consejo de administración_). :
   * Portátiles (_Mismos Departamentos, que equipos de trabajo_).
   * Dispositivos móviles (_Mismos Departamentos, que dispositivos de trabajo_):
   * Máquinas Virtuales, si el proveedor las esta utilizando para ofrecer sus servicios con la organización: 
   * Directorio Activo (_Del proveedor, con el que se tiene contratado el servicio_):

5. Identifique las cuentas de usuario comprometidas o modificadas.
6. Identifique los servicios TI que han sufrido impacto. 
7. Identifique las herramientas no autorizadas utilizadas para acceder a sistemas o cuentas de usuario. Debera:
    * Seleccione las bases de datos. El equipo de operaciones junto con el/los SME's, deberán evaluar vulnerabilidades en los logs.
    * Debe consultar la base de datos de incidente, junto a la base de datos de amenazas. Por lo que el/los SME's junto al Incident Commander-Adjunto deben comunicarse constantemente, en esta fase.
    * Debe consultar los logs de los sistemas. Realice consultas a la base de datos y comunique al Escriba, que genere los informes de las consultas.
8. Identifique cualquier fuente de atribución de recolección.
   * Debe ver el informe, visualice los detalles de los registros, seleccione los que vea necesarios y el Escriba, debe copiar los detalles de los registros.
9. Identifique las herramientas utilizadas para detectar el ataque.
* SIEM: _PandoraFMS_ , aportada por el servicio contratado.
* IDS: _Snort_, aportada por el servicio contratado.
* Firewall: _PfSense_, aportada por el servicio contratado.
* Escáneres: _No se dispone_
* Antivirus: _En los equipos de trabajo Windows Defender_ y _dispositivos móviles ESET mobile_.
* Herramientas de monitorización de red: _Herramienta básica, propia de la organización_.

<<<<<<< Updated upstream
=======
<!--`TODO: Considerar la automatización de las medidas de contención utilizando herramientas de orquestación.`-->
>>>>>>> Stashed changes

* Deberá consultar con el proveedor/es de seguridad. Si dispone, alguna implantación de alguna herramienta de automatización, que permita realizar la contención en mejor forma y tiempo.
* También para seguir perfeccionando, el plan de respuesta a incidentes. Del tipo de respuesta a escalada de privilegios.

#### Erradicar

<<<<<<< Updated upstream

=======
<!--`TODO: Personalizar los pasos de erradicación, tácticos y estratégicos, para el compromiso de la identidad y acceso.`

`TODO: Especificar herramientas y procedimientos para cada paso, a continuación.`-->
>>>>>>> Stashed changes

En esta fase el equipo de operaciones, deberá realizar el correspondiente triaje y junto al Escriba, la confirmación del informe del Incidente.
Por lo que debe realizar peticiones de parcheo de los sistemas.
Y, realizando las siguientes acciones, entre los distintos roles del equipo:

1. Debe erradicar los compromisos:
* Añadir/Cambiar/Eliminar Sitio/Red/Sistema que haya sido afectado.
* Realizar datos forenses.
* Determinar el nivel de acceso identificado en los sistemas/aplicaciones o servicios.

2. Deberá desplegar sensores para la recolección de captura de tráfico para un análisis aún mayor en la red.
   1. Determinar cualquier movimiento lateral entre los sistemas dentro de la red.

#### Referencia: Recursos de Remediación

<<<<<<< Updated upstream
=======
<!--`TODO: Especificar los recursos financieros, de personal y logísticos para llevar a cabo la remediación.`-->
>>>>>>> Stashed changes

Para llevar a cabo todo el proceso descrito anteriormente. Se utilizarán los siguiente recursos tanto financieros, personal y logísticos:

* Dispone del equipo de operaciones, contratado de manera externalizada. Que ofrece servicio de respuesta ante incidentes.
* Dispone a más alto nivel, ayuda técnica o _Help Desk_ de los diferentes servicios, utilizados dentro de la organización, por el departamento TI.
* Dispone de un equipo legal, con un buen nivel de implementación, para remediar cuando se conozca el alcance real del incidente. Para tomar actuaciones en materia legal, (_RGPD_), de proveedores o clientes afectados.
* Dispone de equipo de mantenimiento, por si hubiera que trasladar algún equipo de trabajo, o otros.
* Dispone de servicios de protección y monitorización, contratados de manera externalizada.

### Comunicar
<<<<<<< Updated upstream


=======
<!--
`TODO: Personalizar los pasos de comunicación para el compromiso de la identidad y el acceso.`

`TODO: Especifique las herramientas y los procedimientos (incluyendo quién debe participar) para cada paso, a continuación, o remítase al plan general.`-->
>>>>>>> Stashed changes

1. Durante la llamada del incidente. Debe realizar comunicaciones, entre los integrantes del equipo de operaciones:
2. En el incidente, el IC será quien esté al mando y gestione a los demás del equipo. Se deben realizar alguno de los tipos de comunicación que se dictan, a continuación:
   1. Llamadas de conferencia, entre el IC y en ocasiones junto al IC-Adjunto y SME's. Para poner en contexto e ir informando de manera a alto nivel. A la ejecutiva de la organización.
   2. Llamadas directas de teléfono. En el caso, de que necesite informar rápidamente o tenga que obtener nueva información. Más rápido. Con el equipo de operaciones. Utilice este método.
   3. Encuentros internos, utilizando la intranet o en el caso de tener el servicio de respuesta a incidente externalizado. Encuentros desde servicios de Internet para comunicarse. Ya sean entre IC, IC-Adjunto o el/los SME's.
   4. Si fuese necesario y es posible. Preferencia a encuentros en persona. En la sala de "mando".
   5. Mensajeo por móviles. Evitarlos todo lo posible. En el caso de que se necesite, comunicar un cambio de canal de comunicación.
   6. Póngase en contacto con los proveedore(s) de seguros.
      1. Discutir que recursos pueden poner a disposición, qué herramientas.
   7. Comuníquese con los organismos reguladores para notificar en tiempo y forma si procede. Como los CERT's, comuníquese con otras empresas que le puedan aportar inteligencia acerca de la información del incidente obtenida hasta ahora. Incluyendo una discusión sobre los recursos que pueden poner a su disposición.
   8. Considere la posibilidad de notificar e implicar a [las fuerzas del orden](https://www.policia.es/_es/tupolicia_conocenos_estructura_dao_cgpoliciajudicial_bcit.php)
      1. [Aplicación de la ley local](#TODO-link-to-actual-resource)
      2. [Aplicación de la ley local a nivel estatal o regional](#TODO-link-to-actual-resource)
      3. [Fuerzas de seguridad europeas o nacionales](#TODO-link-to-actual-resource)

### Recuperación
<<<<<<< Updated upstream


=======
<!--
`TODO: Personalizar los pasos de recuperación para el compromiso de la identidad y acceso.`

`TODO: Especifique las herramientas y los procedimientos para cada paso, a continuación.`-->
>>>>>>> Stashed changes

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:
Y de las medidas de remediación y salvaguardas que se tuvieran a disposición. El equipo de respuesta a incidentes, junto al departamento TI de la organización.
Y con asesoramiento del o los SME's contratados. Debe realizar las siguientes funciones:

1. Debe realizar la recuperación de los sistemas. La gerencia de gestión, amenaza y vulnerabilidades, junto a lo documentado por el Escriba deben ponerse en consenso, en una reunión de control.
* Restaurar los sistemas o servicio que fueran afectados. Por escalada de privilegios.
* Actualizar los sistemas IDS/IPS y sus reglas.
* Determine soluciones alternativas de entrada/salida si el malware utilizado durante el incidente de escalada de privilegios causa en su finalidad una DoS.
2. Recuperación del incidente:
* Escanear los host con firmas actualizadas.
* Escanear los ficheros compartidos con firmas actualizadas.
* Eliminar vulnerabilidades y actualizar los Routers y puntos de acceso.
* Para los puntos anteriores debe utilizar las herramientas proporcionadas y utilizadas por el proveedor(es) de seguridad.
  * AlienVault USM

### Acciones Post-Incidente Best Practise & Lessons Learned

En está última fase, a parte de que deba reunirse con todo el equipo de respuesta a incidentes. Y que se haya generado y dado un informe ejecutivo e informe técnico. A la gerencia de la organización.
Es muy importante realizar también esta fase junto al personal con cargo y el equipo de operaciones.
Vía conferencia o reunión en persona; recomendable. Ya que el manejo de malware puede ser muy costoso.
Es particularmente importante que las organizaciones lleven a cabo una sólida evaluación de las lecciones aprendidas tras
los principales incidentes; en este caso escalada de privilegio para evitar incidentes similares en el futuro.

* Debe proceder en la reunión(es), siguiendo estos pasos, el Escriba deberá ir documentando o tomando notas de lo que se hablen o acuerden en estas reuniones, bajo supervisión del IC y asesoramiento del o los SME's:
  * Revisión del incidente. ¿Ha habido información personal electrónica comprometida (_ePHI_)?
  * ¿Información sensible gubernamental comprometida, clientes, proveedores?
  * Lecciones al descubierto:
     * Realice reunión de descubrimiento.
     * Junto al personal intermedio, y del departamento que corresponda. Realice lo siguiente:
       * Actualizaciones de políticas definidas.
       * Actualizaciones de procesos definidos.
       * Actualizaciones de configuraciones definidas.
     * Lecciones aplicadas:
       * Políticas implementadas.
       * Cambios de procesos implementados.
       * Configuraciones aplicadas.
     * Actualización a la respueta del flujo de trabajo en la organización.

**Debe y son importante, realizar pruebas, para aegurar el correcto funcionamiento del plan de respuesta. Yendo ligado, y poniendo a prueba, la respuesta de continuidad del negocio.
Actualizando y mejorando el plan en un proceso circular de mejora continua. Proporcionando inteligencia tanto a la organización como para terceros.
Y capacitando a los encargados de ponerlo en marcha, concienciar y difundir el plan.**
   
### Recursos

#### Información adicional
1. <a name="elevation-privilege-playbook-ref-1"></a>[LOLBAS Project](https://github.com/LOLBAS-Project/LOLBAS), @ConsciousHacker (2018)
2. <a name="elevation-privilege-playbook-ref-2"></a>[Técnicas LOLBins más utilizadas por los ciberdelincuentes](https://www.kaspersky.es/blog/most-used-lolbins/26092/), Kaspersky daily (30/09/2021)
3. <a name="elevation-privilege-playbook-ref-3"></a>[Ataques, técnicas de prevención y herramientas de escalada de privilegios](https://geekflare.com/es/privilege-escalation-attacks/#:~:text=Los%20ataques%20de%20escalada%20de,permiten%20acceder%20a%20activos%20protegidos.), GEEKFLARE (09/03/2022)
