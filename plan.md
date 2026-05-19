# Plan de respuesta a incidentes para Consultoría Digital PYMES S.L.

Autor: Nerea Candón Ramos,Adrián Sánchez,Inca Vico y Asier González, Kiwiincidentes@kiwiincidentes.es

Revisión 1, Publicado 14 May 2026

Fue revisado por última vez el 14 May 2027. Fue probado por última vez en 14 Nov 2026.

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

El incidente deberá nombrarse mediante una estructura simple y fácilmente identificable:

**[TIPO]-[FECHA]-[PALABRA_CLAVE]**

Ejemplos:

* PHISHING-2026-CORREO
* RANSOMWARE-2026-FACTURACION
* CLOUD-2026-EXFILTRACION

El nombre será utilizado para el expediente del incidente, canales de comunicación y almacenamiento de evidencias.

## Reunir el equipo de respuesta

1. Llame al Incident Commander de turno/de guardia.
2. **No** discuta el incidente fuera del equipo de respuesta a menos que el Incident Commander lo autorice
3. Inicie y/o únase al chat de respuesta en https://chat.kiwiincidentes.es/incident-response. 
4. Iniciar y/o unirse a la llamada de respuesta en 900-123-456 y/o https://meet.kiwiincidentes.es/incident. 
5. Preferible usar la llamada de voz, el chat y el intercambio seguro de archivos sobre cualquier otro método.
6. **No** utilizar el correo electrónico principal si es posible.  Si el correo electrónico es necesario, utilícelo con moderación o use incidentes@kiwiincidentes.es.  Encripte los correos electrónicos cuando cualquier participante esté fuera del dominio kiwiincidentes.es.  
7. **No** usar SMS/texto para comunicar el incidente, a menos que sea para decirle a alguien que se mueva a un canal más seguro.
8. Invite al personal de turno/guardia a la llamada y al chat de respuesta.
    * Invite al equipo de seguridad.  
    * Invitar al SME de los equipos y sistemas afectados. 
    * Invitar a las partes interesadas ejecutivas y a los asesores jurídicos lo antes posible, pero dar prioridad a los responsables operativos.  
9. Para incidentes graves podrá habilitarse una sala de coordinación física en la sede principal.

### Referencia: Estructura del equipo de respuesta

* Equipo de Mando
  * [Incident Commander](roles/role-1-commander.md)
  * [Incident Commander - Adjunto](roles/role-2-deputy.md)
  * [Escriba](roles/role-3-scribe.md)
* Equipo de enlace
  * [Enlace interno](roles/role-5-liaison.md)
  * Enlace externo
* Equipo de operaciones
  * [Expertos en la materia (SME)](roles/role-4-expert.md)
  * SME para equipos/unidades de negocio
  * SME para Funciones Ejecutivas (_por ejemplo_, Legal, RRHH, Finanzas)


### Referencia: Información de contacto del equipo de respuesta

Rol del equipo de respuesta         | Información de contacto
----------------------------------- | ---------------------------
Localizador del Incident Commander  | 555-IC-150
Url del Incident Commander          | https://ir.kiwiincidentes.es/ic-page
Lista del Incident Commander        | https://ir.kiwiincidentes.es/ic-roster
Lista del equipo de seguridad       | https://ir.kiwiincidentes.es/security-roster
Lista del equipo SME                | https://ir.kiwiincidentes.es/sme-roster
Lista de ejecutivos                 | https://ir.kiwiincidentes.es/executives


## Establecer el ritmo de batalla

### Realizar la primera llamada de respuesta

1. Realice la llamada inicial utilizando la [estructura de llamada de respuesta inicial](#referencia-estructura-de-la-llamada-de-respuesta-inicial)
2. Siga las instrucciones del Incident Commander.  Si el Incident Commander de turno/de guardia no se une a la llamada **dentro de 15 minutos** y usted es un Incident Commander capacitado, tome el mando de la llamada.
3. Siga las [instrucciones correspondientes a su función](#roles).
4. Siga la llamada y el chat, y comente según corresponda.  Si no es un SME, comunique las aportaciones a través del SME de su equipo si es posible.
5. **Mantenga la llamada y el chat activos durante todo el incidente para una comunicación basada en eventos.**
6. Programe actualizaciones **cada 2 horas** sobre la comunicación activa.

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

* Llevar a cabo actualizaciones programadas utilizando la [estructura de llamada de actualización](#referencia-estructura-de-la-llamada-de-actualización-de-la-respuesta) cada 2 horas en el puente activo.
* Ajustar la frecuencia según sea necesario.
* Coordinar las actualizaciones independientes (_por ejemplo_, ejecutivas, legales) según sea necesario, pero con la menor frecuencia posible.

#### Referencia: Estructura de la llamada de actualización de la respuesta

* Incident Commander (IC): Desde la última actualización programada, el resumen del incidente es el siguiente:
  * Estado actual del incidente. 
  * [Impacto]
  * [Vector]
  * Sistemas afectados.
  * Cambios relevantes desde la última actualización.
  * [Actualización del resumen]
  * [Actualización de la línea de tiempo]
* IC: Equipo de investigación, por favor proporcione una breve actualización
  * LÍDER DE LA INVESTIGACIÓN: [Actividades de investigación realizadas o "nada que informar"]
  * ¿Cuál es su plan de investigación recomendado?
  * ¿Qué acciones de investigación necesitan ser asignadas o aprobadas?  [escuchar, obtener consenso, encargar/aprobar]
* IC: Equipo de remediación, por favor proporcione una breve actualización
  * Líder de remediación: [Acciones de remediación aplicadas o "nada que informar"]
  * ¿Cuál es su estrategia de corrección recomendada?  ¿Objeciones fuertes? [escuchar, obtener el consenso, asignar/aprobar]
  * ¿Qué acciones de corrección necesitan ser asignadas o aprobadas?
* IC: Equipo de comunicación, por favor, proporcione una breve actualización:
  * COMMUNICATIONS LEAD: [Actividades de comunicación realizadas o "nada que informar"]
  * ¿Cuál es su estrategia de comunicación recomendada?  ¿Objeciones fuertes? [escuchar, obtener consenso, encargar/aprobar]
  * ¿Qué acciones de comunicación necesitan ser asignadas o aprobadas?
* IC: Por último hablaremos de
  * Riesgos pendientes.
  * Próximas acciones y responsables.
* IC: Esta llamada y el chat permanecerán activos y disponibles hasta el cierre del incidente, por favor, utilícelos para todas las comunicaciones relacionadas con el incidente.  Si es posible, proporcione actualizaciones del estado en tiempo real en el chat.  ¿Hay alguna pregunta o aportación restante? [responde a las preguntas]
* IC: Líderes de equipo, por favor procedan.  Nos reuniremos de nuevo en [Próxima actualización cada 2 horas desde la activación del incidente] para discutir el estado. Gracias.

## Supervisar el alcance

* El Incident Commander deberá supervisar continuamente el alcance del incidente.
* Si el incidente crece o afecta múltiples áreas, podrán crearse subequipos especializados.
* Se priorizarán los activos críticos relacionados con:
  * Correo corporativo.
  * CRM y ERP.
  * Almacenamiento cloud.
  * Página web y tienda online.
  * Infraestructura de red.

### Crear Sub-Equipos

* Los subequipos definidos inicialmente serán:
  * Investigación.
  * Remediación.
  * Comunicación.
* Cada subequipo tendrá un líder responsable de coordinar acciones y reportar al Incident Commander.
* El Incident Commander designará a los líderes de los equipos, que dependen del IC, y a los miembros de los equipos, que dependen de su líder.  _Los líderes de equipo no tienen que estar formados como Incident Commanders, pero es preferible que tengan alguna experiencia de liderazgo._
* El Incident Commander puede ajustar el propósito o el nombre de los subequipos según sea necesario.

### Incidente dividido

Si un incidente resulta ser dos o más incidentes distintos:

* Establezca un [archivo de incidentes](#crear-el-archivo-del-incidente) independiente para cada incidente.
* Haga un seguimiento y coordine la investigación, la reparación y la comunicación en el archivo correspondiente.
* Considere la posibilidad de establecer subequipos para cada incidente.
* Se coordinarán recursos comunes desde el equipo de mando.
* **Mantener un Incident Commander de alto nivel** como coordinación global.

# Investigar

**[Investigar](#investigar), [Remediar](#remediar) y [comunicar](#communicate) en paralelo, utilizando equipos separados, si es posible.** El Incident Commander coordinará estas actividades.  Notifique al Incident Commander si hay pasos que el equipo debe considerar.

## Crear el archivo del incidente

1. Cree un nuevo archivo de incidentes en https://ir.kiwiincidentes.es/incidents utilizando el [nombre del incidente](#nombre-del-incidente).  Utilice este archivo para el almacenamiento seguro de documentación, pruebas, artefactos, _etc._.
    * Proporcionar un almacenamiento digital seguro.
    * Proporcionar un intercambio de archivos seguro.
    * Obtener almacenamiento físico.
    * Compartir la ubicación del archivo del incidente en la llamada y el chat.
    * El acceso estará restringido al personal autorizado.
    * Las evidencias físicas se custodiarán en la sede principal al finalizar el incidente.
1. Documente el impacto funcional y de la información, si se conoce (véase [Evaluar](#evaluar)). 
2. Documentar el vector, si se conoce (_por ejemplo_ web, correo electrónico, medios extraíbles). 
3. Documente el resumen del incidente: un breve resumen del vector, el impacto, la investigación y la situación de la reparación, si se conoce.
4. Documente la línea de tiempo del incidente, incluyendo la actividad del atacante y la actividad de la respuesta. 
5. Documente los pasos de investigación, reparación y comunicación.  Documente las actividades de forma independiente para que puedan combinarse y reutilizarse, si es posible.
6. Registre la información significativa, como:
    **Evidencias**, con la hora de recogida, la fuente, la cadena de custodia, _etc._.
    * **Sistemas afectados**, con el modo y el momento en que se identificó el sistema, y el resumen del efecto (_por ejemplo, tiene malware, datos a los que se ha accedido).
    * **Archivos de interés**, como el malware o los archivos de datos, con el sistema y los metadatos.
    * **Datos accedidos y tomados**, con nombres de archivos, metadatos y hora de presunta exposición.
    * **Actividad significativa del atacante**, como inicios de sesión y ejecución de malware, con la hora del evento.
    * **Indicadores de compromiso (IOC)** basados en la red, como direcciones IP y dominios.
    * **Indicadores de compromiso basados en el host**, como nombres de archivos, hashes y claves de registro.
    * **Cuentas comprometidas**, con el alcance del acceso y la hora del compromiso.

### Procedimiento de documentación del incidente

La documentación del incidente se realizará mediante:

* Expediente digital seguro almacenado en servidor interno.
* Hojas de seguimiento compartidas únicamente con el equipo autorizado.
* Registro cronológico de acciones realizadas.
* Almacenamiento estructurado de evidencias.
* Registro de cadena de custodia cuando proceda.

## Recoger las pistas iniciales

1. Entrevistar a los reportadores del incidente y usuarios afectados.
2. Recoger los datos de apoyo iniciales (_e._, alarmas, eventos, datos, suposiciones, intuiciones, logs, correos sospechosos) en el archivo del incidente.
3. Consultar al personal TIC y responsables de sistemas con experiencia en el dominio o el sistema, para comprender los detalles técnicos, el contexto y el riesgo.
4. Validar el impacto operativo con los departamentos afectados, para comprender el impacto el negocio, el contexto y el riesgo.
5. Asegúrese de que las pistas son relevantes, detalladas y procesables.

### Referencia: Lista de recursos de respuesta

Recurso                             | Ubicación
----------------------------------- | ------------------------------------
Lista de información crítica        | https://ir.kiwiincidentes.es/cil
Lista de activos críticos           | https://ir.kiwiincidentes.es/cal
Base de datos de gestión de activos | https://ir.kiwiincidentes.es/assets
Mapa de red                         | https://ir.kiwiincidentes.es/netmap
Consola SIEM                        | https://siem.kiwiincidentes.es
Agregador de registros              | https://logs.kiwiincidentes.es


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
7. **Identificar y priorizar los dispositivos y estrategias testigo** para responder a las preguntas clave.
    * Consultar los diagramas de la red, los sistemas de gestión de activos y la experiencia de las SME
    * Consultar la [Lista de recursos de respuesta](#referencia-lista-de-recursos-de-respuesta)
8. Consulte los [playbook de incidentes](#playbooks) para conocer las preguntas clave, los dispositivos testigos y las estrategias para investigar las amenazas comunes o muy dañinas.

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

1. Revise el archivo del incidente en https://ir.kiwiincidentes.es/incidents utilizando el [nombre del incidente](#nombre-del-incidente)
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

* Tras el cierre del incidente, capture la información en el [archivo del incidente](#crear-archivo-del-incidente) para su distribución utilizando el formato en https://ir.kiwiincidentes.es/report/template.  **Si los informes de vector, impacto, resumen, línea de tiempo y actividad están completos, esto puede ser totalmente automatizado.**
* Distribuir el informe de incidentes a lo siguiente: https://ir.kiwiincidentes.es/report/recipients.

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
* Coordinar los requisitos, el formato y los plazos con el Departamento Legal y RGPD (legal@kiwiincidentes.es).

### Notificar a los clientes

* **No** notifique o actualice al personal que no responde hasta que el Incident Commander lo autorice.
* Coordine las notificaciones a los clientes con Departamento de Comunicación y RRSS (comunicacion@kiwiincidentes.es).
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
* Coordinar con Consejo de Administración (direccion@kiwiincidentes.es) y Departamento Legal (legal@kiwiincidentes.es) antes de interactuar con las fuerzas del orden.
* Póngase en contacto con las fuerzas del orden locales en Policía Nacional - Unidad de Ciberdelincuencia (091).
* Póngase en contacto con el INCIBE en INCIBE 017 (España) o a través del [Internet Crime Complaint Center (IC3)](https://www.ic3.gov).
* Póngase en contacto con los operadores de los sistemas utilizados en el ataque, sus sistemas también pueden haber sido comprometidos.

### Contactar con el servicio de asistencia de respuesta externa

* Póngase en contacto con Proveedor MSSP de ciberseguridad gestionada para que le ayude a evaluar el riesgo, la gestión de incidentes, la respuesta a los mismos y el apoyo posterior al incidente.
* Póngase en contacto con Agencia de comunicación corporativa externa para que le ayude con las relaciones públicas y la comunicación externa.
* Póngase en contacto con Seguro de ciberseguridad corporativo para obtener ayuda con el seguro cibernético.

### Compartir Inteligencia

* Comparta los IOCs con [Infragard](https://www.infragard.org/) si procede.
* Comparta los IOCs con su [ISAC](https://en.wikipedia.org/wiki/Information_Sharing_and_Analysis_Center) de servicio a través de INCIBE-CERT https://www.incibe.es, si procede.

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
# Playbooks

Los siguientes playbooks recogen los pasos de investigación, remediación, comunicación y recuperación para los incidentes que se consideran más probables o más perjudiciales para la empresa del caso.

La selección se ha realizado teniendo en cuenta:

* El tipo de actividad de la empresa, centrada en la asesoría a autónomos y pymes;
* El tratamiento de datos personales, documentación interna sensible e información financiera y laboral;
* La dependencia de servicios cloud y de proveedores externos;
* La existencia de página web y tienda online alojadas en un tercero;
* La madurez de seguridad básica descrita en el escenario;
* Los incidentes que, por impacto operativo, reputacional, legal o económico, requieren una respuesta estructurada.

## Playbooks incluidos

1. [Playbook: Phishing](./playbook-phishing.md)
   Incidente especialmente probable por el uso intensivo del correo electrónico, la interacción con clientes y proveedores, y la madurez básica del entorno.

2. [Playbook: Ransomware](./playbook-ransomware.md)
   Incidente de alto impacto por la posible afectación a puestos, carpetas compartidas, datos de clientes, continuidad de negocio y copias de seguridad.

3. [Playbook: Compromiso de identidad y acceso](./playbook-identity-and-access.md)
   Relevante por el uso de servicios corporativos, correo, nube y posibles accesos remotos o privilegios indebidos.

4. [Playbook: Compromiso de la cadena de suministro](./playbook-supply-chain.md)
   Necesario por la dependencia de terceros como el proveedor de hosting, la subcontrata del antivirus, servicios cloud y consultoría externa.

5. [Playbook: Desaparición de sitios web](./playbook-defacement.md)
   Importante por la exposición pública de la web y la tienda online, y por el impacto reputacional directo ante clientes.

6. [Playbook: Ataque DDoS](./playbook-ddos.md)
   Relevante por el riesgo de indisponibilidad de la web, tienda online y servicios expuestos a Internet.

7. [Playbook: Fuga de datos / Exfiltración de información](./playbook-fuga-de-datos.md)
   Necesario por el tratamiento de datos personales, documentación contractual y otra información sensible.

8. [Playbook: Explotación de aplicación expuesta a Internet](./playbook-explotacion-aplicacion-publica.md)
   Justificado por la existencia de servicios web públicos y por el riesgo de explotación de vulnerabilidades en aplicaciones accesibles desde Internet.

## Observaciones

Estos playbooks no sustituyen al plan general de respuesta a incidentes, sino que lo desarrollan para escenarios concretos. Su objetivo es facilitar una respuesta más rápida, homogénea y coordinada ante los incidentes más relevantes para la empresa analizada.


## Playbook: Ataque DDoS

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Finalidad y activación

Este playbook define la respuesta específica ante ataques de denegación de servicio distribuida que afecten a la disponibilidad de servicios expuestos a Internet. Su finalidad es mantener operativos los servicios esenciales, coordinar la mitigación con proveedores y recuperar la normalidad con rapidez y control.

Se activará ante cualquiera de estas señales:

1. Caída o degradación anómala de la web, tienda online u otros servicios públicos;
2. Incremento sostenido y no justificado de tráfico o conexiones concurrentes;
3. Alertas del proveedor de hosting, CDN, firewall o herramientas de monitorización sobre saturación o abuso;
4. Amenaza de extorsión acompañada de indisponibilidad o picos de tráfico.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* Responsable del incidente o responsable de seguridad, para coordinar la respuesta;
* Equipo TIC, para análisis de disponibilidad, filtrado y priorización de servicios;
* Proveedor de hosting, ISP o mitigación DDoS, por la necesidad de respuesta externa;
* Help desk, para centralizar incidencias y estado del servicio;
* Responsables de negocio y Comunicación, si la web o la tienda online se ven afectadas.

### Investigar

1. **Confirmar que se trata de un ataque DDoS** y no de una avería técnica o un pico legítimo de tráfico.
    * Revisar alertas de monitorización, firewall, router, WAF, IDS/IPS y servicios del proveedor externo de la web o tienda online.
    * Comprobar si los usuarios reportan lentitud, errores de acceso, caída de la web, indisponibilidad de la tienda o problemas de acceso a servicios expuestos.
    * Verificar si hay aumento anómalo y sostenido de tráfico, conexiones concurrentes inusuales o saturación de ancho de banda.
2. **Determinar el tipo y alcance del ataque.**
    * Identificar si se trata de un ataque volumétrico, de agotamiento de recursos o de capa de aplicación.
    * Identificar qué servicios están siendo afectados: web corporativa, tienda online, VPN, correo, DNS u otros servicios públicos.
    * Revisar si el tráfico malicioso se distribuye entre múltiples IP, países, ASN o redes.
    * Comprobar si el ataque viene acompañado de amenazas de extorsión o distrae de otra intrusión paralela.
3. **Recopilar y preservar evidencias.**
    * Logs de firewall, WAF, balanceadores, router y proveedor de hosting.
    * Métricas de tráfico, capturas de red si están disponibles y cronología de alertas.
    * Hora de inicio, evolución de la intensidad, sistemas afectados y contramedidas aplicadas.
4. **Evaluar el impacto.**
    * Afectación a la disponibilidad de la web y la tienda online.
    * Impacto en captación de clientes, atención comercial y reputación.
    * Riesgo de interrupción en campañas, formularios de contacto o procesos de compra.
    * Criterio orientativo de severidad:
        * **media**, si hay degradación limitada y breve;
        * **alta**, si la web o la tienda online quedan inestables o parcialmente inaccesibles;
        * **crítica**, si existe caída prolongada, extorsión o afectación simultánea de varios servicios públicos.
5. **Formular preguntas clave.**
    * Cuándo empezó el ataque y cuánto dura.
    * Si existe un patrón repetitivo por franjas horarias o recursos concretos.
    * Si el ataque coincide con eventos de negocio relevantes o comunicaciones extorsivas.
    * Si el DDoS está ocultando intentos de explotación, intrusión o fraude.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se ejecuten juntos, o de forma coordinada, con los equipos adecuados preparados para responder a cualquier interrupción.
* **Considerar el momento y las compensaciones** de las acciones de remediación: algunas medidas pueden afectar temporalmente a usuarios legítimos.

#### Contención

* Activar o escalar la protección anti-DDoS del proveedor de hosting, CDN o servicio cloud, si está contratada o disponible.
* Aplicar reglas de firewall, WAF, reverse proxy o balanceador, si existen estos controles en el entorno, para filtrar, limitar o bloquear tráfico malicioso.
* Aplicar rate limiting, geoblocking o bloqueo por firmas cuando el patrón del ataque lo permita.
* Priorizar los servicios esenciales y desactivar temporalmente funcionalidades no críticas si es necesario.
* Coordinar con el ISP o proveedor externo para mitigación upstream cuando el volumen del ataque supere la capacidad local.
* Incrementar la monitorización sobre:
    * Disponibilidad web;
    * Consumo de ancho de banda;
    * Errores HTTP;
    * Uso de CPU y memoria en los servicios públicos.
* Comprobar si otros servicios expuestos están recibiendo tráfico anómalo relacionado.

#### Erradicar

* Revisar y retirar progresivamente las reglas temporales una vez mitigado el ataque y validada la estabilidad.
* Comprobar que no se hayan alterado configuraciones de red, WAF, CDN o balanceadores durante la crisis.
* Analizar si hubo intentos paralelos de explotación de la web, la tienda o los accesos remotos mientras se producía el DDoS.
* Endurecer los servicios públicos afectados:
    * Límites de conexión;
    * Caché y CDN;
    * Protección de formularios;
    * Endurecimiento del WAF y del proxy.
* Documentar indicadores útiles para futuras mitigaciones automáticas.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, proveedor de hosting o web, proveedor de Internet y responsables de negocio afectados.
* Técnicos: consola del firewall, panel del proveedor, CDN/WAF, métricas de tráfico, sistema de tickets y herramientas de monitorización.
* Logísticos: canales urgentes con proveedor externo, procedimiento de comunicación interna y mensajes preparados para clientes.
* Financieros: ampliación temporal de capacidad, servicios anti-DDoS, soporte urgente del proveedor y posibles costes por indisponibilidad.

### Comunicar

1. Elevar el incidente a Dirección y al responsable de seguridad, indicando alcance y servicios afectados.
    1. Escalar de inmediato a Comunicación y a negocio si la web corporativa o la tienda online quedan inaccesibles.
2. Comunicar de inmediato con el proveedor de hosting, CDN o mitigación DDoS si la web o la tienda online están implicadas.
3. Documentar cronología, tráfico observado, impacto y medidas de mitigación aplicadas.
4. Informar a usuarios internos y departamentos afectados sobre el estado del servicio y posibles restricciones temporales.
5. Comunicar a clientes, si es necesario, la existencia de incidencias de disponibilidad sin generar alarma innecesaria.
6. Coordinar con asesoría legal si el ataque deriva en incumplimientos contractuales, extorsión o perjuicio relevante.
7. Valorar notificación a INCIBE-CERT o a fuerzas y cuerpos de seguridad si el incidente es grave o reiterado.

### Recuperación

1. Orden recomendado de recuperación:
    1. Estabilidad del acceso público y de la red de borde;
    2. Web corporativa y formularios esenciales;
    3. Tienda online y procesos de compra;
    4. Retirada progresiva de medidas temporales no críticas.
2. Verificar la restauración completa de la disponibilidad de los servicios afectados.
3. Mantener monitorización reforzada durante al menos varios días para detectar reanudación del ataque.
4. Revisar impacto económico y operativo:
    * Tiempo de caída;
    * Operaciones perdidas;
    * Impacto reputacional;
    * Costes de mitigación.
5. Ajustar capacidad, reglas y procedimientos con base en las lecciones aprendidas.
6. Actualizar el plan de escalado con proveedores y tiempos máximos de respuesta.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar que la incidencia es de disponibilidad y no un fallo local. |
| 2 | Clasificar la severidad según alcance e indisponibilidad. |
| 3 | Escalar a TIC, Seguridad y proveedor externo. |
| 4 | Activar la mitigación disponible y las reglas temporales de filtrado. |
| 5 | Priorizar servicios esenciales y limitar funciones no críticas. |
| 6 | Documentar cronología, tráfico e impacto. |
| 7 | Preparar comunicación interna y externa básica si el servicio al cliente se ve afectado. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de ataque DDoS

1. Mantener la calma y reportar los síntomas observados: caída, lentitud o errores de acceso.
2. Anotar qué servicio falla, a qué hora y desde qué ubicación o red se intenta acceder.
3. No difundir información no confirmada sobre el incidente.
4. Seguir únicamente las indicaciones comunicadas por TIC o por los canales internos oficiales.

#### Referencia: Acciones del Help Desk ante un presunto ataque DDoS

1. Abrir un ticket prioritario y confirmar si el problema afecta a varios usuarios o a un servicio público completo.
2. Recoger la siguiente información:
    1. Hora del fallo;
    2. URL o servicio afectado;
    3. Tipo de error observado;
    4. Si el acceso falla desde una sola sede o de forma general.
3. Escalar inmediatamente a TIC, al responsable de seguridad y al proveedor externo si la web o la tienda están implicadas.
4. Registrar todas las comunicaciones y actualizaciones de estado.
5. Informar a los usuarios según el mensaje oficial definido para el incidente.

#### Información adicional

1. [Cloudflare - ¿Qué es un ataque DDoS?](https://www.cloudflare.com/es-es/learning/ddos/what-is-a-ddos-attack/)
2. [MITRE ATT&CK - Network Denial of Service (T1498)](https://attack.mitre.org/techniques/T1498/)
3. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)

## Playbook: Desaparición de sitios web

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna los pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Finalidad y activación

Este playbook define la respuesta específica ante incidentes de desfiguración o alteración no autorizada de contenidos web públicos. Su finalidad es retirar rápidamente el contenido malicioso, contener el acceso del atacante, preservar evidencias y recuperar la presencia pública de la empresa con seguridad.

Se activará ante cualquiera de estas señales:

1. Aparición de contenido web alterado, ofensivo, fraudulento o no autorizado;
2. Avisos de clientes, usuarios o proveedores sobre cambios anómalos en la web o tienda online;
3. Alertas del proveedor de hosting, WAF o monitorización web sobre alteraciones de ficheros o paneles;
4. Detección de accesos administrativos sospechosos o cambios inesperados en contenidos públicos.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* Responsable del incidente o responsable de seguridad, para coordinar la respuesta y el escalado;
* Equipo TIC, para análisis técnico, bloqueo de accesos y restauración;
* Proveedor de hosting o soporte web, por tratarse de un servicio externalizado;
* Help desk, para recepción de avisos y trazabilidad;
* Responsables de Comunicación o RRSS, por el impacto reputacional;
* Asesoría jurídica o apoyo RGPD, si existe riesgo sobre formularios o datos personales.

### Investigar

1. Confirmar la alteración y, si puede hacerse en segundos sin retrasar la contención, recoger evidencias mínimas antes de retirar la exposición pública.
    * Esto es especialmente importante si la desfiguración es ofensiva, fraudulenta o contiene enlaces maliciosos.
    * En esta empresa la página web y la tienda online están alojadas en proveedor externo, por lo que la retirada de la exposición debe coordinarse con dicho proveedor y con Comunicación.
2. Determinar el origen de la vulnerabilidad o del acceso no autorizado utilizado por el atacante. Los vectores más comunes son:
    * Credenciales robadas del panel de administración;
    * Vulnerabilidades en CMS, plugins o temas;
    * Inyección SQL u otras vulnerabilidades de aplicación;
    * Webshells o ficheros subidos de forma maliciosa;
    * Inclusión remota de archivos o carga insegura de contenido;
    * Mala configuración del hosting, FTP, panel o integraciones con terceros.
    * Para detectarlo, revisar:
        * Logs de acceso y error del servidor web;
        * Logs del firewall, WAF o CDN, si existen;
        * Cambios en ficheros, base de datos y configuración;
        * Cuentas administrativas y su actividad reciente;
        * Integraciones con formularios, tienda online y scripts de terceros;
        * Enlaces presentes en la página alterada, código fuente y recursos cargados desde dominios externos.
3. Recoger cualquier pista sobre el atacante y su motivación.
    * Mensajes dejados en la web, pseudónimos, firmas o canales de contacto.
    * Posible objetivo: vandalismo, protesta, fraude, SEO malicioso, distribución de malware o pantalla de acceso a datos.
    * Valorar si el defacement parece casual, ideológico, oportunista o parte de una intrusión más profesional.
    * Valorar si el defacement es un hecho aislado o un síntoma de compromiso mayor.
4. Recoger otra información importante de la página afectada.
    * Capturas de pantalla completas del contenido alterado.
    * Dominio, subdominio, IP o proveedor afectados.
    * Fecha y hora de detección.
    * Cambios visibles en código fuente, enlaces, formularios o pasarelas de pago.
    * Identificación del servidor, CMS o plataforma afectada, si se conoce.
    * Relación con otros sistemas internos o bases de datos de clientes.
5. Ampliar la investigación al posible compromiso lateral.
    * Comprobar si el atacante accedió también al panel de tienda, base de datos, correo asociado o repositorios de código.
    * Verificar si se insertaron scripts para robo de credenciales o datos de pago.
    * Revisar si existen usuarios administrativos nuevos, cambios de permisos o puertas traseras persistentes.

### Remediar

**Planificar eventos de reparación** en los que estos pasos se pongan en marcha juntos, o de forma coordinada, con los equipos adecuados listos para responder a cualquier interrupción.  
* **Considerar el momento y las compensaciones** de las acciones de remediación: la respuesta tiene consecuencias.

#### Contención

1. Hacer una copia forense o backup del contenido afectado antes de restaurar, incluyendo ficheros web, base de datos, logs y configuraciones.
2. Mantener fuera de servicio la página afectada o bajo página de mantenimiento mientras dure la investigación inicial.
    * Si es posible, publicar una página temporal neutra indicando mantenimiento técnico.
3. Revocar accesos administrativos, contraseñas y claves asociadas al CMS, FTP/SFTP, panel de hosting, base de datos y cuentas relacionadas.
4. Bloquear IP, cuentas o mecanismos de acceso identificados como maliciosos.
5. Si se detecta que el problema proviene de otro sistema integrado, aislar también ese sistema hasta verificarlo.

#### Erradicación

1. Eliminar el contenido malicioso, scripts, webshells, usuarios no autorizados, tareas programadas o puertas traseras detectadas.
2. Corregir la causa raíz del incidente:
    1. Vulnerabilidades en CMS, plugins, temas o formularios;
    2. Credenciales comprometidas;
    3. Configuraciones inseguras de hosting, panel o base de datos;
    4. Integraciones de terceros inseguras.
3. Aplicar parches, retirar componentes inseguros y revisar permisos sobre ficheros, paneles y cuentas de administración.
4. Verificar con el proveedor externo que el entorno ha sido revisado y saneado antes de proceder a la restauración pública.

### Recuperación

1. Orden recomendado de recuperación:
    1. Control del panel, credenciales y accesos administrativos;
    2. Restauración del contenido web legítimo y validación técnica;
    3. Revisión de formularios, bases de datos e integraciones sensibles;
    4. Reapertura pública de la web y, después, de la tienda online si estuvo afectada.
2. Eliminar el contenido del atacante y reemplazarlo por el contenido legítimo restaurado desde una copia limpia y verificada.
    * Comprobar las copias de seguridad en busca de indicadores de compromiso antes de restaurar.
    * Valorar la restauración parcial si solo algunos componentes estaban comprometidos.
3. Cambiar las credenciales de administración del sitio, de la tienda online y de cualquier cuenta asociada.
4. Rehabilitar la web solo después de corregir la vulnerabilidad, validar integridad y confirmar con el proveedor externo que el entorno es seguro.
5. Si procede, preparar una explicación breve para usuarios o clientes aclarando que el contenido alterado no representaba a la empresa.

#### Evitar riesgos

1. Minimizar plugins, módulos y componentes no necesarios, y mantener actualizaciones regulares del CMS o plataforma de tienda.
2. Limitar estrictamente los accesos administrativos y separar cuentas nominales de cuentas compartidas.
3. Activar MFA en paneles de administración, hosting y cuentas de correo vinculadas a la web.
4. Implementar monitorización de integridad de ficheros, revisión de logs y alertas de cambios administrativos.
5. Reforzar la defensa frente a vulnerabilidades web comunes, como SQLi, subida insegura de archivos y mala validación de entradas.
6. Revisar periódicamente con el proveedor externo el estado de parches, backups, WAF y controles de seguridad.
7. Formar a los empleados que gestionan web, tienda y contenidos sobre contraseñas, phishing y buenas prácticas de publicación.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, proveedor de hosting o web, Comunicación o RRSS, Legal si hay datos afectados y help desk.
* Técnicos: acceso al panel del proveedor, backups, logs web, base de datos, sistema de tickets y herramientas de escaneo o integridad.
* Logísticos: página de mantenimiento preparada, canales de contacto con proveedor externo y procedimiento de comunicación pública.
* Financieros: soporte urgente del proveedor, auditoría web, restauración de servicio y posibles costes de reputación o notificación.

### Comunicar

1. Elevar el incidente y comunicarlo a Dirección, al responsable de seguridad y a los responsables de Comunicación.
    1. Escalado inmediato si la página alterada contiene contenido ofensivo, fraudulento, enlaces maliciosos o afecta a la tienda online.
2. Documentar el incidente y conservar capturas, logs, cambios de contenido y actuaciones del proveedor externo.
3. Comunicarse con asesoría jurídica y consultoría RGPD si existe sospecha de acceso a datos personales o formularios de clientes.
4. Comunicar a usuarios internos el estado del servicio y las restricciones temporales.
5. Comunicar a clientes, si procede, que la web o la tienda han sido intervenidas temporalmente por seguridad.
6. Contactar con proveedores de seguros o soporte externo si existen.
7. Considerar notificación a organismos o fuerzas de seguridad si el incidente es grave, persistente o con posible delito asociado.
8. Coordinar toda comunicación externa para evitar mensajes contradictorios o alarmistas.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar la alteración y capturar evidencias básicas. |
| 2 | Retirar la web de exposición pública o pasarla a mantenimiento. |
| 3 | Bloquear accesos y credenciales administrativas sospechosas. |
| 4 | Avisar al proveedor externo y al responsable de seguridad. |
| 5 | Valorar si existe acceso a base de datos, formularios o tienda online. |
| 6 | Clasificar la severidad inicial. |
| 7 | Preparar la restauración desde copia limpia solo después de preservar evidencias mínimas. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de defacement

1. Mantener la calma.
2. Hacer capturas de pantalla de la página alterada y anotar la URL exacta.
3. No interactuar con enlaces extraños ni introducir credenciales en la web afectada.
4. Anotar:
    1. Qué cambio se ha observado exactamente;
    2. Cuándo se vio por primera vez;
    3. Si el problema afecta a una página concreta o a varias;
    4. Si se estaba accediendo como usuario normal o con cuenta de gestión;
    5. Con quién más se ha comentado el incidente.
5. Informar de inmediato al help desk o al equipo TIC.
6. Si se gestionaban contenidos en la web, no publicar nuevos cambios hasta recibir instrucciones.

#### Referencia: Acciones del Help Desk ante un presunto ataque de defacement

1. Abrir un ticket prioritario y recoger URL, hora de detección, capturas y usuario que reporta.
2. Verificar si la alteración afecta solo a una página o a la web o tienda completa.
3. Formular preguntas de triage detalladas:
    1. Qué ha observado exactamente el usuario;
    2. Cuándo apareció por primera vez y si persiste;
    3. Si el usuario estaba autenticado o gestionando contenidos;
    4. Qué URL, subdominio, formulario o funcionalidad concreta estaba usando;
    5. Si alguien más ha informado del mismo comportamiento;
    6. Con quién ha compartido ya la incidencia.
4. Escalar inmediatamente a TIC, al responsable de seguridad y al proveedor web externo.
5. Documentar accesos administrativos recientes, si esa información está disponible.
6. Coordinar la activación de la página de mantenimiento y el bloqueo de cuentas si procede.
7. Registrar todas las comunicaciones con proveedores y usuarios.

#### Información adicional
1. [MITRE ATT&CK - Defacement: External Defacement (T1491.002)](https://attack.mitre.org/techniques/T1491/002/)
2. [MITRE ATT&CK - Defacement: Internal Defacement (T1491.001)](https://attack.mitre.org/techniques/T1491/001/)
3. [OWASP - SQL Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
4. [OWASP - Path Traversal](https://owasp.org/www-community/attacks/Path_Traversal)
5. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)
## Playbook: Explotación de aplicación expuesta a Internet

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Finalidad y activación

Este playbook define la respuesta específica ante la explotación de aplicaciones o servicios expuestos a Internet. Su finalidad es contener el vector de ataque, evitar que el incidente escale a fuga de datos o compromiso persistente y devolver la aplicación a producción de forma segura.

Se activará ante cualquiera de estas señales:

1. Alertas o evidencias de explotación de una vulnerabilidad en web, tienda online o portal expuesto;
2. Aparición de errores anómalos, cargas de archivos no autorizadas o cambios no esperados en el comportamiento de la aplicación;
3. Hallazgo de accesos a paneles, bases de datos o recursos internos desde la aplicación pública;
4. Notificación del proveedor o de terceros sobre explotación activa del servicio expuesto.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* Responsable del incidente o responsable de seguridad, para coordinar y escalar la respuesta;
* Equipo TIC, para análisis técnico, bloqueo y restauración;
* Proveedor de hosting o soporte web, al tratarse de un servicio expuesto y externalizado;
* Help desk, para registro y trazabilidad de avisos;
* Responsables de negocio y Comunicación, si la incidencia afecta a la web pública o a la tienda online;
* Asesoría jurídica o apoyo RGPD, si existen datos personales implicados.

### Investigar

1. **Confirmar la explotación de la aplicación pública.**
    * Revisar alertas del proveedor de hosting, los logs o extractos que facilite el tercero, WAF si existe, IDS/IPS si está disponible y registros de la propia aplicación.
    * Verificar indicios como errores anómalos, subida de ficheros no autorizados, ejecución remota, cambios en contenido, consultas inusuales o cuentas creadas sin autorización.
    * Determinar si el incidente afecta a la web corporativa, a la tienda online o a otros portales expuestos.
2. **Determinar la vulnerabilidad o vector de ataque.**
    * Identificar si se trata de explotación de vulnerabilidad en CMS, plugin, tema, API, formulario, autenticación, carga de ficheros o mala configuración.
    * Revisar intentos de inyección SQL, XSS, RCE, traversal, abuso de credenciales o enumeración de usuarios.
    * Analizar IP, payloads, URL objetivo, agente de usuario y patrón temporal del ataque.
3. **Delimitar el alcance.**
    * Confirmar qué componentes de la aplicación han sido afectados.
    * Determinar si hubo acceso a bases de datos, paneles administrativos, repositorios, formularios o pasarelas de pago.
    * Verificar si se accedió a datos personales, credenciales o información comercial.
4. **Recopilar y preservar evidencias.**
    * Logs de aplicación, servidor, WAF, base de datos y proveedor externo, en la medida en que el proveedor los facilite o la empresa tenga acceso delegado.
    * Capturas de errores, muestras de payloads, archivos subidos, cambios en tablas o registros y cronología del incidente.
    * Configuración afectada, versiones del software y cambios recientes desplegados.
5. **Evaluar el impacto.**
    * Afectación a confidencialidad, integridad y disponibilidad.
    * Riesgo para datos personales de clientes y proveedores.
    * Posible encadenamiento con defacement, fuga de datos o despliegue de malware.
    * Criterio orientativo de severidad:
        * **media**, si la explotación no supera un fallo puntual sin acceso confirmado;
        * **alta**, si hay acceso a paneles, ficheros, cuentas o datos internos;
        * **crítica**, si afecta a la tienda online, a datos personales, a ejecución remota o a persistencia confirmada.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se ejecuten juntos, o de forma coordinada, con los equipos adecuados preparados para evitar nueva explotación.
* **Considerar el momento y las compensaciones** de las acciones de remediación: algunas medidas pueden requerir mantenimiento o indisponibilidad temporal.

#### Contención

* Pasar la aplicación afectada a modo mantenimiento o restringir el acceso si el riesgo lo justifica.
* Solicitar al proveedor que bloquee IP, firmas o patrones detectados en el WAF, reverse proxy o firewall, o aplicar la medida internamente solo si ese control está bajo gestión directa de la empresa.
* Deshabilitar temporalmente funciones explotadas: formularios, carga de archivos, plugins o endpoints concretos.
* Revocar credenciales comprometidas de administración, base de datos, API o integraciones.
* Aislar copias del entorno afectado para análisis si existe sospecha de ejecución remota o persistencia.
* Coordinar con el proveedor de hosting o desarrollo si la gestión técnica está externalizada.

#### Erradicar

* Aplicar parches, actualizar componentes vulnerables o retirar plugins, temas o módulos inseguros, directamente o a través del proveedor responsable del servicio.
* Eliminar puertas traseras, usuarios no autorizados, webshells, tareas programadas o archivos maliciosos.
* Corregir configuraciones inseguras:
    * Permisos excesivos;
    * Exposición de paneles;
    * Validación insuficiente de entradas;
    * Ausencia de protección WAF o MFA.
* Restaurar la aplicación desde una copia limpia si no puede garantizarse la integridad del entorno, coordinándolo con el proveedor cuando la infraestructura o el despliegue dependan de él.
* Revisar la base de datos y los registros en busca de cambios maliciosos o persistencia adicional.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, proveedor de hosting, desarrollador o soporte web, asesoría jurídica y responsables de negocio afectados.
* Técnicos: acceso a las evidencias que facilite el proveedor, logs web y de base de datos disponibles, WAF, panel de hosting si está delegado, backups, sistema de tickets y herramientas de análisis de vulnerabilidades.
* Logísticos: ventanas de mantenimiento, contactos urgentes con proveedor externo y mensajes preparados para usuarios o clientes.
* Financieros: soporte de proveedor, auditoría técnica, restauración desde backup y posibles costes de indisponibilidad o notificación.

### Comunicar

1. Elevar el incidente a Dirección y al responsable de seguridad indicando la aplicación afectada y el riesgo asociado.
    1. Escalar también a Comunicación y a negocio si la incidencia afecta a la web pública, formularios de contacto o procesos de compra.
2. Coordinar de inmediato con el proveedor de hosting o soporte web si la gestión es externa.
3. Documentar la vulnerabilidad, los indicadores observados, el alcance y las medidas aplicadas, diferenciando claramente entre acciones propias y acciones ejecutadas por el proveedor.
4. Informar a departamentos internos afectados sobre indisponibilidad, riesgos y cambios operativos.
5. Comunicar a clientes si la incidencia afecta a formularios, tienda online o tratamiento de sus datos.
6. Coordinar con asesoría jurídica y consultoría RGPD si hubo acceso a datos personales o información regulada.
7. Valorar notificación a INCIBE-CERT o a fuerzas y cuerpos de seguridad si el incidente es grave.

### Recuperación

1. Orden recomendado de recuperación:
    1. Cierre del vector de ataque y validación técnica del entorno;
    2. Restauración del panel, credenciales y componentes críticos;
    3. Validación funcional de la web o la tienda online;
    4. Reapertura pública gradual y monitorizada del servicio.
2. Restaurar la aplicación a producción solo después de validar que la vulnerabilidad ha sido corregida.
3. Realizar comprobaciones funcionales y de seguridad antes de reabrir el servicio.
4. Cambiar credenciales de administración, base de datos, API y cuentas relacionadas.
5. Mantener monitorización reforzada de logs, errores y accesos durante las semanas posteriores.
6. Revisar el ciclo de actualización y gestión de cambios de aplicaciones expuestas.
7. Implantar mejoras preventivas:
    * MFA en paneles;
    * WAF y reglas adaptadas;
    * Revisiones periódicas de vulnerabilidades;
    * Principio de mínimo privilegio.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar la explotación o el comportamiento anómalo. |
| 2 | Clasificar la severidad inicial. |
| 3 | Restringir el acceso o activar mantenimiento si el riesgo lo justifica. |
| 4 | Solicitar el bloqueo de IP, firmas o funciones explotadas, o aplicarlo internamente si ese control está bajo gestión directa. |
| 5 | Preservar logs, payloads y evidencias básicas. |
| 6 | Escalar a TIC, Seguridad y proveedor externo. |
| 7 | Valorar si existe exposición de datos, persistencia o afectación a la tienda online. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de explotación de aplicación pública

1. Mantener la calma y no interactuar con funciones anómalas de la web o la tienda.
2. Hacer capturas del error o comportamiento sospechoso y anotar la URL exacta.
3. Informar de inmediato al help desk o a TIC.
4. No publicar cambios ni utilizar paneles administrativos hasta nueva indicación.

#### Referencia: Acciones del Help Desk ante una posible explotación de aplicación pública

1. Abrir un ticket prioritario y recoger:
    1. URL afectada;
    2. Hora de detección;
    3. Comportamiento observado;
    4. Usuario que detecta la incidencia.
2. Escalar de inmediato a TIC, al responsable de seguridad y al proveedor web externo si procede.
3. Registrar capturas, logs disponibles y cualquier cambio reciente comunicado por negocio o proveedor.
4. Coordinar la activación del modo mantenimiento o la restricción de acceso si así se indica.
5. Documentar todas las comunicaciones y decisiones.

#### Información adicional

1. [MITRE ATT&CK - Exploit Public-Facing Application (T1190)](https://attack.mitre.org/techniques/T1190/)
2. [OWASP - SQL Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
3. [OWASP - Path Traversal](https://owasp.org/www-community/attacks/Path_Traversal)
4. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)

## Playbook: Fuga de datos / Exfiltración de información

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Finalidad y activación

Este playbook define la respuesta específica ante incidentes de fuga, extracción o exfiltración no autorizada de información. Su finalidad es cortar la salida de datos, preservar evidencias, valorar el impacto regulatorio y recuperar el control sobre la información comprometida.

Se activará ante cualquiera de estas señales:

1. Transferencias masivas o inusuales de datos hacia destinos externos;
2. Alertas de herramientas de monitorización, DLP o registros equivalentes;
3. Hallazgo de envíos, sincronizaciones o accesos fuera de horario o patrón habitual;
4. Sospecha fundada de exposición de datos personales, contractuales o internos sensibles.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* Responsable del incidente o responsable de seguridad, para coordinar y escalar la respuesta;
* Equipo TIC, para análisis técnico, contención y revisión de accesos;
* Help desk, para trazabilidad inicial y soporte operativo;
* Asesoría jurídica y apoyo RGPD, por el posible impacto regulatorio;
* Responsables de negocio afectados, para priorizar procesos y datos críticos.

### Investigar

1. **Confirmar la fuga o exfiltración de datos.**
    * Revisar alertas de DLP o de herramientas equivalentes, SIEM si existe, firewall, antivirus gestionado por la subcontrata, servicios cloud y registros del servidor.
    * Comprobar si ha habido transferencias masivas, accesos fuera de horario, envíos a correos externos o sincronizaciones inusuales.
    * Validar si se trata de una fuga real, un error operativo o una transferencia autorizada mal documentada.
2. **Determinar el vector y el alcance.**
    * Identificar si la salida de información se produjo por correo, almacenamiento cloud, dispositivo USB, acceso remoto, aplicación web, FTP o mensajería.
    * Determinar si el origen es interno, externo o mixto.
    * Identificar qué datos fueron afectados:
        * Datos personales de clientes y proveedores;
        * Información financiera o laboral;
        * Documentación legal o contractual;
        * Información interna sensible.
3. **Recopilar y preservar evidencias.**
    * Logs de red, autenticación, correo, sistemas cloud y acceso a carpetas compartidas.
    * Trazas de dispositivos extraíbles o sincronizaciones externas, si están disponibles.
    * Evidencias del volumen, horario, usuario implicado, sistema de origen y destino aparente.
4. **Evaluar el impacto.**
    * Determinar la sensibilidad, volumen y criticidad de la información exfiltrada.
    * Confirmar si los datos incluyen información protegida por RGPD.
    * Valorar impacto legal, reputacional, contractual y operativo.
    * Criterio orientativo de severidad:
        * **media**, si afecta a información interna limitada y sin datos personales;
        * **alta**, si afecta a información sensible o a varios usuarios o departamentos;
        * **crítica**, si incluye datos personales, información financiera, contractual o gran volumen de datos.
5. **Formular preguntas clave.**
    * Cuándo empezó la exfiltración y cuánto duró.
    * Si fue un hecho único o una extracción continuada.
    * Si existió escalado de privilegios, movimiento lateral o borrado de rastros.
    * Si la información puede haberse publicado o transferido a terceros.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se ejecuten juntos, o de forma coordinada, con los equipos adecuados preparados para evitar más pérdida de información.
* **Considerar el momento y las compensaciones** de las acciones de remediación: algunas medidas pueden afectar a la operativa o alertar al atacante.

#### Contención

* Aislar los sistemas o cuentas desde los que se está produciendo la exfiltración.
* Suspender accesos externos, sincronizaciones o transferencias sospechosas.
* Revocar credenciales, tokens, accesos remotos o permisos compartidos de las cuentas implicadas.
* Bloquear temporalmente canales de salida implicados:
    * Correo saliente no esencial;
    * Almacenamiento cloud afectado;
    * USB o dispositivos extraíbles, si procede;
    * FTP o servicios equivalentes.
* Incrementar la monitorización sobre cuentas, equipos y repositorios de información crítica.
* Preservar pruebas sin borrar ficheros, cuentas ni dispositivos antes del análisis técnico.

#### Erradicar

* Eliminar malware, scripts o herramientas de exfiltración detectadas.
* Corregir la causa raíz:
    * Credenciales comprometidas;
    * Permisos excesivos;
    * Mala configuración cloud;
    * Falta de controles DLP;
    * Error humano o abuso interno.
* Rotar contraseñas de las cuentas afectadas y revisar permisos heredados o excesivos.
* Corregir configuraciones inseguras en correo, carpetas compartidas, aplicaciones o almacenamiento cloud.
* Revisar si hay puertas traseras, reglas automáticas o aplicaciones conectadas no autorizadas.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, help desk, asesoría jurídica, consultoría RGPD y responsables de negocio afectados.
* Técnicos: logs de red y autenticación, consolas cloud, sistema de tickets, inventario de activos, herramientas EDR/DLP y backups.
* Logísticos: canal de escalado interno, coordinación con proveedores cloud y disponibilidad para análisis fuera de horario si procede.
* Financieros: soporte externo forense, notificaciones regulatorias, restauración de servicios y posibles costes contractuales o reputacionales.

### Comunicar

1. Elevar el incidente a Dirección y al responsable de seguridad con valoración preliminar del tipo de datos afectados.
    1. Escalar de inmediato a asesoría jurídica y a la consultoría RGPD cuando existan datos personales o indicios razonables de brecha notificable.
2. Documentar cronología, evidencias, cuentas implicadas, volumen estimado y medidas de contención.
3. Coordinar con asesoría jurídica y consultoría RGPD la valoración regulatoria, contractual y de notificación.
4. Evaluar obligación de notificación a la AEPD y, si procede, a las personas afectadas.
5. Informar a departamentos afectados sobre restricciones temporales y medidas operativas.
6. Comunicar a clientes o proveedores cuando sus datos o servicios puedan haberse visto comprometidos.
7. Valorar comunicación a INCIBE-CERT y a fuerzas y cuerpos de seguridad si hay indicios delictivos o perjuicio relevante.
8. Mantener un registro completo de todas las comunicaciones y decisiones adoptadas.

### Recuperación

1. Orden recomendado de recuperación:
    1. Cierre del canal de fuga y saneamiento de cuentas o sistemas implicados;
    2. Restauración de permisos y accesos mínimos seguros;
    3. Reanudación de transferencias o integraciones necesarias para negocio;
    4. Normalización del trabajo sobre datos sensibles con monitorización reforzada.
2. Restaurar el funcionamiento normal solo cuando la vía de fuga esté cerrada y la seguridad del entorno haya sido verificada.
3. Revisar y reforzar controles de acceso, compartición de datos y privilegios.
4. Validar integridad de los sistemas implicados y confirmar que no persisten transferencias anómalas.
5. Reforzar monitorización sobre datos sensibles durante las semanas posteriores.
6. Actualizar procedimientos sobre tratamiento de datos, permisos y uso de servicios externos.
7. Impartir formación específica si la fuga se debió a error humano o mala práctica operativa.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar la sospecha y abrir el incidente. |
| 2 | Clasificar la severidad según tipo y volumen de datos. |
| 3 | Cortar accesos, sincronizaciones o canales de salida relacionados. |
| 4 | Preservar logs y evidencias antes de modificar sistemas. |
| 5 | Escalar a Seguridad, Dirección y apoyo legal o RGPD si hay datos personales. |
| 6 | Identificar sistema, cuenta y destino probable de la salida de información. |
| 7 | Definir restricciones temporales para evitar nuevas extracciones. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de fuga de datos

1. Mantener la calma y no borrar ni modificar archivos relacionados con el incidente.
2. Informar de inmediato a TIC o al help desk si se observan envíos inusuales, descargas masivas o accesos no autorizados.
3. Anotar qué se observó, a qué hora, en qué equipo y con qué cuenta.
4. No reenviar información sensible ni comentar el incidente fuera de los canales autorizados.
5. Seguir las instrucciones del equipo de respuesta.

#### Referencia: Acciones del Help Desk ante una posible fuga de datos

1. Abrir un ticket prioritario y verificar la identidad del informante.
2. Recoger:
    1. Sistema o aplicación implicada;
    2. Cuenta utilizada;
    3. Tipo de datos afectados;
    4. Hora aproximada y acción observada.
3. Escalar de inmediato a TIC y al responsable de seguridad.
4. No borrar evidencias ni restaurar sistemas sin autorización del equipo técnico.
5. Documentar todas las acciones y comunicaciones.

#### Información adicional

1. [MITRE ATT&CK - Exfiltration Tactic (TA0010)](https://attack.mitre.org/tactics/TA0010/)
2. [NIST SP 800-122 - Guide to Protecting the Confidentiality of Personally Identifiable Information (PII)](https://csrc.nist.gov/pubs/sp/800/122/final)
3. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)

## Playbook: Compromiso de identidad y acceso

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Finalidad y activación

Este playbook define la respuesta específica ante el compromiso de identidades, cuentas y accesos corporativos. Su finalidad es detectar accesos no autorizados, contener rápidamente el abuso de credenciales, proteger la información sensible y restablecer el acceso legítimo con garantías.

Se activará ante cualquiera de estas señales:

1. Alertas de inicios de sesión anómalos o imposibles;
2. Cambios de contraseña, MFA o sesiones no reconocidos por el usuario;
3. Accesos desde IP, ubicaciones o dispositivos inusuales;
4. Sospecha de robo de credenciales por phishing, malware o proveedor externo.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* Responsable del incidente o responsable de seguridad, para priorizar y escalar la respuesta;
* Equipo TIC, para revisar autenticación, cuentas, permisos y endpoints;
* Help desk, para validar usuarios, abrir incidentes y asistir en cambios de credenciales;
* Responsables del área afectada, si se trata de cuentas con acceso a procesos críticos;
* Asesoría jurídica o apoyo RGPD, si se accedió a datos personales o información regulada.

### Investigar

1. Confirmar si existe un **compromiso real de credenciales** o un falso positivo.
    * Validar la alerta con el usuario afectado y con los registros de autenticación.
    * Determinar si el compromiso afecta a cuentas de usuario, administración, servicio, correo, cloud, VPN o tienda online.
2. Determinar **cómo se produjo el compromiso**.
    * Revisar si hubo phishing, reutilización de contraseñas, credential stuffing, malware, fuga en proveedor externo o acceso remoto inseguro.
    * Revisar correos sospechosos, alertas del antivirus, eventos de acceso remoto y actividad anómala en navegadores o endpoints.
3. Delimitar **el alcance y el impacto**.
    * Identificar qué sistemas o servicios fueron accedidos con las credenciales comprometidas.
    * Verificar si hubo cambios en contraseñas, reglas de correo, MFA, datos de perfil, altas de usuarios o escalado de privilegios.
    * Revisar si se accedió a datos personales, documentación interna sensible, CRM, ERP, almacenamiento cloud o paneles del proveedor web.
4. Revisar **la cronología de accesos**.
    * Ubicaciones geográficas, IP, dispositivos y horarios anómalos.
    * Inicios de sesión simultáneos o imposibles.
    * Intentos de acceso fallidos previos y posteriores.
5. Recopilar evidencia relevante.
    * Logs de autenticación, exportación de alertas, mensajes de phishing asociados, sesiones abiertas, tokens, claves API y cambios administrativos.
6. Formular preguntas clave.
    * Si MFA estaba activado y funcionó correctamente;
    * Si se usaron las credenciales para movimiento lateral o acceso a otros sistemas;
    * Si existen más cuentas afectadas por la misma campaña o proveedor comprometido;
    * Si el atacante creó persistencia mediante reglas de correo, aplicaciones autorizadas o cuentas nuevas.
7. **Clasificar la severidad del incidente.**
    * **baja**, si solo hubo intentos fallidos sin acceso confirmado.
    * **media**, si hubo acceso a una cuenta de usuario sin privilegios y sin impacto aparente.
    * **alta**, si hubo acceso a varias cuentas, datos sensibles o servicios corporativos relevantes.
    * **crítica**, si la cuenta es privilegiada, afecta a paneles cloud, a la tienda online o a información regulada.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se lancen juntos, o de forma coordinada, con los equipos apropiados listos para responder a cualquier interrupción.
* **Considerar el tiempo y las compensaciones** de las acciones de remediación: la respuesta tiene consecuencias.

#### Contención

* Restablecer o deshabilitar inmediatamente las credenciales comprometidas.
* Forzar cierre de sesiones activas en correo, VPN, aplicaciones cloud y servicios empresariales.
* Revocar tokens, claves API, certificados o aplicaciones autorizadas vinculadas a la cuenta.
* Bloquear accesos desde IP, dispositivos o ubicaciones sospechosas.
* Reforzar MFA y, si no existe, implantarlo con prioridad en cuentas críticas.
* Reducir temporalmente privilegios o retirar roles administrativos mientras termina la investigación.
* Aislar equipos asociados si existe sospecha de malware roba-credenciales.
* Aumentar la monitorización sobre:
    * Cuentas con privilegios;
    * Paneles cloud;
    * Cambios en grupos o permisos;
    * Restablecimientos de contraseña y altas de usuarios.

#### Erradicar

* Eliminar mecanismos de persistencia o abuso detectados:
    * Reglas de correo;
    * Aplicaciones OAuth no autorizadas;
    * Cuentas ocultas o nuevas;
    * Claves API no aprobadas;
    * Dispositivos marcados como de confianza sin autorización.
* Corregir la causa raíz del incidente:
    * Phishing no detectado;
    * Contraseñas reutilizadas;
    * Falta de MFA;
    * Controles insuficientes en acceso remoto o proveedores.
* Escanear equipos implicados en busca de malware, keyloggers o herramientas de acceso remoto no autorizadas.
* Rotar contraseñas de cuentas relacionadas, especialmente cuentas privilegiadas o de servicio.
* Revisar y endurecer políticas de acceso, bloqueos por intentos fallidos y alertas de comportamiento.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, help desk, RR. HH. si la cuenta pertenece a personal con cambio de rol o baja, subcontrata del antivirus y asesoría RGPD.
* Técnicos: directorio corporativo, paneles cloud, registros de autenticación, firewall o VPN, sistema de tickets y herramientas de gestión de identidades.
* Logísticos: canal interno de avisos urgentes, soporte a usuarios para cambio de contraseña y equipos alternativos si se aísla el endpoint.
* Financieros: soporte externo especializado, despliegue o ampliación de MFA y posibles costes de revisión forense.

### Comunicar

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Informar a Dirección y al responsable de seguridad del tipo de cuenta comprometida y del impacto potencial.
    1. Escalar de inmediato al responsable del área afectada si la cuenta pertenece a Facturación, RR. HH., TIC, Dirección o proveedores externos con acceso.
2. Documentar todas las acciones sobre la identidad afectada: reseteos, revocaciones, cambios de privilegios y evidencias.
3. Coordinar con asesoría legal y consultoría RGPD si la cuenta permitió acceso a datos personales o información regulada.
4. Informar a usuarios y responsables afectados.
    1. Explicar cambios de contraseña, cierres de sesión y pasos de verificación.
    2. Aclarar que no deben reutilizar claves ni aprobar notificaciones MFA no iniciadas por ellos.
5. Comunicar a proveedores externos si el acceso comprometido afecta a integraciones, hosting, nube o tienda online.
6. Valorar la notificación a organismos o fuerzas de seguridad si se aprecia acceso delictivo relevante o fraude.

### Recuperación

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Orden recomendado de recuperación:
    1. Cuentas privilegiadas o con acceso a sistemas críticos;
    2. Cuentas de servicio o integraciones;
    3. Cuentas de usuarios de departamentos sensibles;
    4. Resto de cuentas afectadas o potencialmente afectadas.
2. Restaurar de forma controlada el acceso de los usuarios tras confirmar que la cuenta está limpia y con nuevas credenciales.
3. Forzar MFA en cuentas sensibles y, en la medida de lo posible, ampliarlo al resto de la organización.
4. Revisar permisos y aplicar mínimo privilegio, especialmente en correo, almacenamiento cloud, ERP/CRM y paneles de proveedores.
5. Monitorizar la actividad de las cuentas afectadas durante un periodo reforzado para detectar recaídas o nuevos abusos.
6. Reforzar la formación en:
    * Phishing y suplantación;
    * Uso seguro de contraseñas;
    * Reconocimiento de alertas de acceso y MFA.
7. Formalizar procedimientos de alta, baja y cambio de rol para evitar cuentas huérfanas o privilegios innecesarios.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar la alerta o el aviso del usuario. |
| 2 | Validar la identidad del afectado por un canal alternativo. |
| 3 | Clasificar la severidad inicial. |
| 4 | Bloquear o limitar la cuenta si existe acceso confirmado. |
| 5 | Cerrar sesiones, revocar tokens y preservar evidencias. |
| 6 | Revisar si hay más cuentas o servicios relacionados afectados. |
| 7 | Escalar a Seguridad, Dirección o Legal si la cuenta es crítica o hay datos sensibles implicados. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de compromiso de identidad o acceso

1. Mantener la calma y no seguir intentando acceder si aparecen alertas anómalas o bloqueos no esperados.
2. Informar de inmediato a TIC o al help desk si se observan inicios de sesión no reconocidos, cambios de contraseña no solicitados o avisos MFA no iniciados por el usuario.
3. Anotar la hora, el servicio afectado y el mensaje recibido.
4. No aprobar notificaciones MFA ni reutilizar contraseñas anteriores.
5. Seguir las instrucciones del equipo de respuesta para cambio de credenciales o verificación de identidad.

#### Referencia: Acciones del Help Desk ante posible compromiso de identidad o acceso

1. Abrir un ticket prioritario y verificar la identidad del usuario por un canal alternativo.
2. Recoger:
    1. Cuenta afectada;
    2. Servicio implicado;
    3. Hora de detección;
    4. Tipo de alerta o comportamiento observado.
3. Escalar de inmediato a TIC y al responsable de seguridad si existe acceso confirmado o riesgo para datos sensibles.
4. Coordinar el reseteo de credenciales o el bloqueo temporal si así se indica.
5. Documentar todas las acciones, evidencias y comunicaciones.

#### Información adicional

1. [MITRE ATT&CK - Valid Accounts (T1078)](https://attack.mitre.org/techniques/T1078/)
2. [MITRE ATT&CK - Credential Access Tactic (TA0006)](https://attack.mitre.org/tactics/TA0006/)
3. [NIST SP 800-63B - Digital Identity Guidelines: Authentication and Authenticator Management](https://pages.nist.gov/800-63-4/sp800-63b.html)
4. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)
5. [OWASP - Multifactor Authentication Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Multifactor_Authentication_Cheat_Sheet.html)

## Playbook: Phishing

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es meramente secuencial. Utiliza tu mejor criterio.

### Finalidad y activación

Este playbook define la respuesta específica ante incidentes de phishing que afecten, o puedan afectar, al correo corporativo, a las credenciales, a los usuarios o a la información de la empresa. Su finalidad es detectar con rapidez el alcance del engaño, contener el posible compromiso de cuentas o equipos y coordinar una respuesta clara con TIC, Dirección y las áreas afectadas.

Se activará ante cualquiera de estas señales:

1. Recepción de un correo sospechoso con suplantación, enlace o adjunto malicioso;
2. Aviso de usuario sobre posible robo de credenciales, pago fraudulento o archivo descargado;
3. Alertas del servidor de correo, antivirus o servicios cloud relacionadas con campañas de phishing;
4. Detección de reglas de reenvío, accesos anómalos o cambios sospechosos en buzones.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* Responsable del incidente o responsable de seguridad, para coordinar decisiones y escalado;
* Equipo TIC, para análisis técnico, bloqueo de cuentas, correo y equipos;
* Help desk, para recepción de avisos y soporte a usuarios;
* Responsables de departamento afectados, especialmente si intervienen pagos o datos sensibles;
* Asesoría jurídica o apoyo RGPD, si existe riesgo para datos personales o fraude.

### Investigar

1. **Ámbito del ataque.** Normalmente el incidente será reportado por un usuario, cliente, proveedor o por el equipo TIC al detectar un correo sospechoso.
    * Determinar el **número total de usuarios afectados** y si pertenecen a departamentos sensibles como Facturación, RR. HH., TIC, Dirección o Comunicación.
    * Comprender **las acciones de los usuarios** tras recibir el mensaje: si abrieron el correo, pulsaron enlaces, descargaron adjuntos, introdujeron credenciales, autorizaron MFA o realizaron pagos.
    * Buscar actividad potencialmente relacionada en:
        * Buzones de correo corporativo;
        * Redes sociales o mensajería, si el intento continuó por otros canales;
        * Avisos del antivirus gestionado por la subcontrata;
        * Logs del servidor de correo;
        * Notificaciones de inicio de sesión anómalo en servicios cloud;
        * Correos no entregados, respuestas automáticas sospechosas o reglas anómalas;
        * Consultas al help desk o incidencias similares en las dos sedes.
2. **Analizar el mensaje** utilizando un dispositivo seguro y, si es posible, un entorno aislado de análisis. Determinar:
    * Quién ha recibido el mensaje y si hubo reenvíos internos;
    * Quién era realmente el objetivo del ataque;
    * Dirección de correo del remitente y discrepancias con el nombre mostrado;
    * Asunto, cuerpo, tono, urgencia y peticiones realizadas;
    * Adjuntos, sin abrirlos en equipos de producción;
    * Enlaces, dominios y nombres de host, sin hacer clic directamente;
    * Metadatos y cabeceras del correo:
        * Ruta seguida por el mensaje;
        * IP de origen;
        * Resultados SPF, DKIM y DMARC, si están disponibles;
        * Campo `Reply-To`, remitente autenticado y posibles dominios similares;
        * Diferencias entre el campo `From` y la identidad autenticada.
    * Cualquier peculiaridad: faltas ortográficas, peticiones urgentes, cambio de cuenta bancaria, enlaces acortados, etiqueta de correo externo o imitación de proveedores.
3. **Analizar los enlaces y los archivos adjuntos.**
    * Consultar de forma pasiva el dominio y la reputación del remitente con `nslookup`, `whois`, reputación DNS y fuentes OSINT.
    * Buscar dominios relacionados, registros recientes o campañas semejantes por OSINT y reverse whois cuando sea útil.
    * Enviar preferentemente hashes, URL ya desactivadas o muestras anonimizadas a servicios de reputación o sandbox aprobados por la empresa, como VirusTotal, Hybrid Analysis o el servicio equivalente disponible.
    * No subir a servicios públicos adjuntos completos o contenido sensible si contienen datos personales, documentación interna o información de clientes, salvo autorización expresa del procedimiento interno.
    * Revisar si el dominio suplantado se parece al de la propia empresa, al proveedor de hosting, a bancos, a la asesoría legal o a proveedores habituales.
    * Comprobar si el adjunto intenta instalar malware, robar credenciales o habilitar macros.
4. **Categorizar el tipo de ataque.**
    * Phishing genérico orientado al robo de credenciales;
    * Spear phishing dirigido a personal de Facturación, Compras o Dirección;
    * Business email compromise para fraude económico;
    * Smishing o vishing, si el ataque continúa por móvil o llamada;
    * Phishing con malware adjunto o enlace de descarga.
5. **Determinar la gravedad.** Considerar:
    * Si hay credenciales corporativas comprometidas;
    * Si se accedió a datos personales de clientes o proveedores;
    * Si se afectaron buzones con información financiera, laboral o legal;
    * Si hubo pagos, cambios de cuentas bancarias o instrucciones falsas;
    * Número de activos y usuarios afectados;
    * Posible impacto reputacional y operativo;
    * Posible afectación a servicios cloud o a la tienda online.
    * Criterio orientativo de severidad:
        * **baja**, si el correo se detecta antes de la interacción y no hay indicios de compromiso;
        * **media**, si hubo clic, descarga o exposición limitada sin evidencia de acceso efectivo;
        * **alta**, si se comprometieron credenciales, se afectó a varios usuarios o hubo impacto operativo;
        * **crítica**, si hay fraude económico, acceso a datos personales, compromiso de cuentas privilegiadas o afectación a servicios esenciales.
6. **Delimitar el alcance técnico del compromiso.**
    * Revisar inicios de sesión recientes en correo, VPN, paneles cloud y aplicaciones empresariales.
    * Verificar si existen reglas de reenvío automático, delegaciones de buzón o cambios no autorizados en firmas y bandejas.
    * Revisar si los equipos desde los que se abrió el correo muestran alertas del antivirus o comportamientos anómalos.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos, o de forma coordinada, con los equipos adecuados listos para responder a cualquier interrupción.
* **Considerar el momento y las compensaciones** de las acciones de remediación: la respuesta tiene consecuencias.

#### Contención

* Contener las cuentas afectadas.
    * Forzar el cambio inmediato de contraseña de las cuentas afectadas o potencialmente afectadas.
    * Cerrar sesiones activas en correo, aplicaciones cloud, VPN y paneles administrativos.
    * Reforzar o forzar MFA donde esté disponible.
    * Deshabilitar temporalmente cuentas si existen evidencias de uso indebido.
* Bloquear la actividad en función de los indicadores de compromiso descubiertos.
    * Bloquear dominios maliciosos en DNS, firewall, proxy o filtros de correo.
    * Bloquear remitentes, asuntos, hashes de adjuntos y URL detectadas.
    * Purgar los mensajes equivalentes del resto de bandejas de entrada.
* Implementar retención forense de los mensajes y conservar exportaciones del correo, cabeceras y evidencias de acceso.
* Aislar los equipos que hayan descargado ficheros o ejecutado contenido sospechoso.
* Contener el compromiso más amplio de acuerdo con el plan general de respuesta si el phishing ha desembocado en malware, fraude o acceso no autorizado.
* Aumentar el nivel de alerta de monitorización durante al menos varios días sobre:
    * Buzones comprometidos;
    * IP de acceso sospechosas;
    * Reglas de reenvío;
    * Movimientos en servicios cloud y paneles de proveedores.
* Confirmar con la subcontrata de antivirus que las firmas, políticas y telemetría están actualizadas en los activos afectados.

#### Erradicar

* Eliminar reglas de correo, delegaciones, reenvíos y aplicaciones OAuth no autorizadas.
* Revocar tokens de sesión, cookies persistentes y accesos de dispositivos no reconocidos.
* Eliminar adjuntos maliciosos y ficheros descargados en los equipos afectados tras el análisis correspondiente.
* Ejecutar análisis antimalware completos y, si procede, reconstruir el equipo si se confirma infección.
* Corregir la causa raíz: falta de MFA, ausencia de filtro, debilidad en el proceso de validación de pagos o carencia de concienciación.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, help desk, responsables de departamento afectados, subcontrata del antivirus y asesoría RGPD.
* Técnicos: acceso a consola de correo, logs de autenticación, herramientas de filtrado, inventario de equipos, sandbox o reputación y sistema de tickets.
* Logísticos: teléfono de guardia TIC, canal interno de aviso urgente, equipo de sustitución si se aísla un puesto crítico y coordinación con proveedor cloud.
* Financieros: horas extraordinarias del equipo TIC, soporte externo especializado y posibles costes de restauración o asesoramiento legal.

### Comunicar

1. Elevar el incidente y comunicarlo a Dirección y al responsable de seguridad según el procedimiento interno.
    1. Escalado inmediato si la severidad es alta o crítica.
    2. Escalado al responsable del departamento afectado si el incidente alcanza a Facturación, RR. HH., TIC, Dirección o proveedores clave.
2. Documentar el incidente en el sistema de tickets o registro de incidentes, dejando cronología, usuarios afectados, IOC y decisiones.
3. Comunicarse con asesoría jurídica y con la consultoría de RGPD cuando exista riesgo para datos personales o fraude económico.
4. Comunicación con los usuarios, de forma interna.
    1. Informar rápidamente a los potenciales afectados para que no interactúen con el mensaje.
    2. Explicar el impacto operativo de las medidas de contención, como bloqueo de cuenta o aislamiento de equipo.
    3. Indicar claramente qué deben hacer: no borrar el correo, no reenviarlo, no seguir enlaces y avisar de cualquier mensaje similar.
5. Comunicar a clientes o proveedores si sus datos, cuentas o transacciones pueden haberse visto afectados.
    1. Priorizar los casos en los que exista acceso no autorizado a información personal o fraude de suplantación.
    2. Preparar, si aplica, las notificaciones exigidas por RGPD y por contratos con terceros.
6. Contactar con el proveedor de seguros, si la empresa dispone de cobertura de ciberincidentes.
7. Considerar la posibilidad de notificar e implicar a las fuerzas y organismos competentes.
    1. INCIBE-CERT para apoyo y reporte.
    2. AEPD, si se confirma una brecha de datos personales notificable.
    3. Policía Nacional o Guardia Civil si existe fraude, suplantación relevante o perjuicio económico.
8. Comunicarse con proveedores de seguridad y de TI.
    1. Coordinarse con la subcontrata del antivirus para ampliar detección y revisar telemetría.
    2. Coordinarse con el proveedor de correo, cloud o hosting si el incidente afecta a sus servicios.
    3. Si el incidente afecta a pagos o a la tienda online, coordinarse también con el proveedor externo correspondiente antes de reabrir la operativa.

### Recuperación

1. Orden recomendado de recuperación:
    1. Cuentas corporativas afectadas y accesos críticos a correo y servicios cloud;
    2. Buzones, reglas y delegaciones alteradas;
    3. Equipos impactados por descargas o malware;
    4. Operativa asociada a pagos, proveedores o atención al cliente, si se vio afectada.
2. Restablecer el acceso normal de las cuentas tras verificar el cambio de credenciales, la revocación de sesiones y la ausencia de actividad anómala.
3. Revisar si es necesario restaurar configuraciones de correo, reglas, buzones o archivos modificados durante el incidente.
4. Reforzar los programas de formación frente a phishing, especialmente para departamentos de mayor riesgo.
    * Verificar remitentes y dominios.
    * Desconfiar de mensajes urgentes sobre pagos, credenciales o documentos compartidos.
    * Confirmar por un canal alternativo cualquier cambio de cuenta bancaria o instrucción económica.
    * Reportar de inmediato correos sospechosos al help desk.
5. Confirmar si fallaron controles técnicos o procedimentales y establecer acciones correctoras:
    * Mejorar filtros de correo;
    * Desplegar MFA;
    * Formalizar un procedimiento de verificación de pagos;
    * Revisar accesos desde dispositivos móviles y nube.
6. Mantener una vigilancia reforzada de las cuentas afectadas durante los días posteriores para detectar nuevos accesos o intentos de fraude.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar el aviso y abrir el incidente. |
| 2 | Clasificar la severidad inicial. |
| 3 | Identificar si hubo clic, descarga, entrega de credenciales o fraude. |
| 4 | Bloquear cuentas, sesiones, dominios o correos relacionados. |
| 5 | Aislar equipos si hubo descarga o ejecución. |
| 6 | Conservar evidencias básicas. |
| 7 | Escalar a Dirección, Seguridad, departamento afectado y apoyo legal si procede. |

### Recursos

#### Referencia: Acciones del usuario ante la sospecha de un ataque de phishing

1. Mantener la calma y no interactuar más con el correo sospechoso.
2. No pulsar enlaces, no descargar adjuntos adicionales y no responder al remitente.
3. Hacer capturas de pantalla del correo, del remitente y, si ya se hizo clic, de la página mostrada.
4. Tomar nota de:
    1. Qué se ha notado;
    2. Por qué se ha considerado sospechoso;
    3. Qué se estaba haciendo en el momento de detectarlo;
    4. Si se hizo clic, se descargó algo o se introdujeron datos;
    5. La hora aproximada;
    6. La red y ubicación desde la que se accedió, por ejemplo sede, casa, wifi, cable o VPN;
    7. El sistema y la cuenta utilizados;
    8. Si alguien más recibió el mismo mensaje.
5. Contactar con el servicio de ayuda o con TIC por el canal interno habilitado y remitir el mensaje como adjunto si se indica.
6. Cambiar la contraseña inmediatamente si se introdujeron credenciales en una web sospechosa.

#### Referencia: Acciones del servicio de ayuda ante un presunto ataque de phishing

1. Mantener la calma y abrir un ticket con prioridad adecuada.
2. Pedir al usuario capturas, hora aproximada, acciones realizadas y el mensaje original.
3. Formular preguntas de triage detalladas:
    1. Qué ha observado exactamente;
    2. Por qué le pareció sospechoso;
    3. Qué estaba haciendo en el momento de detectarlo;
    4. Cuándo ocurrió por primera vez y si se ha repetido;
    5. En qué red y ubicación estaba trabajando;
    6. Qué sistema, cuenta y buzón estaban implicados;
    7. A qué datos o aplicaciones accede habitualmente;
    8. Con quién más ha compartido el mensaje o el incidente.
4. Determinar rápidamente si hubo solo recepción del correo o también clic, descarga, ejecución o entrega de credenciales.
5. Si hubo credenciales comprometidas, forzar cambio de contraseña o escalar a TIC para bloqueo inmediato.
6. Si hubo descarga o ejecución, ordenar el aislamiento del equipo y escalar a Seguridad o TIC.
7. Registrar toda la información relevante:
    1. Usuario, departamento y sede;
    2. Dirección del remitente y asunto;
    3. Acciones realizadas;
    4. Sistemas, cuentas y datos potencialmente afectados.
8. Ponerse en contacto con el equipo TIC, el responsable de seguridad y, si procede, la subcontrata del antivirus para la respuesta coordinada.

#### Información adicional

1. [CISA - Avoiding Social Engineering and Phishing Attacks](https://www.cisa.gov/news-events/news/avoiding-social-engineering-and-phishing-attacks)
2. [CISA - Recognize and Report Phishing](https://www.cisa.gov/secure-our-world/recognize-and-report-phishing)
3. [MITRE ATT&CK - Phishing (T1566)](https://attack.mitre.org/techniques/T1566/)
4. [MITRE ATT&CK - Valid Accounts (T1078)](https://attack.mitre.org/techniques/T1078/)
5. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)
## Playbook: Ransomware

**Investigar, remediar (contener, erradicar) y comunicar en paralelo. La contención es fundamental en los incidentes de ransomware; priorízala en consecuencia.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Finalidad y activación

Este playbook define la respuesta específica ante incidentes de ransomware que afecten, o puedan afectar, a la disponibilidad, integridad o confidencialidad de la información corporativa. Su finalidad es frenar la propagación, proteger las copias de seguridad, preservar evidencias y recuperar la operativa desde estados confiables sin improvisación.

Se activará ante cualquiera de estas señales:

1. Aparición de notas de rescate, extensiones anómalas o archivos cifrados;
2. Alertas del antivirus o herramientas equivalentes compatibles con comportamiento de ransomware;
3. Cambios masivos, borrados o renombrados simultáneos en archivos o carpetas compartidas;
4. Pérdida repentina de acceso a comparticiones, bases de datos o sistemas de negocio por cifrado o corrupción;
5. Amenaza de extorsión acompañada de posible exfiltración previa.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* Responsable del incidente o responsable de seguridad, para dirigir la respuesta y priorizar decisiones;
* Equipo TIC de sistemas y endpoints, para aislamiento, reconstrucción y restauración;
* Equipo TIC de red y correo, para bloqueos, segmentación y revisión de accesos remotos;
* Help desk, para recepción de avisos y soporte operativo a usuarios;
* Responsables de proceso o negocio, para priorizar recuperación de servicios;
* Dirección y apoyo legal o RGPD, cuando exista impacto alto, continuidad afectada o riesgo regulatorio.

### Investigar

1. **Determinar el tipo** de ransomware, es decir, la familia, variante o comportamiento dominante.
    1. Encontrar mensajes relacionados:
        * Notas de rescate en texto, HTML o fondos de pantalla;
        * Cambios de extensiones de archivos;
        * Ventanas emergentes o mensajes en aplicaciones;
        * Evidencias de doble extorsión o amenaza de filtrado de datos;
        * Posibles mensajes de voz, archivos de ayuda o portales de soporte indicados por el atacante.
    2. Analizar los mensajes en busca de pistas:
        * Nombre de la variante;
        * Lenguaje, estructura, frases, gráficos o marcas distintivas;
        * Correo o portal de contacto;
        * Formato del identificador de víctima;
        * Instrucciones de pago;
        * Medio de pago exigido y cartera o dirección asociada, si aparece;
        * Tipo de datos supuestamente exfiltrados;
        * Lenguaje y referencias a grupos conocidos.
    3. Analizar archivos afectados y nuevos:
        * Patrón de renombrado;
        * Tipos de ficheros cifrados;
        * Carpetas o recursos compartidos afectados;
        * Presencia de binarios, scripts o tareas programadas;
        * Diferencia entre cifrado real, corrupción o borrado;
        * Usuario o grupo propietario de los ficheros afectados;
        * Presencia de listados de archivos, archivos clave o artefactos auxiliares.
    4. Analizar los tipos de software o sistemas afectados para valorar si la variante se dirige de forma preferente a determinadas plataformas, bases de datos, NAS o servicios concretos.
    5. Subir indicadores a servicios de identificación aprobados, como ID Ransomware o No More Ransom, sin exponer información sensible innecesaria.
2. **Determinar el alcance.**
    1. Qué sistemas están afectados.
        * Revisar puestos, portátiles, servidores de archivos, aplicaciones, correo, almacenamiento cloud y copias accesibles desde red.
        * Comprobar telemetría del antivirus subcontratado, logs del sistema, EDR si existe y eventos de red y autenticación.
        * Verificar si el incidente se ha propagado entre sedes o por VPN.
        * Buscar IOC como procesos, hashes, servicios, tareas programadas, conexiones salientes o scripts sospechosos.
        * Revisar si existen conexiones hacia infraestructura externa de mando y control o servidores de almacenamiento no habituales.
    2. Qué datos están afectados.
        * Identificar departamentos y recursos compartidos impactados: Facturación, RR. HH., clientes, ERP/CRM, documentos legales o copias de seguridad.
        * Confirmar si hay solo cifrado o también borrado, exfiltración o manipulación.
        * Revisar cambios anómalos en metadatos, horas de modificación y patrones de acceso masivo.
        * Confirmar si se han visto comprometidos datos regulados o especialmente sensibles para la empresa.
3. **Evaluar el impacto** para priorizar y asignar recursos.
    1. Impacto funcional:
        * Indisponibilidad de ficheros compartidos;
        * Interrupción de operaciones de asesoría, facturación o atención al cliente;
        * Afectación a la web, la tienda online o herramientas cloud;
        * Necesidad de operar manualmente o detener servicios internos durante horas o días.
    2. Impacto en la información:
        * Pérdida de disponibilidad;
        * Posible exfiltración de datos personales;
        * Posible afectación a información contractual, laboral o financiera;
        * Riesgo regulatorio o contractual por pérdida de acceso o filtración.
    3. Criterio orientativo de severidad:
        * **alta**, si afecta a uno o varios puestos sin propagación confirmada;
        * **muy alta**, si alcanza carpetas compartidas, servidores, varias sedes o cuentas privilegiadas;
        * **crítica**, si compromete copias de seguridad, servicios esenciales, datos personales o la continuidad del negocio.
4. **Encontrar el vector de infección.** Revisar las tácticas de acceso inicial más probables para esta empresa:
    * Correo de phishing con adjunto o enlace malicioso;
    * Credenciales comprometidas y acceso remoto;
    * Vulnerabilidades sin parchear en sistemas expuestos;
    * Uso de almacenamiento externo infectado;
    * Abuso de cuentas válidas en servicios cloud o VPN.
5. **Construir una línea temporal del incidente.**
    * Cuándo aparecieron los primeros síntomas.
    * Qué usuario o sistema fue el paciente cero probable.
    * Cuándo se detectaron cambios de ficheros, alertas del antivirus o conexiones anómalas.
    * Si hubo actividad previa de movimiento lateral, creación de cuentas o desactivación de defensas.

### Remediar

**Planificar eventos de remediación** en los que estos pasos se lancen juntos, o de forma coordinada, con los equipos apropiados listos para responder a cualquier interrupción.  
**Considerar el momento y las compensaciones** de las acciones de reparación: la respuesta tiene consecuencias.

#### Contención

**En situaciones de ransomware, la contención es fundamental. Las medidas de contención deben apoyarse en los datos de la investigación. Debe darse mayor prioridad a las cuarentenas y a otras medidas de contención que en una respuesta típica.**

Las cuarentenas deben impedir la propagación desde los sistemas infectados y proteger datos críticos y copias de seguridad.

* Poner en cuarentena los sistemas infectados desconectándolos de la red cableada, wifi, VPN y recursos cloud.
* Poner en cuarentena a los usuarios y grupos afectados si se sospecha compromiso de credenciales.
* Proteger inmediatamente archivos compartidos, NAS, unidades de red y bases de datos para evitar más cifrado.
* Aislar y proteger las copias de seguridad, especialmente las accesibles desde la red corporativa.
* Bloquear dominios, IP o artefactos de mando y control si se identifican.
* Eliminar mensajes de correo que hayan servido de vector si se confirma la vía de entrada.
* Confirmar con la subcontrata de antivirus que las firmas y políticas de detección están actualizadas y activas.
* Aumentar la monitorización de actividad de autenticación, uso de privilegios, SMB, RDP y acceso a almacenamiento cloud.
* Activar medidas de continuidad manual o alternativas operativas para los procesos de negocio más críticos.

#### Erradicar

* Preservar evidencias relevantes antes de reconstruir: nota de rescate, binarios, logs, tareas programadas, claves de registro, eventos de autenticación y muestras de archivos cifrados.
* Eliminar mecanismos de persistencia y accesos no autorizados detectados durante la investigación.
* Reconstruir los sistemas infectados desde medios conocidos como seguros cuando no se pueda garantizar una limpieza completa.
* Restaurar exclusivamente desde copias de seguridad limpias y verificadas.
* Comprobar si existe herramienta de descifrado conocida antes de restaurar, validando siempre su legitimidad en fuentes como No More Ransom.
* Corregir vulnerabilidades explotadas: parches, credenciales débiles, accesos remotos inseguros o permisos excesivos.
* Rotar contraseñas de usuarios afectados, cuentas privilegiadas, cuentas de servicio y accesos a cloud.
* Mantener vigilancia reforzada para detectar reinfección, intentos de nuevo cifrado o actividad residual.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, help desk, responsables de negocio afectados, subcontrata de antivirus, proveedor cloud y proveedor externo de la web si está implicado.
* Técnicos: consolas de backup, logs de autenticación, herramientas de análisis forense básico, acceso a firewall, inventario de activos y sistema de tickets.
* Logísticos: equipos de sustitución, ubicación alternativa para continuar tareas críticas, comunicación interna de crisis y soporte fuera de horario si fuera necesario.
* Financieros: restauración de sistemas, soporte externo especializado, ampliación temporal de licencias o almacenamiento y posibles costes legales o regulatorios.

### Comunicar

> **No se recomienda pagar el rescate:** no garantiza la recuperación de los datos ni evita una futura extorsión o filtración.

1. Elevar el incidente a Dirección, al responsable de seguridad y a los coordinadores de departamentos críticos.
    1. Activar el comité de crisis interno cuando la severidad sea muy alta o crítica.
2. Activar el plan de continuidad del negocio si la indisponibilidad afecta a operaciones esenciales.
3. Documentar cronología, sistemas afectados, decisiones de contención, restauración y evidencias.
4. Comunicarse con asesoría legal y consultoría RGPD si hay indicios de exfiltración o acceso a datos personales.
5. Informar a usuarios internos de las restricciones temporales: indisponibilidad de carpetas, aislamiento de equipos, cambios de contraseña y procedimientos alternativos.
6. Comunicar a clientes o proveedores si el incidente afecta a la prestación del servicio o a sus datos.
7. Contactar con el seguro, si existe, y cumplir plazos de notificación.
8. Considerar la comunicación a:
    1. INCIBE-CERT;
    2. AEPD, si existe brecha de datos personales notificable;
    3. Fuerzas y cuerpos de seguridad si hay extorsión, fraude o perjuicio relevante.
9. Coordinar la comunicación con proveedores externos: antivirus, cloud, hosting y soporte de copias de seguridad.
10. Si el proveedor externo de la web o tienda online se ve afectado por el mismo incidente, exigir confirmación formal del estado del entorno antes de reanudar el servicio.

### Recuperación

1. Orden recomendado de recuperación:
    1. Infraestructura mínima necesaria para autenticación, red y administración segura;
    2. CRM, ERP y servicios que soportan facturación, atención y procesos esenciales;
    3. Servidores de archivos y aplicaciones críticas;
    4. Correo corporativo y servicios de colaboración;
    5. Puestos de trabajo prioritarios por función;
    6. Web corporativa y tienda online, una vez asegurado el núcleo operativo.
2. Restaurar los datos y sistemas exclusivamente desde copias limpias y verificadas.
3. Validar funcionalmente cada servicio recuperado con su responsable de proceso.
4. Confirmar que las cuentas asociadas a los sistemas restaurados ya han sido saneadas y rotadas.
5. Mantener monitorización reforzada de logs, actividad de autenticación, tráfico de red y endpoints tras la vuelta a producción.
6. Documentar desde qué copia se restauró cada sistema, a qué hora y con qué resultado.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar los indicios y abrir el incidente. |
| 2 | Clasificar la severidad como alta, muy alta o crítica. |
| 3 | Aislar equipos, cuentas y comparticiones en riesgo. |
| 4 | Proteger copias de seguridad y credenciales privilegiadas. |
| 5 | Recoger evidencias mínimas antes de reconstruir. |
| 6 | Delimitar alcance inicial y vector probable. |
| 7 | Escalar a Dirección, Seguridad, responsables de proceso y apoyo legal si corresponde. |

### Recursos

#### Referencia: Acciones de los usuarios ante la sospecha de ransomware

1. Mantener la calma.
2. Desconectar el sistema de la red si se observa cifrado de archivos, notas de rescate o comportamiento claramente anómalo.
3. No reiniciar ni manipular el equipo más de lo necesario.
4. Hacer fotos o capturas del mensaje, nombres de archivos y errores visibles.
5. Tomar nota de:
    1. Qué se ha observado;
    2. Por qué se ha considerado sospechoso;
    3. Cuándo empezó;
    4. Qué se estaba haciendo;
    5. Dónde ocurrió y en qué red, por ejemplo sede, casa, wifi, cable o VPN;
    6. Qué sistema y nombre de equipo se estaba usando;
    7. Qué cuenta estaba iniciada;
    8. Qué unidad, carpeta o aplicación se estaba usando;
    9. A qué datos se suele acceder.
6. Contactar de inmediato con el help desk o con TIC por el canal de emergencia interno.
7. No intentar pagar ni contactar con los atacantes por cuenta propia.

#### Referencia: Acciones del servicio de asistencia técnica ante la sospecha de ransomware

1. Abrir un ticket crítico y confirmar la identidad del informante.
2. Ordenar el aislamiento inmediato del equipo o gestionar su desconexión remota si es posible.
3. Recopilar capturas, hora de inicio, archivos afectados, unidad de red implicada y acciones previas del usuario.
4. Formular preguntas de triage detalladas:
    1. Qué ha observado exactamente;
    2. Por qué pensó que era un problema;
    3. Qué estaba haciendo en ese momento;
    4. Cuándo ocurrió por primera vez y si se ha repetido;
    5. En qué red estaba trabajando, por ejemplo sede, casa, cable, wifi o VPN;
    6. Qué sistema, hostname, cuenta y recursos compartidos estaban implicados;
    7. A qué datos accede normalmente ese usuario;
    8. Con quién más ha hablado del incidente y qué información ha compartido.
5. Determinar si hay más usuarios, carpetas o servidores mostrando síntomas similares.
6. Escalar sin demora a TIC, al responsable de seguridad y al personal encargado de copias de seguridad.
7. Registrar en el ticket:
    1. Usuario, departamento y sede;
    2. Hostname y sistema afectado;
    3. Recursos compartidos implicados;
    4. Estado de las copias o restauraciones;
    5. Medidas de contención ejecutadas.
8. Colaborar en la comunicación a usuarios y en la aplicación de procedimientos alternativos de trabajo.

#### Información adicional

1. [CISA - #StopRansomware Guide](https://www.cisa.gov/stopransomware/ransomware-guide)
2. [No More Ransom](https://www.nomoreransom.org/)
3. [ID Ransomware](https://id-ransomware.malwarehunterteam.com/)
4. [MITRE ATT&CK - Data Encrypted for Impact (T1486)](https://attack.mitre.org/techniques/T1486/)
5. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)
## Playbook: Compromiso de la cadena de suministro

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Finalidad y activación

Este playbook define la respuesta específica ante incidentes que afecten a proveedores, servicios externos, componentes software o integraciones de terceros de los que depende la empresa. Su finalidad es reducir el impacto sobre la operativa, cortar relaciones de confianza inseguras y coordinar la respuesta con los terceros implicados.

Se activará ante cualquiera de estas señales:

1. Notificación oficial de incidente por parte de un proveedor crítico;
2. Comportamiento anómalo tras una actualización, integración o cambio de tercero;
3. Detección interna de software, servicio o componente comprometido de origen externo;
4. Sospecha de abuso de credenciales compartidas, API o accesos remotos de proveedor.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* Responsable del incidente o responsable de seguridad, para coordinar y escalar la respuesta;
* Equipo TIC, para revisar integraciones, accesos, configuraciones y dependencias;
* Help desk, para centralizar avisos y registrar afectación operativa;
* Responsables de negocio afectados, para priorizar servicios dependientes del tercero;
* Proveedor implicado y, si procede, asesoría jurídica o apoyo RGPD.

### Investigar

1. Confirmar la existencia del incidente y **qué proveedor, servicio o componente** está comprometido.
    * Puede afectar a software, actualizaciones, integraciones cloud, proveedor de hosting web o tienda online, servicio antimalware, librerías de terceros o hardware.
    * En esta empresa deben priorizarse especialmente estos terceros: proveedor de hosting de la web y la tienda online, subcontrata del antivirus, servicios cloud de almacenamiento y consultoría externa vinculada al cumplimiento.
2. Determinar **cómo se ha detectado**.
    * Notificación oficial del proveedor.
    * Alerta interna del equipo TIC.
    * Comportamiento anómalo tras una actualización, integración o cambio de proveedor.
    * Aviso de clientes, usuarios o inteligencia externa.
3. Delimitar **el alcance del compromiso**.
    * Qué sistemas internos dependen del proveedor comprometido.
    * Qué datos se intercambian con el tercero.
    * Si el incidente afecta a la página web, tienda online, correo, almacenamiento cloud o antivirus gestionado externamente.
    * Si existen credenciales compartidas, API, certificados o accesos remotos activos.
4. Evaluar **impacto técnico y de negocio**.
    * Interrupción operativa por desactivar el servicio de terceros.
    * Riesgo para datos personales de clientes y proveedores.
    * Manipulación de actualizaciones, código, configuraciones o ficheros sincronizados.
    * Riesgo reputacional por afectar a la web o a la tienda online.
    * Criterio orientativo de severidad:
        * **media**, si el incidente queda acotado al tercero y sin impacto confirmado en la empresa;
        * **alta**, si afecta a servicios de negocio, cuentas compartidas o datos internos;
        * **crítica**, si afecta a la web, a la tienda online, a datos personales o a varios proveedores estratégicos a la vez.
5. Recopilar y preservar evidencia.
    * Comunicaciones del proveedor, logs de integración, cambios de versión, indicadores de compromiso, contratos, SLA y registros de acceso.
    * Línea temporal desde la actualización o dependencia sospechosa hasta la detección.
6. Formular preguntas clave.
    * Si el proveedor ha reconocido el incidente y ha dado medidas concretas;
    * Si existen otros clientes afectados o vulnerabilidades publicadas;
    * Si se ha producido ejecución de código, fuga de datos, sabotaje o simple indisponibilidad;
    * Si hay componentes internos que puedan haber heredado el compromiso.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos, o de forma coordinada, con los equipos adecuados listos para responder a cualquier interrupción.
* **Considerar el momento y las compensaciones** de las acciones de remediación: la respuesta tiene consecuencias.

#### Contención

* Desconectar temporalmente integraciones, API, actualizaciones automáticas o accesos remotos asociados al proveedor comprometido cuando el riesgo lo justifique.
* Revocar o rotar credenciales, claves API, certificados y secretos compartidos con el tercero.
* Aislar sistemas internos que hayan recibido software, ficheros o configuraciones sospechosas del proveedor.
* Bloquear comunicaciones hacia dominios, endpoints o repositorios comprometidos.
* Incrementar el nivel de logging y monitorización en todos los sistemas relacionados con el tercero.
* Coordinar de inmediato con el proveedor externo para exigir información técnica, plan de remediación y ventanas seguras de servicio.
* Si la web o la tienda online están afectadas, valorar su paso a modo mantenimiento o limitación funcional temporal.

#### Erradicar

* Eliminar o desinstalar versiones comprometidas de software, plugins, dependencias o agentes desplegados por el proveedor.
* Aplicar versiones corregidas, parches o configuraciones alternativas validadas antes de reconectar.
* Revisar si se introdujeron puertas traseras, cuentas de servicio no autorizadas, tareas programadas, cambios en código o reglas de sincronización.
* Reforzar controles sobre terceros:
    * Privilegio mínimo;
    * Segmentación de acceso;
    * Rotación de secretos;
    * Aprobación formal de cambios.
* Exigir al proveedor evidencia de erradicación y plan de prevención antes de restaurar la confianza operativa.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, responsables de negocio afectados, proveedor externo implicado, área legal y consultoría RGPD.
* Técnicos: inventario de proveedores, consolas cloud, logs de integración, sistema de tickets, contratos o SLA y accesos a firewall o proxies.
* Logísticos: canales de escalado con proveedores, procedimiento de mantenimiento de la web o tienda y alternativas temporales de operación.
* Financieros: soporte externo, costes de sustitución temporal del proveedor, revisiones de seguridad y posibles penalizaciones o gestiones contractuales.

### Comunicar

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Escalar el incidente a Dirección y al responsable de seguridad, resaltando dependencia de negocio y alcance.
    1. Si el tercero afectado es el proveedor web, la subcontrata del antivirus o un servicio cloud crítico, el escalado será inmediato aunque el impacto técnico inicial parezca limitado.
2. Contactar formalmente con el proveedor afectado y documentar todas las comunicaciones.
3. Informar a departamentos internos afectados de restricciones, caídas de servicio o cambios operativos.
4. Coordinar con asesoría legal y consultoría RGPD si el incidente implica datos personales o incumplimientos contractuales.
5. Preparar comunicación externa para clientes o proveedores si la prestación del servicio se ha visto afectada.
6. Valorar notificación a organismos competentes si existe fuga de datos o afectación relevante a terceros.
7. Registrar compromisos, tiempos de respuesta y medidas propuestas por el proveedor para futuras decisiones de riesgo.

### Recuperación

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Orden recomendado de recuperación:
    1. Servicios internos críticos que dependan del tercero y tengan alternativa segura;
    2. Integraciones con datos sensibles o acceso privilegiado;
    3. Web, tienda online o canales visibles para clientes, si se han visto afectados;
    4. Resto de integraciones y servicios secundarios.
2. Restaurar los servicios afectados solo cuando exista evidencia suficiente de que la integración, el software o el proveedor vuelven a ser seguros.
3. Validar funcionalidad, integridad y seguridad antes de reabrir completamente la operativa.
4. Rotar nuevamente credenciales y revisar permisos residuales tras la reconexión.
5. Mantener monitorización reforzada durante semanas sobre los sistemas vinculados al proveedor.
6. Revisar y mejorar la gestión de terceros:
    * Inventario actualizado;
    * Clasificación por criticidad;
    * Cláusulas de notificación de incidentes;
    * Revisiones de seguridad periódicas;
    * Dependencia mínima necesaria.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar el incidente y el tercero afectado. |
| 2 | Clasificar la severidad según el impacto de negocio y datos. |
| 3 | Cortar accesos, integraciones o actualizaciones asociadas si existe riesgo activo. |
| 4 | Preservar comunicaciones y evidencias técnicas. |
| 5 | Escalar a Seguridad, Dirección y responsables de negocio afectados. |
| 6 | Exigir al proveedor información técnica, alcance y medidas inmediatas. |
| 7 | Definir qué servicios deben mantenerse, limitarse o detenerse temporalmente. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de incidente en la cadena de suministro

1. Mantener la calma y reportar cualquier anomalía observada tras una actualización, cambio de proveedor o incidencia en un servicio externo.
2. No reinstalar software, no repetir actualizaciones y no reconectar integraciones sin indicación de TIC.
3. Anotar qué aplicación o servicio se vio afectado, a qué hora y qué cambio previo se realizó.
4. Seguir únicamente las comunicaciones internas oficiales.

#### Referencia: Acciones del Help Desk ante posible incidente en la cadena de suministro

1. Abrir un ticket prioritario y registrar el proveedor o servicio afectado.
2. Recoger:
    1. Aplicación o sistema impactado;
    2. Fecha del cambio o actualización relacionada;
    3. Síntomas observados;
    4. Usuarios o departamentos afectados.
3. Escalar a TIC y al responsable de seguridad si hay relación con proveedores críticos.
4. Documentar toda comunicación recibida del proveedor.
5. No autorizar reconexiones ni restablecimientos sin validación técnica.

#### Información adicional

1. [MITRE ATT&CK - Supply Chain Compromise (T1195)](https://attack.mitre.org/techniques/T1195/)
2. [CISA - Defending Against Software Supply Chain Attacks](https://www.cisa.gov/resources-tools/resources/software-supply-chain-attacks)
3. [NCSC UK - Supply Chain Security Collection](https://www.ncsc.gov.uk/collection/supply-chain-security)
4. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)

# Roles

A continuación se presentan las descripciones, los deberes y la formación para cada uno de los roles definidos en la respuesta a un incidente.


## Estructura de los roles

### Equipo de Mando

- [Incident Commander](roles/role-1-commander.md)
- [Incident Commander - Adjunto](roles/role-2-deputy.md)
- [Escriba](roles/role-3-scribe.md)

---

### Equipo de Enlace

- [Enlace interno](roles/role-5-liaison.md)
- Enlace externo

---

### Equipo de Operaciones

- [Expertos en la materia (SME)](roles/role-4-expert.md)
- SMEs para equipos/unidades de negocio
- SMEs para las funciones ejecutivas (_p.ej._, Legal, RRHH, Finanzas)

Esta es una **estructura flexible**: cada rol no será ocupado por una persona diferente para cada incidente. Por ejemplo, en un incidente pequeño, el adjunto podría actuar como escribiente y enlace interno. La estructura es flexible y se adapta al incidente.

## Tiempos de Guerra vs. Tiempos de Paz

En las llamadas de respuesta a Incidentes ("tiempos de guerra"), una estructura organizativa diferente anula las operaciones normales ("tiempos de paz"):

* El Comandante del incidente está al mando. Independientemente de su rango en tiempos de paz, ahora es la persona de mayor rango en la llamada, superior al director general o CEO.
* Los primeros intervinientes (las personas que actúan como primeros intervinientes de un equipo/servicio) son las personas de mayor rango de ese servicio.
* Las decisiones serán tomadas por el IC tras considerar la información presentada. Una vez tomada la decisión, es definitiva.
* El IC puede tomar decisiones más arriesgadas que las que normalmente se considerarían en tiempos de paz.
* El IC puede ir en contra de una decisión consensuada. Si se hace una encuesta, y 9/10 personas están de acuerdo pero 1 está en desacuerdo. El IC puede elegir la opción del desacuerdo a pesar del voto de la mayoría. Aunque no esté de acuerdo, la decisión del IC es definitiva. Durante la convocatoria no es el momento de discutir con ellos.
* El IC puede utilizar un lenguaje o comportarse de una manera que usted considere grosera. Esto es tiempo de guerra, y necesitan hacer lo que sea necesario para resolver la situación, por lo que a veces se producen groserías. Esto no es personal, y es algo que debes estar preparado para experimentar si nunca has estado en una situación de guerra.
* Es posible que el IC te pida que abandones la llamada, o incluso que te eche a la fuerza de una llamada. Esto queda a discreción del IC si considera que no estás aportando nada útil. De nuevo, esto no es personal y debes recordar que los tiempo de guerra son diferentes a los tiempo de paz.
## Roles: Todos los participantes

### Descripción

Todos los participantes involucrados en la gestión de un incidente deben colaborar activamente en su resolución, siguiendo en todo momento el Plan de Respuesta a Incidentes y bajo la coordinación del Incident Commander (IC).

---

## Responsabilidades

### Buenas prácticas de comunicación

- Participar tanto en la llamada como en el canal de chat habilitado.
- Mantener el ruido de fondo al mínimo durante la comunicación.
- Mantener el micrófono silenciado mientras no se esté interviniendo.
- Identificarse al incorporarse a la llamada indicando nombre y función (por ejemplo: “Soy el SME del equipo X”).
- Comunicarse de forma clara, precisa y comprensible.
- Realizar intervenciones directas, breves y centradas en el incidente.
- Informar al Incident Commander de cualquier incidencia, bloqueo o preocupación relevante.
- Respetar los turnos y tiempos establecidos por el Incident Commander.
- Evitar participar únicamente por voz o únicamente por chat, ya que puede afectar a la coordinación del equipo.
- Utilizar un lenguaje claro y evitar acrónimos o abreviaturas innecesarias. La precisión debe prevalecer sobre la brevedad.

---

### Referencia: Procedimiento habitual de comunicación por voz

Aunque el protocolo estándar de comunicación por radio no es obligatorio, pueden utilizarse algunas expresiones habituales para agilizar la coordinación:

- **Ack / Rog:** “Recibido y entendido”.
- **Say again:** “Repita el último mensaje”.
- **Standby:** “Espere un momento”.
- **Wilco:** “Entendido y en ejecución”.

No deben crearse nuevas abreviaturas o códigos. Siempre es preferible mantener una comunicación explícita y clara.

---

### Coordinación con el Incident Commander

El Incident Commander (IC) es la persona responsable de dirigir y coordinar la respuesta al incidente.

- Seguir en todo momento las instrucciones del Incident Commander.
- No ejecutar acciones sin autorización previa del IC.
- Expresar cualquier objeción o riesgo antes de la asignación o ejecución de tareas relevantes.
- Una vez tomada una decisión, esta deberá ejecutarse aunque existan desacuerdos personales.
- Responder de forma clara y directa a las preguntas del IC. En caso de no disponer de la información solicitada, deberá indicarse expresamente.
- Cumplir los plazos establecidos por el IC o, si no fuese posible, comunicar una estimación alternativa razonable.

---

## Formación

Todos los participantes deben conocer y comprender el Plan de Respuesta a Incidentes, incluyendo los roles definidos, las responsabilidades asignadas y los procedimientos establecidos para la gestión de incidentes de seguridad.## Rol: Incident Commander

### Descripción

El Incident Commander (IC) es la máxima autoridad durante la gestión de un incidente grave y actúa como la fuente principal de información fiable sobre el estado del incidente y las acciones que deben realizarse. Este rol prevalece sobre cualquier jerarquía habitual dentro de la organización mientras el incidente permanezca activo.

El Incident Commander es responsable de coordinar la respuesta al incidente, tomar las decisiones principales, asignar tareas y apoyarse en expertos técnicos para la investigación y resolución. Todas las decisiones finales relacionadas con la gestión del incidente corresponden al IC.

Su función principal es evaluar continuamente la situación, mantener una dirección clara y coordinada, y delegar las actividades técnicas necesarias para la investigación, contención y recuperación. El IC no debe ejecutar directamente tareas técnicas de investigación o remediación.

---

## Deberes

El objetivo principal del Incident Commander es garantizar una resolución rápida, segura y coordinada del incidente, siguiendo el Plan de Respuesta a Incidentes como referencia principal.

### Preparación ante incidentes

- Establecer y mantener los canales de comunicación para la gestión de incidentes.
- Redirigir a los participantes hacia los canales oficiales cuando se declare un incidente grave.
- Formar a los miembros del equipo en procedimientos y comunicación durante incidentes.
- Participar en la formación de nuevos Incident Commanders.

---

### Gestión del incidente

- Centralizar toda la comunicación relacionada con el incidente en un único canal oficial.
- Recopilar información a través de los responsables de estado y expertos técnicos.
- Solicitar propuestas de solución y decidir qué acciones serán ejecutadas.
- Delegar todas las acciones técnicas necesarias para la resolución.
- Actuar como la única fuente de información oficial sobre el estado del incidente y de los sistemas afectados.

---

### Coordinación de llamadas y reuniones

- Garantizar el consenso cuando sea necesario mediante preguntas directas o votaciones.
- Proporcionar actualizaciones periódicas sobre el estado del incidente.
- Reducir el impacto y alcance del incidente siempre que sea posible.
- Crear subequipos de trabajo cuando la situación lo requiera.
- Transferir la coordinación del incidente cuando proceda.
- Finalizar las reuniones y llamadas de manera ordenada.
- Mantener el orden y la disciplina durante las comunicaciones.
- Solicitar respuestas claras, concretas y orientadas a la resolución.

Gestionar adecuadamente situaciones como:

- Intervenciones ejecutivas o jerárquicas que intenten alterar la toma de decisiones.
- Solicitudes de información no prioritarias durante el incidente.
- Cuestionamientos sobre la gravedad o prioridad del incidente.
- Comportamientos disruptivos o conflictivos dentro de la llamada o canales de comunicación.

---

### Post-mortem

- Crear una plantilla inicial de análisis post-mortem inmediatamente después del incidente para recopilar información relevante mientras aún está reciente.
- Programar y coordinar la revisión post-mortem una vez finalizado el incidente.
- Coordinar con responsables de equipo la definición de acciones correctivas y preventivas.

---

## Buenas prácticas del Incident Commander

- Anunciar claramente su rol al incorporarse a la llamada o asumir la coordinación.
- Evitar desviaciones innecesarias en las discusiones.
- Mantener las intervenciones breves, claras y enfocadas en la resolución.
- Escuchar objeciones y recomendaciones antes de tomar decisiones.
- Mantener la autoridad final sobre las decisiones tomadas durante el incidente.
- Retirar de la llamada a participantes que dificulten activamente la coordinación o la toma de decisiones.
- Comunicar explícitamente el cierre del incidente y de la llamada.
- Compartir aprendizajes y mejoras identificadas con otros Incident Commanders.

---

## Formación

Para desempeñar el rol de Incident Commander se recomienda:

- Leer y comprender completamente el Plan de Respuesta a Incidentes, incluyendo roles y procedimientos.
- Participar en simulacros y ejercicios de respuesta a incidentes.
- Observar a un Incident Commander con experiencia durante incidentes reales.
- Asumir el rol de forma supervisada cuando sea posible.
- Participar en sesiones prácticas de coordinación y comunicación.
- Consultar materiales adicionales relacionados con gestión y coordinación de incidentes.

---

## Requisitos previos

No existen requisitos formales de antigüedad para asumir el rol. Cualquier persona con la preparación adecuada puede desempeñarlo. Antes de asumir la función, se espera contar con:

- Excelentes habilidades de comunicación oral y escrita.
- Conocimiento general de la infraestructura tecnológica y del negocio.
- Capacidad de análisis, pensamiento crítico y toma de decisiones.
- Capacidad para escuchar a expertos técnicos y adaptar decisiones cuando sea necesario.
- Participación previa en al menos dos incidentes.
- Habilidades de liderazgo y capacidad para mantener el orden durante reuniones críticas.

No es obligatorio disponer de conocimientos técnicos avanzados, ya que el Incident Commander coordina la respuesta, pero no ejecuta directamente cambios técnicos.

---

## Incorporación

Una vez completada la formación y demostradas las capacidades necesarias, la persona podrá ser incorporada oficialmente a la lista de Incident Commanders de la organización.## Rol: Adjunto del Incident Commander

### Descripción

El adjunto del Incident Commander (IC) es un rol de apoyo directo encargado de asistir al Incident Commander durante la gestión de un incidente. Su principal objetivo es facilitar que el IC pueda centrarse en la coordinación y resolución del incidente sin distraerse con tareas administrativas, seguimiento de tiempos o control operativo.

Este rol contribuye al mantenimiento del orden, la supervisión de tareas y la coordinación de la comunicación durante todo el incidente. Asimismo, debe estar preparado para asumir temporalmente las funciones del Incident Commander cuando sea necesario.

---

## Funciones

- Proporcionar al Incident Commander recordatorios, avisos o preguntas relevantes que puedan pasar desapercibidos durante la gestión del incidente.
- Sustituir al Incident Commander en caso de que este necesite abandonar temporalmente el rol o delegar la coordinación.
- Ayudar en la gestión de la llamada y de los canales de comunicación asociados al incidente.
- Retirar participantes de la llamada o del canal de comunicación cuando así lo indique el Incident Commander y estén dificultando la coordinación.
- Supervisar el estado general del incidente y notificar al Incident Commander cualquier cambio relevante en la severidad o el impacto.

---

### Supervisión de temporizadores y tiempos

- Controlar la duración total del incidente desde su apertura.
- Informar periódicamente al Incident Commander sobre el tiempo transcurrido desde el inicio del incidente.
- Supervisar los plazos establecidos para las tareas asignadas.
- Notificar cuando los tiempos acordados estén próximos a finalizar o hayan expirado.
- Recordar seguimientos pendientes o tareas sin actualizar.

Ejemplos de comunicación:

- “El incidente lleva 10 minutos activo”.
- “El temporizador asignado al equipo X ha finalizado”.
- “Quedan 5 minutos para la actualización comprometida”.

---

## Formación

- Leer y comprender completamente el Plan de Respuesta a Incidentes, incluyendo los roles, responsabilidades y procedimientos establecidos.

---

## Requisitos previos

- Haber recibido formación previa como Incident Commander.
- Disponer de buenas habilidades de comunicación y coordinación.
- Ser capaz de mantener el seguimiento de tareas, tiempos y participantes durante situaciones de presión.## Rol: Scribe

### Descripción

El escriba es responsable de documentar de forma continua la evolución del incidente, asegurando que todas las decisiones, acciones y eventos relevantes queden correctamente registrados para su posterior revisión y análisis.

Su función principal es mantener una línea temporal clara y estructurada del incidente, recopilando la información necesaria para auditorías, revisiones post-mortem y acciones de seguimiento posteriores.

---

## Funciones

- Verificar que la llamada o reunión del incidente esté siendo grabada, cuando corresponda.
- Registrar en el chat y en la línea temporal del incidente todos los eventos relevantes conforme ocurran, incluyendo:
  - Acciones importantes realizadas durante la gestión del incidente.
  - Actualizaciones de estado comunicadas por el Incident Commander.
  - Decisiones relevantes tomadas durante la llamada y en la fase de cierre del incidente.
- Actualizar los canales de comunicación indicando quién desempeña los roles de:
  - Incident Commander.
  - Adjunto del Incident Commander.
  - Escriba.
  
  Esto deberá realizarse si dicha información aún no ha sido comunicada oficialmente.

---

### Registro y seguimiento de información relevante

El rol del escriba requiere criterio y capacidad de síntesis para identificar qué información resulta relevante dentro del incidente. No se trata de una transcripción literal, sino de un registro estructurado de los elementos importantes para la gestión y revisión posterior.

El escriba debe asegurarse de registrar especialmente:

- El resultado de decisiones tomadas mediante consenso o votación.
- Acciones pendientes o elementos que requieran seguimiento posterior.
- Propuestas, dudas o cuestiones relevantes planteadas durante el incidente, tales como:
  - “Deberíamos implementar esta medida”.
  - “¿Por qué no se realizó esta acción?”.
  - “Será necesario revisar este proceso posteriormente”.

---

## Formación

El escriba debe leer y comprender el Plan de Respuesta a Incidentes, incluyendo los roles, responsabilidades y procedimientos definidos.

---

## Requisitos previos

- Excelentes habilidades de comunicación oral y escrita.
- Capacidad de síntesis y organización de la información.
- Cualquier participante puede asumir el rol de escriba durante un incidente, normalmente por asignación directa del Incident Commander al inicio de la llamada.
- Habitualmente, el adjunto del Incident Commander también desempeña las funciones de escriba.

---

## Proceso de formación

- Estudiar el Plan de Respuesta a Incidentes completo, incluyendo roles, responsabilidades y manuales asociados.
- Participar u observar incidentes reales o simulaciones para familiarizarse con la documentación de eventos.
- Opcionalmente, comparar los registros realizados con los del Incident Commander para mejorar la calidad y precisión de la documentación.## Rol: Experto en la materia (Subject Matter Expert, SME)

### Descripción

El experto en la materia (SME) es la persona con conocimiento especializado en un dominio, componente o servicio concreto. Su función principal es apoyar al Incident Commander (IC) en el análisis del incidente, ayudando a identificar la causa raíz y a evaluar posibles acciones de investigación, mitigación y comunicación.

Además, es responsable de dar seguimiento a las tareas asignadas dentro de su área de especialización.

---

## Funciones

- Diagnosticar problemas habituales dentro de su ámbito de responsabilidad.
- Resolver, cuando sea posible, incidencias detectadas durante el incidente de forma rápida y efectiva.
- Proporcionar información clara, estructurada y accionable:

  - **Estado:** describir la situación actual de su área (operativa o con incidencias).
  - **Acciones:** proponer medidas necesarias si se detectan problemas.
  - **Necesidades:** indicar qué recursos, accesos o apoyo requiere para ejecutar dichas acciones.

- Participar activamente en las fases de investigación, mitigación y comunicación del incidente.
- Proponer acciones al Incident Commander, entendiendo que la decisión final corresponde siempre al IC.
- Ejecutar únicamente las acciones que le sean asignadas explícitamente.

---

## Responsabilidades durante la guardia

### Preparación

- Conocer en profundidad las políticas y procedimientos de respuesta a incidentes.
- Configurar correctamente los sistemas de monitorización y alertas.
- Asegurar el acceso a las herramientas necesarias para participar en incidentes.
- Planificar la disponibilidad durante el periodo de guardia.
- Evitar solapamientos entre la guardia de Incident Commander y la de SME, cuando sea aplicable.

---

### Durante la guardia

- Permanecer localizable y con acceso a un dispositivo con conexión a internet.
- Garantizar cobertura en caso de ausencias o compromisos planificados.
- Responder a alertas de incidente y unirse a la llamada lo antes posible.
- Responder a las preguntas del Incident Commander de forma clara, precisa y directa.
- Ejecutar las tareas asignadas por el Incident Commander, incluso si no se está completamente de acuerdo.
- Escalar dudas o situaciones complejas a otros miembros del equipo cuando sea necesario.
- Mantener el foco en la resolución del problema, evitando la asignación de culpas.

---

## Formación

- Leer y comprender completamente el Plan de Respuesta a Incidentes, incluyendo roles, responsabilidades y procedimientos establecidos.## Rol: Enlace

### Descripción

El rol de enlace es responsable de facilitar la comunicación entre el equipo de respuesta a incidentes y cualquier persona o equipo externo al mismo. Su objetivo es garantizar que la información relevante se transmita de forma clara, coherente y oportuna entre todas las partes implicadas.

Existen dos modalidades principales:

- **Enlace externo:** encargado de la comunicación con clientes, usuarios finales y público externo.
- **Enlace interno:** encargado de la comunicación con equipos internos y otras áreas de la organización.

---

## Funciones del enlace externo

- Publicar actualizaciones relacionadas con el incidente en canales externos, como redes sociales u otros medios oficiales.
- Informar al Incident Commander de cualquier comunicación recibida por clientes, usuarios o medios de comunicación.
- Compartir con los clientes el informe post-mortem una vez finalizado el incidente, cuando proceda.
- Coordinar la interacción con proveedores, socios u otras entidades externas cuando sea necesario.
- Colaborar con el Incident Commander y otros roles en la redacción de mensajes externos, sin asumir la responsabilidad de forma individual.
- Mantener a los clientes informados durante el incidente según el nivel de impacto y necesidad de comunicación.
- Representar la perspectiva del cliente dentro del equipo de respuesta al incidente.
- Obtener siempre la aprobación del Incident Commander antes de publicar cualquier comunicación externa.

### Pautas para mensajes públicos

- Preparar mensajes iniciales cuando aún no se disponga de información completa sobre el incidente.
- Mantener una comunicación transparente, basada únicamente en información verificada.
- Evitar suposiciones o datos no confirmados.
- Describir el progreso de forma clara, por ejemplo:
  - “Se está investigando un incidente que afecta a…”
  - “Se están analizando retrasos en el servicio…”
  - “Se ha implementado una corrección y se está desplegando…”
  - “El incidente ha sido resuelto…”
- Explicar de forma comprensible el impacto en los clientes.
- Ofrecer alternativas o soluciones temporales si están disponibles.
- Evitar proporcionar estimaciones de tiempo de resolución.
- Ajustar el nivel de detalle al tipo de audiencia.

---

## Funciones del enlace interno

- Contactar con expertos en la materia (SME) u otros equipos cuando lo indique el Incident Commander.
- Notificar y coordinar la participación de equipos internos como legal, finanzas, marketing u otros, según sea necesario.
- Facilitar la comunicación entre equipos internos implicados en la resolución del incidente.
- Mantener informadas a las partes interesadas internas sin interrumpir la coordinación principal del incidente.
- Proporcionar resúmenes de estado a la dirección o partes interesadas cuando sea requerido.

---

## Formación

- Leer y comprender completamente el Plan de Respuesta a Incidentes, incluyendo roles, responsabilidades y procedimientos establecidos.

---

## Requisitos previos

- Excelentes habilidades de comunicación oral y escrita.
- Se valora formación en atención al cliente.
- Se valora formación en comunicación corporativa, relaciones públicas o marketing.# Realizar una revisión posterior a la acción (Conduct an After Action Review, AAR)

1. Programe una reunión de revisión posterior a la acción (AAR) dentro de 5 días laborables e invite a los asistentes que figuran en https://ir.kiwiincidentes.es/aar/attendees. Incluya siempre a los siguientes:
    * El Incident Commander.
    * Los propietarios de los servicios implicados en el incidente.
    * Ingeniero(s)/responsable(s) clave(s) implicado(s) en el incidente.
1. Designe a un propietario del AAR que investigue el incidente antes de la reunión para prepararlo, estudiando el proceso del incidente en sí, incluyendo la revisión de notas e informes.

## Realización de la reunión AAR

Documente las respuestas a las siguientes preguntas clave:

1. **¿Qué ocurrió?** Cree una línea de tiempo, apoyada con datos u otros artefactos. **Evitar las culpas. Busca los hechos.**
1. **¿Qué se suponía que iba a ocurrir?**
    * Detallar las desviaciones del proceso, el procedimiento o las mejores prácticas, incluidas las evaluaciones de los SME.
    * Identifique las formas en que el incidente podría haberse detectado antes o haberse respondido con mayor eficacia.
1. **¿Cuáles fueron las causas fundamentales?** Encuentre la raíz de lo que ocurrió y de lo que debería haber ocurrido.
1. **¿Cómo podemos mejorar?**  Capture los elementos de acción con asignados y fechas de vencimiento. Considerar:
    * Detener: ¿Qué debemos dejar de hacer?
    * Empezar: ¿Qué deberíamos empezar a hacer?
    * Continuar: ¿Qué debemos seguir haciendo?

## Comunicar el estado y los resultados del AAR

El propietario del informe, en coordinación con el enlace interno, comunicará el estado del informe (véase más abajo).

### Descripciones de estado

| Estado          | Descripción                                                                                                                                                                                                                                                                                                              |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Borrador**    | La investigación de la AAR sigue en curso                                                                                                                                                                                                                                                                                |
| **En revisión** | La investigación AAR se ha completado, y está lista para ser revisada durante la reunión AAR.                                                                                                                                                                                                                            |
| **Revisado**    | La reunión de AAR ha terminado y el contenido ha sido revisado y acordado. <br/>Si hay "Mensajes externos" adicionales, el equipo de comunicación tomará medidas para prepararlos.                                                                                                                                            |
| **Cerrado**     | No es necesario realizar más acciones en el AAR (los problemas pendientes se rastrean en los tickets).<br>Si no hay "Mensajes Externos", pase directamente a esto una vez que la reunión haya terminado.<br/>Si hay "Mensajes Externos" adicionales, el equipo de comunicaciones actualizará el AAR Cerrado una vez enviado. |

Comunicar internamente los resultados del AAR y finalizar la documentación del AAR.

# Acerca de

Esta plantilla ha sido creada por el equipo de [Counteractive Security](https://www.counteractive.net), para ayudar a todas las organizaciones a comenzar de forma concisa, directa, especifica, flexible y gratuita un plan de respuesta de incidentes. crea un plan [que utilizaras](https://www.counteractive.net/posts/an-ir-plan-you-will-use/) para responder de manera eficiente, minimizando los costes e impactos, para volver a trabajar lo mas rapido posible.


## Licencia

Esta plantilla esta proporcionado bajo la licencia de apache, version 2.0. puedes ver el codigo fuente en https://github.com/counteractive.


## Instrucciones

Personaliza esta plantilla para tu organizacion. Las instrucciones estan disponibles en el [README](https://github.com/counteractive) del projecto. Para asistencia profesional con respuestas de incidentes, o con customizacion, implementacion, o testeo de tu plan, porfavor contacta con nosotros por [email](mailto:support@counteractive.net) o [telefono](tel:+18889255765).


## Referencias y material adicional

* [NIST Computer Security Incident Handling Guide](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf) (NIST)
* [CERT Societe Generale Incident Response Methodologies](https://github.com/certsocietegenerale/IRM/tree/master/EN)
* [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
* [Incident Handler's Handbook](https://www.sans.org/reading-room/whitepapers/incident/incident-handlers-handbook-33901) (SANS)
* [Responding to IT Security Incidents](https://technet.microsoft.com/en-us/library/cc700825.aspx) (Microsoft)
* [Defining Incident Management Processes for CSIRTs: A Work in Progress](http://resources.sei.cmu.edu/library/asset-view.cfm?assetid=7153) (CMU)
* [Creating and Managing Computer Security Incident Handling Teams (CSIRTS)](https://www.first.org/conference/2008/papers/killcrece-georgia-slides.pdf) (CERT)
* [Incident Management for Operations](http://shop.oreilly.com/product/0636920036159.do) (Rob Schnepp, Ron Vidal, Chris Hawley)
* [_Incident Response & Computer Forensics, Third Edition_](http://a.co/cUkFzMh) (Jason Luttgens. Matthew Pepe. Kevin Mandia)
* [_Incident Response_](http://shop.oreilly.com/product/9780596001308.do) (Kenneth R. van Wyk, Richard Forno)
* [The Checklist Manifesto](http://atulgawande.com/book/the-checklist-manifesto/) (Atul Gawande)
* [The Field Guide to Understanding Human Error](https://www.amazon.com/Field-Guide-Understanding-Human-Error/dp/0754648265) (Sidney Dekker)
* [Normal Accidents: Living with High-Risk Technologies](https://www.amazon.com/Normal-Accidents-Living-High-Risk-Technologies/dp/0691004129) (Charles Perrow)
* [Site Reliability Engineering](https://landing.google.com/sre/book.html) (Google)
* [Debriefing Facilitation Guide](http://extfiles.etsy.com/DebriefingFacilitationGuide.pdf) (Etsy)
* [Every Minute Counts: Leading Heroku's Incident Response](https://www.heavybit.com/library/video/every-minute-counts-coordinating-herokus-incident-response/) (Blake Gentry)
* [Three Analytical Traps in Accident Investigation](https://www.youtube.com/watch?v=TqaFT-0cY7U) (Dr. Johan Bergström)
* [US National Incident Management System (NIMS)](https://www.fema.gov/national-incident-management-system) (FEMA)
* [Informed's NIMS Incident Command System Field Guide](https://www.amazon.com/gp/product/1284038408) (Michael J. Ward)
* [Advanced PostMortem Fu and Human Error 101 (Velocity 2011)](http://www.slideshare.net/jallspaw/advanced-postmortem-fu-and-human-error-101-velocity-2011)
* [Blame. Language. Sharing.](http://fractio.nl/2015/10/30/blame-language-sharing/)

