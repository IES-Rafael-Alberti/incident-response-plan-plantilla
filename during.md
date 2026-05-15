# Plan de respuesta a incidentes para {{COMPANY_NAME}}

Autor: {{AUTHOR_NAME}}, {{AUTHOR_EMAIL}}

Revisión {{REVISION_NUMBER}}, Publicado {{RELEASE_DATE}}

Fue revisado por última vez el {{REVIEW_DATE}}. Fue probado por última vez en {{TEST_DATE}}.

La organización deberá revisar este documento al menos una vez al año o tras incidentes graves de seguridad, cambios significativos en infraestructura o modificaciones regulatorias relevantes.

# Evaluar

1. **Mantenga la calma y la profesionalidad.**
2. Reúna la información pertinente, _por ejemplo_, alarmas, eventos, datos, suposiciones, intuiciones (**observar**).
3. Considerar las categorías de impacto, a continuación (**orientar**), y determinar si hay un posible incidente (**decidir**):
4. Iniciar una respuesta si hay un incidente (**actuar**).  En caso de duda, inicie una respuesta. El responsable de gestión de incidentes y el equipo de respuesta pueden ajustarse tras la investigación y la revisión.

## Evaluar el impacto funcional

¿Cuál es el impacto directo o probable sobre el funcionamiento de la organización?

* Interrupción del CRM, ERP, correo electrónico o almacenamiento compartido.
* Caída de la página web o tienda online.
* Pérdida de disponibilidad de los sistemas de facturación, RRHH o ventas.
* Acceso no autorizado a cuentas internas o servicios cloud.
* Paralización parcial o total del trabajo remoto o presencial.
* Incapacidad de prestar servicio a clientes.

Si cualquiera de estas situaciones ocurre, deberá considerarse un incidente de seguridad.

## Evaluar el impacto de la información

¿Cuál es el impacto directo o probable sobre los datos de la organización?

* Acceso no autorizado a datos personales de clientes, empleados o proveedores.
* Modificación o borrado de documentos corporativos.
* Fuga de información financiera, legal o contractual.
* Acceso indebido a propiedad intelectual o información estratégica.
* Compromiso de credenciales de acceso.
* Exposición de datos almacenados en la nube.

Cualquier afectación sobre confidencialidad, integridad o disponibilidad de la información deberá tratarse como incidente.

## Categorías de severidad

| Severidad | Descripción |
| --- | --- |
| Baja | Incidentes sin impacto operativo relevante y sin afectación de datos sensibles. |
| Media | Incidentes con impacto limitado o posible afectación parcial de sistemas o usuarios. |
| Alta | Interrupción relevante de servicios críticos, compromiso de cuentas privilegiadas o exposición de datos personales. |
| Crítica | Paralización del negocio, ransomware, fuga masiva de datos o afectación legal/regulatoria grave. |

**Cada miembro del equipo está facultado para comenzar este proceso.** Si ves algo, notifícalo inmediatamente.

# Iniciar la respuesta

## Nombrar el incidente

Cree una [frase simple de dos palabras](http://creativityforyou.com/combomaker.html) para referirse al incidente -un nombre en clave- que se utilizará para el archivo y el canal del incidente. `Todo: Personalizar el procedimiento de nomenclatura de incidentes.`

## Reunir el equipo de respuesta

1. Llame al Incident Commander de turno/de guardia. `TODO: Añadir lista o procedimiento de llamada del Incident Commander`.
2. **No** discuta el incidente fuera del equipo de respuesta a menos que el Incident Commander lo autorice
3. Inicie y/o únase al chat de respuesta en {{RESPONSE_CHAT}}. `ToDo: Añadir el procedimiento de lanzamiento del chat de respuesta.`
4. Iniciar y/o unirse a la llamada de respuesta en {{RESPONSE_PHONE}} y/o {{RESPONSE_VTC}}. `TODO: Añadir el procedimiento de lanzamiento de la llamada de respuesta.`
5. Preferible usar la llamada de voz, el chat y el intercambio seguro de archivos sobre cualquier otro método.
6. **No** utilizar el correo electrónico principal si es posible.  Si el correo electrónico es necesario, utilícelo con moderación o use {{ALTERNATE_EMAIL}}.  Encripte los correos electrónicos cuando cualquier participante esté fuera del dominio {{ORGANIZATION_DOMAIN}}.  `TODO: Añadir detalles y procedimiento de correo electrónico alternativo, por ejemplo, Office 365 o GSuite bajo demanda`.
7. **No** usar SMS/texto para comunicar el incidente, a menos que sea para decirle a alguien que se mueva a un canal más seguro.
8. Invite al personal de turno/guardia a la llamada y al chat de respuesta.
    * Invite al equipo de seguridad.  `TODO: Añadir lista de contactos del equipo de seguridad o procedimiento.`
    * Invitar al SME de los equipos y sistemas afectados. `TODO: Añadir la lista de contactos del SME del equipo o el procedimiento.`
    * Invitar a las partes interesadas ejecutivas y a los asesores jurídicos lo antes posible, pero dar prioridad a los responsables operativos.  `TODO: añadir una lista de contactos de las partes interesadas ejecutivas o un procedimiento.`
9. OPCIONAL:_ Establecer una sala de colaboración en persona ("sala de guerra") para incidentes complejos o graves. `TODO: Añadir el procedimiento de la sala de colaboración.`

### Referencia: Estructura del equipo de respuesta

* Equipo de Mando
  * [Incident Commander](#rol-incident-commander)
  * [Incident Commander-Adjunto](#rol-delegado-del-incident-commander-subdelegado)
  * [Escriba](#rol-scriba)
* Equipo de enlace
  * Enlace [interno](#rol-enlace)
  * Enlace externo
* Equipo de operaciones
  * [Expertos en la materia](#rol-experto-en-la-materia-subject-matter-expert-sme) (SME) para sistemas
  * SME para equipos/unidades de negocio
  * SME para Funciones Ejecutivas (_por ejemplo_, Legal, RRHH, Finanzas)

`TODO: Modificar la estructura de roles según sea necesario`.

### Referencia: Información de contacto del equipo de respuesta

Rol del equipo de respuesta         | Información de contacto
----------------------------------- | ---------------------------
Localizador del Incident Commander  | {INCIDENT_COMMANDER_PAGER_NUMBER}}
Url del Incident Commander          | {{INCIDENT_COMMANDER_PAGER_URL}}
Lista del Incident Commander        | {{INCIDENT_COMMANDER_ROSTER}}
Lista del equipo de seguridad       | {{SECURITY_TEAM_ROSTER}}
Lista del equipo SME                | {{TEAM_SME_ROSTER}}
Lista de ejecutivos                 | {{EXECUTIVE_ROSTER}}

`TODO: Personalizar la información de contacto del equipo de respuesta.  Incluya los procedimientos de contacto en las listas, que pueden ser estáticas o dinámicas.`

## Establecer el ritmo de batalla

### Realizar la primera llamada de respuesta

1. Realice la llamada inicial utilizando la [estructura de llamada de respuesta inicial](#referencia-estructura-de-la-llamada-de-respuesta-inicial)
2. Siga las instrucciones del Incident Commander.  Si el Incident Commander de turno/de guardia no se une a la llamada **dentro de {{INCIDENT_COMMANDER_RESPONSE_SLA}}** y usted es un Incident Commander capacitado, tome el mando de la llamada.
3. Siga las [instrucciones correspondientes a su función](#roles).
4. Siga la llamada y el chat, y comente según corresponda.  Si no es un SME, comunique las aportaciones a través del SME de su equipo si es posible.
5. **Mantenga la llamada y el chat activos durante todo el incidente para una comunicación basada en eventos.**
6. Programe actualizaciones **cada {{UPDATE_FREQUENCY}}** sobre la comunicación activa.

#### Referencia: Estructura de la llamada de respuesta inicial

* Incident Commander (IC): Mi nombre es [NOMBRE], soy el Incident Commander.  He designado a [NOMBRE] como adjunto y a [NOMBRE] como esccriba. ¿Quién está en la llamada?
* ESCRIBA: [Toma asistencia]
* IC: [Si falta personal clave] Adjunto, por favor llame a [PERSONAL FALTANTE].
* IC: [Hace preguntas para comprender la situación, los síntomas, el alcance, el vector, el impacto y el calendario del reportador del incidente, los SME aplicables para los sistemas y las unidades de negocio].
* SMEs: [Responde brevemente a las preguntas del IC].
* IC: [Si se trata de un incidente]:
  * En este momento, el resumen del incidente es el siguiente: [reitera el resumen].  El equipo de investigación estará dirigido por [NOMBRE], el equipo de reparación estará dirigido por [NOMBRE] y el equipo de comunicación estará dirigido por [NOMBRE].  Ellos coordinarán la composición del equipo y me informarán.  Los miembros del equipo, por favor, informen a su jefe de equipo correspondiente.
  * ¿Qué medidas de investigación, corrección o comunicación se han tomado ya? [esta debería ser una lista corta, pero tiene que salir ahora]
  * Esta llamada y el chat permanecerán activos y disponibles hasta el cierre del incidente, por favor, utilícelos para todas las comunicaciones relacionadas con el incidente.  Proporcione actualizaciones de estado en tiempo real en el chat, si es posible.  ¿Hay alguna pregunta o aportación restante? [responde a las preguntas]
  * Líderes de equipo, por favor procedan con sus acciones planeadas.  Nos reuniremos de nuevo en [UPDATE_TIME] para discutir el estado.  Gracias.
* IC: [Si esto no es un incidente]: En este momento, estos hechos no alcanzan el nivel de un incidente.  Me coordinaré directamente con el reportador del incidente para las acciones de seguimiento.  Gracias por su tiempo.

#### Referencia: Etiqueta de la llamada

* Únase tanto a la llamada como al chat.
* Mantenga el ruido de fondo al mínimo.
* Mantenga su micrófono silenciado hasta que tenga algo que decir.
* Identifícate cuando te unas a la llamada; di tu nombre y tu función (por ejemplo, "Soy el SME del equipo x").
* Habla con claridad.
* Sea directo y objetivo.
* Mantenga conversaciones/discusiones cortas y al grano.
* Comunicar cualquier preocupación al Incident Commander (CI) en la llamada.
* Respetar las limitaciones de tiempo impuestas por el Incident Commander.
* **Utilizar una terminología clara y evitar acrónimos o abreviaturas. La claridad y la precisión son más importantes que la brevedad.

### Realizar la actualización de la respuesta

* Llevar a cabo actualizaciones programadas utilizando la [estructura de llamada de actualización](#referencia-estructura-de-la-llamada-de-actualización-de-la-respuesta) cada {{UPDATE_FREQUENCY}} en el puente activo. `TODO: Personalizar la frecuencia de actualización y los scripts; se recomienda no más de dos veces al día.`
* Ajustar la frecuencia según sea necesario.
* Coordinar las actualizaciones independientes (_por ejemplo_, ejecutivas, legales) según sea necesario, pero con la menor frecuencia posible.

#### Referencia: Estructura de la llamada de actualización de la respuesta

* Incident Commander (IC): Desde la última actualización programada, el resumen del incidente es el siguiente:
  * [Impacto]
  * [Vector]
  * [Actualización del resumen]
  * [Actualización de la línea de tiempo]
* IC: Equipo de investigación, por favor proporcione una breve actualización
  * LÍDER DE LA INVESTIGACIÓN: [Actividades de investigación o "nada que informar"]
  * ¿Cuál es su plan de investigación recomendado?
  * ¿Qué acciones de investigación necesitan ser asignadas o aprobadas?  [escuchar, obtener consenso, encargar/aprobar]
* IC: Equipo de remediación, por favor proporcione una breve actualización
  * Líder de remediación: [Actividades de remediación o "nada que informar"]
  * ¿Cuál es su estrategia de corrección recomendada?  ¿Objeciones fuertes? [escuchar, obtener el consenso, asignar/aprobar]
  * ¿Qué acciones de corrección necesitan ser asignadas o aprobadas?
* IC: Equipo de comunicación, por favor, proporcione una breve actualización:
  * COMMUNICATIONS LEAD: [Actividades de comunicación o "nada que informar"]
  * ¿Cuál es su estrategia de comunicación recomendada?  ¿Objeciones fuertes? [escuchar, obtener consenso, encargar/aprobar]
  * ¿Qué acciones de comunicación necesitan ser asignadas o aprobadas?
* IC: Esta llamada y el chat permanecerán activos y disponibles hasta el cierre del incidente, por favor, utilícelos para todas las comunicaciones relacionadas con el incidente.  Si es posible, proporcione actualizaciones del estado en tiempo real en el chat.  ¿Hay alguna pregunta o aportación restante? [responde a las preguntas]
* IC: Líderes de equipo, por favor procedan.  Nos reuniremos de nuevo en [{{UPDATE_TIME}}] para discutir el estado. Gracias.

## Supervisar el alcance

* Supervisar el alcance de la respuesta para asegurarse de que no excede el ámbito de control del Incident Commander.
* Si un incidente es lo suficientemente complejo y hay suficientes intervinientes, considere la posibilidad de crear subequipos.

### Crear Sub-Equipos

* En la preparación de incidentes complejos, se predefinen tres subequipos: Investigación, Remediación y Comunicación, generalmente responsables de esas funciones de respuesta. `TODO: Personalizar la estructura de los subequipos si es necesario.`
* Crear un puente de llamadas y un chat para cada subequipo.
* El Incident Commander designará a los líderes de los equipos, que dependen del IC, y a los miembros de los equipos, que dependen de su líder.  _Los líderes de equipo no tienen que estar formados como Incident Commanders, pero es preferible que tengan alguna experiencia de liderazgo._
* El Incident Commander puede ajustar el propósito o el nombre de los subequipos según sea necesario.
* Si desea cambiar de equipo, pregunte a su **líder de equipo actual**.  **No** pregunte al Incident Commander, o al líder del otro(s) equipo(s).  Utilice la cadena de mando.

### Incidente dividido

Si un incidente resulta ser dos o más incidentes distintos:

* Establezca un nuevo [archivo de incidentes](#crear-el-archivo-del-incidente).
* Haga un seguimiento y coordine la investigación, la reparación y la comunicación en el archivo correspondiente.
* Considere la posibilidad de establecer subequipos para cada incidente.
* **Mantener un Incident Commander de alto nivel**, para coordinar los activos de baja densidad y alta demanda y mantener la unidad de mando.

# Investigar

**[Investigar](#investigar), [Remediar](#remediar) y [comunicar](#communicate) en paralelo, utilizando equipos separados, si es posible.** El Incident Commander coordinará estas actividades.  Notifique al Incident Commander si hay pasos que el equipo debe considerar.

## Crear el archivo del incidente

1. Cree un nuevo archivo de incidentes en {{INCIDENT_FILE_LOCATION}} utilizando el [nombre del incidente](#nombre-del-incidente).  Utilice este archivo para el almacenamiento seguro de documentación, pruebas, artefactos, _etc._.
    * Proporcionar un almacenamiento digital seguro.
    * Proporcionar un intercambio de archivos seguro.
    * Obtener almacenamiento físico.
    * Compartir la ubicación del archivo del incidente en la llamada y el chat.
    * `TODO: Personalizar y automatizar la ubicación del archivo y el procedimiento`.
1. Documente el impacto funcional y de la información, si se conoce (véase [Evaluar](#evaluar)). `TODO: Personalizar las categorías de impacto, si es necesario.`
2. Documentar el vector, si se conoce (_por ejemplo_ web, correo electrónico, medios extraíbles). `TODO: Personalizar la lista de vectores, si es necesario.`
3. Documente el resumen del incidente: un breve resumen del vector, el impacto, la investigación y la situación de la reparación, si se conoce.
4. Documente la línea de tiempo del incidente, incluyendo la actividad del atacante y la actividad de la respuesta. `TODO: Añadir líneas de tiempo con diferentes detalles, según sea necesario.`
5. Documente los pasos de investigación, reparación y comunicación.  Documente las actividades de forma independiente para que puedan combinarse y reutilizarse, si es posible.
6. Registre la información significativa, como:
    **Pruebas**, con la hora de recogida, la fuente, la cadena de custodia, _etc._.
    * **Sistemas afectados**, con el modo y el momento en que se identificó el sistema, y el resumen del efecto (_por ejemplo, tiene malware, datos a los que se ha accedido).
    * **Archivos de interés**, como el malware o los archivos de datos, con el sistema y los metadatos.
    * **Datos accedidos y tomados**, con nombres de archivos, metadatos y hora de presunta exposición.
    * **Actividad significativa del atacante**, como inicios de sesión y ejecución de malware, con la hora del evento.
    * **Indicadores de compromiso (IOC)** basados en la red, como direcciones IP y dominios.
    * **Indicadores de compromiso basados en el host**, como nombres de archivos, hashes y claves de registro.
 * **Cuentas comprometidas**, con el alcance del acceso y la hora del compromiso.

`TODO: Personalizar el procedimiento de documentación del incidente, incluyendo hojas de cálculo, bases de datos, formularios, sistemas y plantillas, si es necesario.`

## Recoger las pistas iniciales

1. Entrevistar a los reportadores del incidente.
2. Recoger los datos de apoyo iniciales (_e._, alarmas, eventos, datos, suposiciones, intuiciones) en el archivo del incidente.
3. Entrevistar a lo(s) SME con experiencia en el dominio o el sistema, para comprender los detalles técnicos, el contexto y el riesgo.
4. Entrevistar a lo(s) SME de la unidad de negocio afectada, para comprender el impacto de la misión/negocio, el contexto y el riesgo.
5. Asegúrese de que las pistas son relevantes, detalladas y procesables.

### Referencia: Lista de recursos de respuesta

Recurso                             | Ubicación
----------------------------------- | ------------------------------------
Lista de información crítica        | {{CRITICAL_INFO_LIST_LOCATION}}
Lista de activos críticos           | {{CRITICAL_ASSET_LIST_LOCATION}}
Base de datos de gestión de activos | {{ASSET_MGMT_DB_LOCATION}}
Mapa de red                         | {{NETWORK_MAP_LOCATION}}
Consola SIEM                        | {{SIEM_CONSOLE_LOCATION}}
Agregador de registros              | {{LOG_AGGREGATOR_CONSOLE}}

`TODO: Completar la información crítica y las listas de activos ("joyas de la corona"). Esto es increíblemente importante para una respuesta eficaz.`

`TODO: Personalizar la lista de recursos de respuesta`.

## Actualizar el plan de investigación y el archivo del incidente

1. Revisar y perfeccionar el impacto del incidente.
2. Revisar y refinar el vector del incidente.
3. Revisar y perfeccionar el resumen del incidente.
4. Revisar y perfeccionar la línea de tiempo del incidente con hechos e inferencias.
5. Crear hipótesis: qué puede haber ocurrido y con qué seguridad.
6. **Identificar y priorizar las preguntas clave** (lagunas de información) para apoyar o desacreditar las hipótesis.
    * Utilizar la matriz ATT&CK de MITRE o un marco similar para [desarrollar preguntas](#reference-attacker-tactics-to-key-questions-matrix).
        * [ATT&CK for Enterprise](https://attack.mitre.org/wiki/Main_Page), incluyendo enlaces a los específicos de Windows, Mac y Linux.
        * [ATT&CK Mobile Profile](https://attack.mitre.org/mobile/index.php/Main_Page) para dispositivos móviles.
    * Utilizar palabras interrogativas como inspiración:
        * **¿Cuándo?**: primer compromiso, primera pérdida de datos, acceso a x datos, acceso a y sistema, etc.
        * **¿Qué?**: impacto, vector, causa de origen, motivación, herramientas/explotaciones utilizadas, cuentas/sistemas comprometidos, datos atacados/perdidos, infraestructura, COIs, etc.?
        * **¿Dónde?**: ubicación del atacante, unidades de negocio afectadas, infraestructura, etc.?
        * **¿Cómo?**: compromiso (explotación), persistencia, acceso, exfiltración, movimiento lateral, etc.?
        * **¿Por qué?**: objetivo, momento, acceso a x datos, acceso a y sistema, etc.
        * **¿Quién?**: atacante, usuarios afectados, clientes afectados, etc.?
1. **Identificar y priorizar los dispositivos y estrategias testigo** para responder a las preguntas clave.
    * Consultar los diagramas de la red, los sistemas de gestión de activos y la experiencia de las SME
    * Consultar la [Lista de recursos de respuesta](#referencia-lista-de-recursos-de-respuesta))
1. Consulte los [playbook de incidentes](#playbooks) para conocer las preguntas clave, los dispositivos testigos y las estrategias para investigar las amenazas comunes o muy dañinas.

**El plan de investigación es fundamental para una respuesta eficaz; impulsa todas las acciones de investigación.  Utilice el pensamiento crítico, la creatividad y el buen juicio.**

### Referencia: Táctica del atacante a la matriz de preguntas clave

Táctica del atacante    | La forma en que los atacantes ...      | Posibles preguntas clave
----------------------- |----------------------------------------| -----------------------------------------
Reconocimiento          | ... aprender sobre los objetivos       | ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?
Desarrollo de recursos  | ... construir infraestructuras.        | ¿Qué sistemas?
Acceso inicial          | ... entrar                             | ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?
Ejecución               | ... ejecutar código hostil             | ¿Qué malware? ¿Qué herramientas? ¿Dónde? ¿Cuándo?
Persistencia            | ... quedarse en el sistema             | ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?
Escalada de Privilegios | ... obtener acceso de mayor nivel      | ¿Cómo? ¿Dónde? ¿Qué herramientas?
Evasión de la defensa   | ... esquivar la seguridad              | ¿Cómo? ¿Dónde? ¿Desde cuándo?
Acceso a credenciales   | ... obtener/crear cuentas              | ¿Qué cuentas? ¿Desde cuándo? ¿Por qué?
Descubrimiento          | ... aprender nuestra red               | ¿Cómo? ¿Dónde? ¿Qué saben?
Movimiento lateral      | ... moverse                            | ¿Cómo? ¿Cuándo? ¿Qué cuentas?
Recogida                | ... encontrar y reunir datos           | ¿Qué datos? ¿Por qué? ¿Cuándo? ¿Dónde?
Mando y control         | ... herramientas y sistemas de control | ¿Cómo? ¿Dónde? ¿Quién? ¿Por qué?
Exfiltración            | ... tomar datos                        | ¿Qué datos? ¿Cómo? ¿Cuándo? ¿Dónde?
Impacto                 | ... romper cosas.                      | ¿Qué sistemas o datos? ¿Cómo? ¿Cuándo? ¿Dónde? ¿Cómo de malo?

Consulte la página [MITRE ATT&CK](https://attack.mitre.org/) para obtener más información e ideas.

La matriz ATT&CK se emplea en esta fase como marco de apoyo para formular hipótesis, priorizar preguntas, clasificar evidencias y asociar acciones de contención y erradicación a tácticas concretas observadas durante la investigación.

## Crear y desplegar indicadores de compromiso (IOC)

Los indicadores de compromiso se van a crear a partir de las pistas iniciales recopiladas, los artefactos recopilados y los resultados del análisis, priorizando indicadores dinámicos y de comportamiento sobre indicadores estáticos aislados. El objetivo será mejorar la detección, acelerar la contención y permitir la correlación entre correo, red, endpoints, servicios cloud y proveedores externos. 

### Formato de los IOC

Los IOCs se documentarán en un formato estructurado y reutilizable compatible con las herramientas disponibles en la empresa. Mientras no se implante una plataforma específica de intercambio de inteligencia, se utilizará un registro interno en formato tabla estructurada dentro del expediente del incidente. Esta tabla será completada cuando sea posible por ficheros CSV o JSON para su importación en firewall, antivirus/EDR, filtros de correo y herramientas de monitorización.

Cada IOC deberá incluir como mínimo:

- Identificador único
- Fecha y hora del alta
- Incidente al que ha sido asociado
- Tipo de indicador, red, host, cloud, correo o comportamiento
- Valor del indicador
- Fuente de obtención
- Nivel de confianza
- Activos relacionados
- Responsable de validación
- Estado, activo, en revisión o revocado
- Fecha de revisión o retirada

### Procedimiento de despliegue y revocación de IOC

Los IOCs serán validados por el equipo TIC/seguridad antes de su despliegue para evitar falsos positivos y fatiga operativa. Una vez validados, se desplegarán de forma proporcional al incidente en los controles disponibles, incluyendo firewall, antivirus o EDR gestionado por la subcontrata, filtros de correo, listas de bloqueo DNS/proxy si existieran y reglas de búsqueda en logs de servidores, cloud o web.

El procedimiento a seguir será el siguiente: 

1. Registrar el IOC en el expediente del incidente con su contexto y evidencia asociada. 

2. Valorar impacto operativo y riesgo de falsos positivos sobre correo, web, aplicaciones internas y servicios de negocio.

3. Aprobar su despliegue por el responsable TIC o el Incident Commander, según su criticidad. 

4. Aplicar el IOC en los controles disponibles y documentar fecha, hora, herramienta y responsable. 

5. Revisar su efectividad y posibles falsos positivos en cada actualización del incidente. 

6. Revocar a ajustar el IOC cuando deje de ser útil, se confirme como erróneo o afecte de forma desproporcionada al negocio. 

Se evitará con esto el despliegue de feeds masivos de IOCs no curados o no relacionados con el caso, ya que aumentan el ruido y reducen la capacidad de análisis efectivo.

### IOC prioritarios

Se priorizarán los siguientes tipos de IOC basándonos en su adecuación al entorno de la organización:

- Correo: remitentes, dominios, URLs, adjuntos, reglas de reenvío, encabezados y patrones de phishing.

- Identidad: cuentas afectadas, horarios anómalos, ubicaciones remotas inusuales, fallos repetidos y cambios de privilegios.

- Red: IPs, dominios, puertos, destinos inusuales, actividad DNS y conexiones a servicios externos no habituales.

- Host: hashes, rutas, claves de persistencia, tareas programadas, procesos, servicios y binarios no firmados.

- Cloud y SaaS: accesos anómalos, comparticiones, exportaciones, descargas masivas y creación de tokens o sesiones inusuales.

- Comportamiento: PowerShell codificado, compresión masiva de archivos, balizamiento, cifrado masivo, movimiento lateral y cambios súbitos en permisos o configuraciones.


## Identificar los sistemas de interés

Se considerarán sistemas de interés aquellos que presenten señales directas o indirectas de compromiso, alberguen datos personales o soporten procesos críticos del negocio. Debemos tener en cuenta que la identificación y priorización se basará en el impacto sobre confidencialidad, integridad, disponibilidad, continuidad operativa, obligaciones legales y dependencias de terceros. 

En este caso, se considerarán prioritarios: 

- Servidor de correo corporativo y buzones de usuarios clave.

- Servidor de archivos y carpetas compartidas de negocio.

- Servidor de aplicaciones, CRM y ERP.

- Equipos del personal TIC, RRHH, facturación/ventas y dirección, por su acceso a datos y privilegios.

- Almacenamiento cloud y cuentas asociadas.

- Infraestructura de red, firewall, router, WiFi y accesos remotos.

- Activos y credenciales relacionados con la web y tienda online externalizadas.

Las etiquetas de clasificación de sistemas de interés incluirán, según el caso:

- Malware detectado o sospechado.

- Cuenta comprometida o uso indebido de credenciales.

- Acceso a datos personales o información sensible.

- Sistema con funciones críticas de negocio.

- Evidencia de persistencia o ejecución sospechosa.

- Posible exfiltración o modificación de datos.

- Relación con proveedor o tercero externo.

La recogida, el análisis y la remediación se priorizarán primero sobre los sistemas con mayor impacto potencial en clientes, operativa, cumplimiento RGPD y continuidad del canal digital.

Cuando existan recursos limitados, se dará prioridad a los sistemas que combinen exposición a Internet, acceso a datos personales y papel crítico en la continuidad del negocio.

## Recogida de pruebas

- Priorizar la recogida de evidencias en función del plan de investigación, la criticidad del activo afectado, la posible afectación a datos personales y el impacto sobre la continuidad del negocio. 

- Recoger datos de respuesta en vivo utilizando herramientas de administración y análisis disponibles en la organización incluyendo utilidades nativas de Windows y Linux, consola del antivirus corporativo gestionado por la subcontrata y herramientas de administración segura autorizadas por el equipo TIC. La respuesta en vivo se realizará únicamente sobre sistemas encendidos en los que sea necesario preservar procesos activos, conexiones de red, sesiones de usuario, mecanismos de persistencia, tareas programadas o actividad sospechosa en memoria. Antes de iniciar la recogida se documentará el sistema afectado, usuario, fecha, hora y motivo de la adquisición; tras ello, la evidencia será exportada y almacenada en el expediente seguro del incidente. 

- Recoger los registros relevantes de los sistemas, agregadores y consolas disponibles en la organización, priorizando los logs de correo corporativo, servidores de archivos y aplicaciones, firewall, router, WiFi, accesos remotos, antivirus, almacenamiento cloud y, cuando proceda, registros facilitados por el proveedor de la web y tienda online. La recopilación de logs deberá conservar el formato original siempre que sea posible, incluir rango temporal suficiente desde antes del primer indicio del incidente y quedar documentada con origen, responsable, fecha y limitaciones detectadas, como ausencia de retención o falta de visibilidad. 

- Recoger la imagen de memoria cuando el incidente requiera analizar malware residente en memoria, robo de credenciales, ejecución de herramientas sin rastro en disco, conexiones activas sospechosas o persistencia avanzada. La captura se realizará únicamente con autorización del Incident Commander o del responsable TIC, utilizando una herramienta forense aprobada por la organización o por el proveedor especializado designado. La imagen obtenida se almacenará en el repositorio seguro del incidente, acompañada de su hash, datos de adquisición, versión de la herramienta utilizada y registro de cadena de custodia. 

- Recoger la imagen de disco cuando exista sospecha de manipulación grave, malware persistente, necesidad de análisis forense profundo, requerimiento legal o disciplinario, o imposibilidad de esclarecer el incidente mediante recogida lógica. La adquisición deberá coordinarse con el Incident Commander, el responsable TIC y el propietario del sistema para minimizar el impacto operativo. La imagen se realizará con herramienta forense reconocida, soporte de almacenamiento dedicado, verificación de integridad mediante hash y registro completo del proceso de obtención, traslado y custodia. 

- Recoger y almacenar todas las pruebas de acuerdo con la política interna de gestión de evidencias y con cadena de custodia documentada. Cada evidencia deberá identificarse de forma única e incluir descripción, sistema de origen, fecha y hora de recogida, persona responsable, método de obtención, hash cuando proceda, ubicación de almacenamiento y relación con el incidente. Las evidencias digitales se custodiarán en un repositorio restringido gestionado por TIC/seguridad y los soportes físicos permanecerán bajo control del custodio designado hasta el cierre del caso. 

###  Ejemplo de artefactos útiles

En esta empresa, los artefactos a recopilar se priorizarán según su utilidad para investigar incidentes de phishing, robo de credenciales, ransomware, fuga de datos, compromiso de servicios cloud y afectación de la web o tienda online. Se establece el siguiente orden orientativo de prioridad:

- Registros de autenticación de correo corporativo, almacenamiento cloud, CRM/ERP, VPN, accesos remotos y paneles de administración.

- Cabeceras de correo, reglas de reenvío, adjuntos, enlaces, mensajes reportados por usuarios y actividad anómala en buzones.

- Procesos en ejecución y servicios activos en servidores, PCs y portátiles potencialmente afectados.

- Hashes de ejecutables sospechosos, binarios en rutas temporales y archivos descargados recientemente.

- Aplicaciones instaladas y herramientas de administración remota presentes en equipos afectados.

- Usuarios locales, cuentas de dominio, cuentas privilegiadas y cambios recientes en grupos o permisos.

- Puertos de escucha, servicios asociados y conexiones de red establecidas o recientes.

- Configuración DNS, rutas estáticas y cambios de resolución que puedan indicar redirecciones o mando y control.

- Claves de autoarranque, tareas programadas, servicios persistentes, artefactos WMI y otros mecanismos de persistencia.

- Artefactos de ejecución pasada, como Prefetch, Shimcache u otros equivalentes disponibles según sistema operativo.

- Registros de eventos de Windows, syslog o journal en Linux y registros de aplicaciones críticas.

- Detecciones del antivirus corporativo o de la solución EDR disponible.

- Actividad de acceso a carpetas compartidas, borrado, cifrado, compresión o modificación masiva de documentos.

- Credenciales de acceso remoto, sesiones activas y evidencias de uso no autorizado de RDP, VPN, SSH, VNC u otras herramientas equivalentes.

- Telemetría de red procedente de firewall, router, DNS, proxy, tráfico web, netflow o controles perimetrales disponibles.

- Registros y actividad del proveedor de la página web y tienda online, incluyendo accesos administrativos, cambios en contenidos y eventos de disponibilidad.

- Evidencias de uso de dispositivos móviles, portátiles y soportes extraíbles cuando exista sospecha de fuga, pérdida o extracción no autorizada de información.

## Analizar las pruebas

El análisis de las evidencias se realizará conforme al plan de investigación, priorizando los activos más críticos, la posible afectación a datos personales, la continuidad del negocio y la probabilidad de propagación a otros sistemas. Los datos obtenidos en la respuesta en vivo, los registros recopilados, las imágenes de memoria y disco y cualquier artefacto adicional se clasificarán por sistema afectado, usuario implicado, fecha y hora, tipo de evidencia y posible táctica del atacante según MITRE ATT&CK.

Se analizarán de forma prioritaria los eventos relacionados con autenticación, ejecución de procesos, mecanismos de persistencia, accesos remotos, cambios en privilegios, actividad sobre archivos compartidos, conexiones de red inusuales, uso de correo corporativo, accesos a CRM/ERP, almacenamiento cloud y actividad administrativa sobre la web o la tienda online. Cuando se disponga de imágenes de memoria o disco, se realizará análisis forense orientado a detectar malware, robo de credenciales, persistencia, movimiento lateral, exfiltración y cualquier manipulación relevante de evidencias o configuraciones.

El análisis de malware se centrará en determinar su vector de entrada, comportamiento, persistencia, comunicaciones de red, impacto sobre sistemas y datos, y relación con campañas de phishing, ransomware o compromisos de credenciales. De forma complementaria, y solo cuando aporte valor real al caso, se podrá enriquecer la investigación con inteligencia contrastada sobre dominios, IPs, hashes o tácticas observadas, evitando información no verificada o ajena al incidente.

Todo hallazgo relevante deberá reflejarse en el expediente del incidente, incluyendo nuevos indicadores de compromiso, sistemas adicionales de interés, hipótesis confirmadas o descartadas, cambios en la valoración del impacto y decisiones derivadas para contención, erradicación y recuperación.

### Ejemplo de indicadores útiles

- Autenticaciones anómalas en correo, cloud, CRM/ERP, VPN y paneles administrativos.

- Creación de cuentas, elevación de privilegios y cambios no autorizados en credenciales.

- Reglas de reenvío y actividad sospechosa en buzones.

- Binarios no firmados con conexiones externas.

- PowerShell codificado, scripts descargados y ejecución desde rutas temporales.

- Compresión, cifrado o modificación masiva de archivos compartidos.

- Balizamiento, exfiltración y conexiones a IPs o dominios no habituales.

- Cambios en DNS, rutas, pasarelas o configuraciones de red.

- Alteraciones no autorizadas en web, tienda online o servicios cloud.

## Iterar la investigación

[Actualizar el plan de investigación](#actualizar-el-plan-de-investigación-y-el-archivo-del-incidente) y repetir hasta el cierre.

# Remediar

**[Investigar](#investigar), [Remediar](#remediar) y [Comunicar](#comunicar) en paralelo, utilizando equipos separados, si es posible.** El Incident Commander coordinará estas actividades. Notifique al Incident Commander si hay pasos que el equipo debe considerar

## Actualización del plan de remediación

1. Revise el archivo del incidente en {{INCIDENT_FILE_LOCATION}} utilizando el [nombre del incidente](#nombre-del-incidente)
2. Revise los [playbook](#playbooks) aplicables.
3. Revise la [lista de recursos de respuesta](#referencia-lista-de-recursos-de-respuesta).
4. Considere qué tácticas del atacante están en juego en este incidente.  Utilice la lista de MITRE [ATT&CK](https://attack.mitre.org/wiki/Main_Page) (_i._, Persistencia, Escalada de Privilegios, Evasión de la Defensa, Acceso a Credenciales, Descubrimiento, Movimiento Lateral, Ejecución, Recolección, Exfiltración y Mando y Control), o un marco similar.
5. Desarrollar remedios para cada táctica en juego, en la medida en que sea factible teniendo en cuenta las herramientas y los recursos existentes.  Considere remedios para [Proteger](#protección), [Detectar](#detección), [Contener](#contención), y [Erradicar](#erradicar) cada comportamiento del atacante.
6. Priorizar en base a la [estrategia de tiempo](#choose-remediation-timing), el impacto y la urgencia.
7. Documentar en el archivo de incidentes.

Utilice [marcos de seguridad de la información (infosec)](https://www.nist.gov/cyberframework) como inspiración, pero **no utilice la reparación de incidentes como sustituto de un programa de infosec con un marco apropiado.** Utilícelos para complementarse.

### Protección

> "¿Cómo podemos evitar que la táctica X se repita o reducir el riesgo?  ¿Cómo podemos mejorar la protección futura?"

Utilice lo siguiente como punto de partida para la corrección de la protección:

* Parchear las aplicaciones.
* Parchee los sistemas operativos.
* Actualice las firmas de IPS de la red y del host.
* Actualizar las firmas de protección de puntos finales/EDR/antivirus.
* Reducir las ubicaciones con datos críticos.
* Reducir las cuentas administrativas o privilegiadas.
* Habilitar la autenticación multifactor.
* Reforzar los requisitos de las contraseñas.
* Bloquear los puertos y protocolos no utilizados en los límites del segmento y de la red, tanto entrantes como salientes.
* Poner en lista blanca las conexiones de red para los servidores y servicios críticos.

### Detección

> "¿Cómo podemos detectar esto en los nuevos sistemas o en el futuro?  ¿Cómo podemos mejorar la detección y la investigación en el futuro?"

Utilice lo siguiente como punto de partida para la corrección de detecciones:

* Mejorar el registro y la retención de los registros del sistema, en particular de los sistemas críticos.
* Mejorar el registro de las aplicaciones, incluidas las aplicaciones SaaS.
* Mejorar la agregación de registros.
* Actualizar las firmas de IDS de la red y del host utilizando IOC.

### Contención

> "¿Cómo podemos evitar que esto se extienda o se agrave? ¿Cómo podemos mejorar la contención en el futuro?"

Utilice lo siguiente como punto de partida para la corrección de la contención:

* Implementar listas de acceso (ACL) en los límites de los segmentos de la red.
* Implementar bloqueos en el límite de la empresa, en múltiples capas del [modelo OSI](https://en.wikipedia.org/wiki/OSI_model).
* Desactivar o eliminar el acceso de las cuentas comprometidas.
* Bloquear direcciones IP o redes maliciosas.
* Bloquee los dominios maliciosos.
* Actualizar las firmas de IPS y antimalware de la red y el host mediante COI.
* Retirar de la red los sistemas críticos o comprometidos.
* Póngase en contacto con los proveedores para obtener ayuda (por ejemplo, proveedores de servicios de Internet, proveedores de SaaS).
* Poner en lista blanca las conexiones de red para los servidores y servicios críticos.
* Matar o deshabilitar procesos o servicios.
* Bloquear o eliminar el acceso de proveedores y socios externos, especialmente el acceso privilegiado.

### Erradicar

> "¿Cómo podemos eliminar esto de nuestros activos?  ¿Cómo podemos mejorar la erradicación en el futuro?"

Utilice lo siguiente como punto de partida para la remediación de la erradicación:

* Reconstruir o restaurar los sistemas y datos comprometidos a partir de un estado bueno conocido.
* Restablecer las contraseñas de las cuentas.
* Eliminar cuentas o credenciales hostiles.
* Borrar o eliminar malware específico (¡difícil!).
* Implementar proveedores alternativos.
* Activar y migrar a ubicaciones, servicios o servidores alternativos.

## Elegir el momento de la reparación

Determine la estrategia de plazos -cuando se llevarán a cabo las acciones de remediación- involucrando al Incident Commander, a los SME y propietarios del sistema, a los SMEs y propietarios de la unidad de negocio, y al equipo ejecutivo.  Cada estrategia es apropiada en diferentes circunstancias:

* Elija la reparación **inmediata** cuando sea más importante detener inmediatamente las actividades del atacante que seguir investigando.  Por ejemplo, una pérdida financiera en curso, o un fracaso de la misión en curso, una pérdida de datos activa, o la prevención de una amenaza significativa inminente.
* Elija una reparación **retrasada** cuando sea importante completar la investigación o no alertar al atacante.  Por ejemplo, el compromiso a largo plazo de un atacante avanzado, el espionaje corporativo o el compromiso a gran escala de un número desconocido de sistemas.
* Elija la remediación **combinada** cuando las circunstancias inmediatas y retardadas se apliquen en el mismo incidente.  Por ejemplo, la segmentación inmediata de un servidor o red sensible para cumplir con los requisitos reglamentarios mientras se investiga un compromiso a largo plazo.

## Ejecutar la remediación

- Evaluar y explicar previamente a las partes interesadas los riesgos, beneficios y posibles efectos adversos de cada acción de remediación antes de su ejecución.

- Implantar de forma inmediata aquellas medidas de bajo impacto y alta utilidad defensiva que no comprometan significativamente la investigación, como refuerzo del registro, incremento de monitorización, endurecimiento de reglas de detección, actualización de firmas del antivirus o bloqueo de indicadores ya validados.

- Programar y asignar las acciones de remediación conforme a la estrategia temporal elegida, identificando responsable, activo afectado, momento de ejecución, dependencias y plan de reversión si fuera necesario.

- Ejecutar las medidas correctivas en bloques coordinados cuando la eficacia operativa y la reducción del riesgo así lo aconsejen, por ejemplo reseteo conjunto de credenciales, revocación masiva de sesiones, despliegue simultáneo de IOCs o aislamiento coordinado de varios equipos.

- Documentar en el expediente del incidente el estado de cada acción, la fecha y hora de inicio y fin, el responsable que la ejecuta, el resultado observado, el impacto sobre el servicio y si la medida es temporal o definitiva.

## Procedimiento de aprobación de riesgos

- Las medidas de bajo impacto podrán ser aprobadas por TIC/seguridad.

- Las medidas de impacto medio requerirán validación del Incident Commander y del responsable del sistema afectado.

- Las medidas de alto impacto requerirán aprobación conjunta de Incident Commander, responsable de seguridad, dirección y legal/compliance cuando proceda.

- Toda aprobación deberá quedar registrada en el expediente del incidente junto con su justificación, riesgos aceptados y resultado esperado.


## Iterar la remediación

[Actualizar el plan de remediación](#actualización-del-plan-de-remediación) y repetir hasta el cierre.

# Comunicar

* [Investigar](#investigar), [Remediar](#remediar) y [Comunicar](#comunicar) en paralelo, utilizando equipos separados, si es posible.  Notifique al Incident Commander si hay pasos que el equipo debe considerar

Toda comunicación debe incluir la información más precisa disponible.  Muestre integridad.  No comunicar especulaciones.

## Comunicación Interna

### Notificar y actualizar a las partes interesadas

* Comunicarse con las partes interesadas como parte de las llamadas iniciales y de actualización, así como a través de actualizaciones basadas en eventos en la llamada y el chat.
* Coordinar las actualizaciones independientes (_e._, ejecutivas, legales) según sea necesario, pero con la menor frecuencia posible, para mantener el foco en la investigación y la reparación.
* Concéntrese en la mejor evaluación del vector, el impacto, el resumen y los aspectos más destacados de la línea de tiempo, incluidos los pasos de remediación.  No especule.

### Notificar y actualizar la organización

* **No** notifique o actualice al personal que no responde hasta que el Incident Commander lo autorice, en particular si existe el riesgo de una amenaza interna.
* Coordine las actualizaciones de los equipos o de toda la organización con los ejecutivos y la dirección de la empresa.
* Concéntrese en la mejor evaluación del vector, el impacto, el resumen y los aspectos más destacados de la línea de tiempo, incluidos los pasos de remediación.  No especule.

### Crear Informe de Incidentes

* Tras el cierre del incidente, capture la información en el [archivo del incidente](#crear-archivo-del-incidente) para su distribución utilizando el formato en {{INCIDENT_REPORT_TEMPLATE}}.  **Si los informes de vector, impacto, resumen, línea de tiempo y actividad están completos, esto puede ser totalmente automatizado.**
* Distribuir el informe de incidentes a lo siguiente: {{INCIDENT_REPORT_RECIPIENTS}}.

## Procedimiento de creación y distribución del informe

1. El Incident Commander o el responsable designado a tal fin validará que el expediente del incidente está completo y contiene cronología, impacto, evidencias, acciones ejecutadas y estado final.

2. El responsable de seguridad, con el apoyo de TIC y de las áreas afectadas, redactará el informe final utilizando la plantilla corporativa de incidentes.

3. El área legal o de cumplimiento revisará el informe cuando exista afectación a datos personales, obligaciones contractuales, riesgo reputacional o posible comunicación externa.

4. La dirección revisará y aprobará el informe en incidentes de criticidad alta o con impacto relevante sobre el negocio.

5. El informe aprobado se distribuirá únicamente a los destinatarios autorizados y se archivará en el repositorio seguro del expediente del incidente.

6. Las lecciones aprendidas y acciones de mejora derivadas del informe deberán trasladarse al plan de respuesta, al plan director de seguridad y, cuando corresponda, a los procedimientos de copias, accesos, formación, monitorización y gestión de terceros.

## Comunicar al exterior

### Notificar a los reguladores

* **No** notifique ni ponga al día al personal que no ha respondido hasta que el Incident Commander lo autorice.
* Notificar a los organismos reguladores (por ejemplo, HIPAA/HITRUST, PCI DSS, SOX) si es necesario y de acuerdo con la política.
* Coordinar los requisitos, el formato y los plazos con el {{COMPLIANCE_TEAM}}.

### Notificar a los clientes

* **No** notifique o actualice al personal que no responde hasta que el Incident Commander lo autorice.
* Coordine las notificaciones a los clientes con {{COMMUNICATIONS_TEAM}}.
* Incluya la fecha en el título de cualquier anuncio, para evitar confusiones.
* No utilice tópicos como "nos tomamos la seguridad muy en serio". Céntrese en los hechos.
* Sea honesto, acepte la responsabilidad y presente los hechos, junto con el plan para prevenir incidentes similares en el futuro.
* Sea lo más detallado posible con la línea de tiempo.
* Sea lo más detallado posible en cuanto a la información que se vio comprometida y cómo afecta a los clientes. Si estábamos almacenando algo que no debíamos, sé honesto al respecto. Saldrá a la luz más tarde y será mucho peor.
* No hablemos de las partes externas que podrían haber causado el problema, a menos que ya lo hayan hecho público, en cuyo caso enlazaremos con su información. Comunícate con ellos de forma independiente (ver [Notificar a los proveedores](#notificar-a-los-proveedores-y-socios))
* Publique la comunicación externa lo antes posible. Las malas noticias no mejoran con el tiempo.
* Si es posible, contacte con los equipos de seguridad internos de los clientes antes de notificar al público.

### Notificar a los proveedores y socios

* **No** notifique o actualice al personal que no responde hasta que el Incident Commander lo autorice.
* Si es posible, póngase en contacto con los equipos de seguridad internos de los proveedores y socios antes de notificar al público.
* Céntrese en los aspectos específicos del incidente que afectan o implican al proveedor o socio.
* Coordine los esfuerzos de respuesta y comparta la información si es posible.

### Notificar a las Fuerzas de Seguridad

* **No** notifique o actualice al personal que no responde hasta que el Incident Commander lo autorice.
* Coordinar con {{EXECUTIVE_TEAM}} y {{LEGAL_TEAM}} antes de interactuar con las fuerzas del orden.
* Póngase en contacto con las fuerzas del orden locales en {{LOCAL_LE_CONTACT}}.
* Póngase en contacto con el FBI en {{FBI_CONTACT}} o a través del [Internet Crime Complaint Center (IC3)](https://www.ic3.gov).
* Póngase en contacto con los operadores de los sistemas utilizados en el ataque, sus sistemas también pueden haber sido comprometidos.

### Contactar con el servicio de asistencia de respuesta externa

* Póngase en contacto con {{INCIDENT_RESPONSE_VENDOR}} para que le ayude a evaluar el riesgo, la gestión de incidentes, la respuesta a los mismos y el apoyo posterior al incidente.
* Póngase en contacto con {{PUBLIC_RELATIONS_VENDOR}} para que le ayude con las relaciones públicas y la comunicación externa.
* Póngase en contacto con {{INSURANCE_VENDOR}} para obtener ayuda con el seguro cibernético.

### Compartir Inteligencia

* Comparta los IOCs con [Infragard](https://www.infragard.org/) si procede.
* Comparta los IOCs con su [ISAC](https://en.wikipedia.org/wiki/Information_Sharing_and_Analysis_Center) de servicio a través de {{ISAC_CONTACT}}, si procede.

# Recuperación

La recuperación se realizará de forma coordinada entre Incident Commander, responsable de seguridad, TIC, propietarios de sistemas y responsables de negocio. Se priorizará la restauración segura de correo, servidor de archivos, aplicaciones internas, CRM/ERP, conectividad entre sedes, web/tienda online y servicios cloud, teniendo en cuenta su impacto sobre la operativa, los clientes y los datos personales. 

Antes de restaurar cualquier servicio, deberá confirmarse que la contención y la erradicación han sido efectivas, que las credenciales afectadas han sido renovadas, que los sistemas están parcheados y que las copias de seguridad o estados de referencia son íntegros y confiables. La restauración se hará de forma escalonada, con validación técnica y funcional de cada servicio, monitorización reforzada posterior y documentación completa en el expediente del incidente. 

Este enfoque permite que la recuperación sea ciberresiliente, ya que prioriza la continuidad de los servicios esenciales, la restauración controlada, la verificación de integridad y la detección temprana de reinfección antes del retorno completo a operación.

## Pasos de recuperación

1. Confirmar contención y erradicación que sean razonables.

2. Priorizar los servicios a restaurar según el impacto del negocio.

3. Revisar las credenciales, privilegios y los accesos remotos.

4. Verificar parches, el endurecimiento básico y el estado del sistema.

5. Validar copias o los estados de restauración.

6. Restaurar los servicios y datos de forma escalonada.

7. Comprobar el funcionamiento técnico y funcional.

8. Mantener una monitorización reforzada.

9. Coordinar la recuperación con los proveedores externos.

10. Documentar acciones, tiempos y resultados.

11. Declarar el retorno a operación de forma controlada.

12. Incorporar lecciones aprendidas y las mejoras posteriores.

## Herramientas y procedimientos

- Consolas de administración de servidores, correo, cloud y red.

- Procedimientos y herramientas de backup gestionados por TIC.

- Consola del antivirus o EDR disponible.

- Soporte del proveedor web/hosting y servicios cloud.

- Repositorio seguro del expediente del incidente.

**La recuperación suele estar dirigida por las unidades de negocio y los propietarios de los sistemas.  Tome medidas de recuperación sólo en colaboración con las partes interesadas pertinentes.**

1. Poner en marcha un plan de continuidad de negocio/recuperación de desastres: Por ejemplo, considerar la migración a ubicaciones operativas alternativas, sitios de conmutación por error, sistemas de copia de seguridad.
2. Integrar las acciones de seguridad con los esfuerzos de recuperación de la organización.
