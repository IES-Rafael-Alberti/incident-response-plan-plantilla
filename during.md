# Incident Response Plan for {{COMPANY_NAME}}

Autor: {{AUTHOR_NAME}}, {{AUTHOR_EMAIL}}

Revisión {{REVISION_NUMBER}}, publicada el {{RELEASE_DATE}}

Este plan de respuesta a incidentes se basa en la plantilla concisa, directiva, específica, flexible y gratuita publicada por Counteractive Security en [GitHub](https://github.com/counteractive/incident-response-plan-template) y explicada en [www.counteractive.net](https://www.counteractive.net/posts/an-ir-plan-you-will-use/).

Última revisión: {{REVIEW_DATE}}. Última prueba: {{TEST_DATE}}.

`TODO: Adaptar esta plantilla a la organización siguiendo las instrucciones de https://github.com/counteractive/incident-response-plan-template.`

# Assess

1. **Mantén la calma y actúa con profesionalidad.**
1. Recopila información pertinente, como alertas, eventos, datos, hipótesis iniciales o intuiciones justificadas (**observar**).
1. Valora las categorías de impacto indicadas abajo (**orientar**) y determina si existe un posible incidente (**decidir**).
1. Inicia la respuesta si hay indicios de incidente (**actuar**). En caso de duda, inicia la respuesta: el Incident Commander y el equipo podrán ajustar el alcance tras investigar.

## Assess Functional Impact

¿Cuál es el impacto directo o probable sobre la misión u operación de la organización? (_e.g._, operaciones de negocio, empleados, clientes, usuarios)

* Degradación o fallo de la misión o del negocio: **incidente**.
* Sin impacto funcional: evaluar impacto sobre la información.

## Assess Information Impact

¿Cuál es el impacto directo o probable sobre la información o los datos, especialmente si son sensibles? (_e.g._, datos personales, información propietaria, financiera o sanitaria)

* Información accedida, extraída, modificada o eliminada: **incidente**.
* Sin impacto sobre la información: gestionar por canales no incidentales (_e.g._, ticket de soporte).

**Cualquier miembro del equipo puede iniciar este proceso.** Si detectas algo sospechoso, comunícalo.

`TODO: Personalizar categorías y severidades si es necesario. Este ejemplo simple (incidente/no incidente) se basa en categorías de impacto de NIST SP 800-61r2.`

# Initiate Response

## Name the Incident

Crea una frase simple de dos palabras para referirte al incidente, como nombre en clave, y úsala en el expediente y canales asociados. `TODO: Personalizar el procedimiento de nomenclatura de incidentes.`

## Assemble the Response Team

1. Avisa al Incident Commander de guardia. `TODO: Añadir lista de contacto o procedimiento de aviso del Incident Commander.`
1. **No** hables del incidente fuera del equipo de respuesta salvo autorización del Incident Commander.
1. Crea o únete al chat de respuesta en {{RESPONSE_CHAT}}. `TODO: Añadir procedimiento de apertura del chat de respuesta.`
1. Crea o únete a la llamada de respuesta en {{RESPONSE_PHONE}} y/o {{RESPONSE_VTC}}. `TODO: Añadir procedimiento de apertura de la llamada de respuesta.`
1. Prioriza llamada de voz, chat y repositorio seguro de ficheros frente a otros medios.
1. **No** uses el correo principal si es posible. Si el correo es imprescindible, úsalo de forma limitada o utiliza {{ALTERNATE_EMAIL}}. Cifra los mensajes cuando participe alguien externo al dominio {{ORGANIZATION_DOMAIN}}. `TODO: Añadir detalles y procedimiento de correo alternativo, por ejemplo Office 365 o Google Workspace bajo demanda.`
1. **No** uses SMS o mensajería de texto para tratar el incidente, salvo para indicar que se migre a un canal más seguro.
1. Invita a los respondedores de guardia a la llamada y al chat de respuesta.
    * Invita al equipo de seguridad. `TODO: Añadir lista de contacto o procedimiento del equipo de seguridad.`
    * Invita a SMEs de los equipos y sistemas afectados. `TODO: Añadir lista de contacto o procedimiento de SMEs.`
    * Invita a dirección y asesoría legal lo antes posible, priorizando primero a los respondedores operativos. `TODO: Añadir lista de contacto o procedimiento de stakeholders ejecutivos.`
1. _OPCIONAL:_ habilita una sala presencial de coordinación ("war room") para incidentes complejos o severos. `TODO: Añadir procedimiento de sala de coordinación.`

### Reference: Response Team Structure

* Command Team
  * [Incident Commander](#role-incident-commander-ic)
  * [Deputy Incident Commander](#role-deputy-incident-commander-deputy)
  * [Scribe](#role-scribe)
* Liaison Team
  * Internal [Liaison](#role-liaison)
  * External Liaison
* Operations Team
  * [Subject Matter Experts](#role-subject-matter-expert-sme) (SMEs) for Systems
  * SMEs for Teams/Business Units
  * SMEs for Executive Functions (_e.g._, Legal, HR, Finance)

`TODO: Modificar la estructura de roles si es necesario.`

### Reference: Response Team Contact Information

Response Team Role           | Contact Information
---------------------------- | ---------------------------
Incident Commander pager     | {{INCIDENT_COMMANDER_PAGER_NUMBER}}
Incident Commander pager url | {{INCIDENT_COMMANDER_PAGER_URL}}
Incident Commander roster    | {{INCIDENT_COMMANDER_ROSTER}}
Security team roster         | {{SECURITY_TEAM_ROSTER}}
Team SME roster              | {{TEAM_SME_ROSTER}}
Executive roster             | {{EXECUTIVE_ROSTER}}

`TODO: Personalizar la información de contacto del equipo de respuesta. Incluir procedimientos de contacto en los rosters, ya sean estáticos o dinámicos.`

## Establish Battle Rhythm

### Conduct Initial Response Call

1. Realiza la llamada inicial siguiendo la [estructura de llamada inicial](#reference-initial-response-call-structure).
1. Sigue las instrucciones del Incident Commander. Si el Incident Commander de guardia no se une **en {{INCIDENT_COMMANDER_RESPONSE_SLA}}** y tienes formación como IC, asume el mando de la llamada.
1. Sigue las [instrucciones de tu rol](#roles).
1. Atiende la llamada y el chat, e intervén cuando aporte valor. Si no eres SME, canaliza la información a través del SME de tu equipo cuando sea posible.
1. **Mantén llamada y chat activos durante todo el incidente para comunicaciones orientadas a eventos.**
1. Programa actualizaciones **cada {{UPDATE_FREQUENCY}}** en el puente activo.

#### Reference: Initial Response Call Structure

* INCIDENT COMMANDER (IC): Me llamo [NOMBRE] y soy el Incident Commander. He designado a [NOMBRE] como Deputy y a [NOMBRE] como Scribe. ¿Quién está en la llamada?
* SCRIBE: [Registra asistentes]
* IC: [Si falta personal clave] Deputy, por favor avisa a [PERSONAL FALTANTE].
* IC: [Formula preguntas para entender situación, síntomas, alcance, vector, impacto y línea temporal con la persona que reporta el incidente y los SMEs de sistemas o negocio]
* SMEs: [Responden brevemente a las preguntas del IC]
* IC: [Si es un incidente]:
  * En este momento, el resumen del incidente es el siguiente: [repite resumen]. El equipo de Investigación estará liderado por [NOMBRE], el de Remediación por [NOMBRE] y el de Comunicación por [NOMBRE]. Cada líder coordinará a su equipo y reportará al IC. SMEs, incorporaos al equipo que corresponda.
  * ¿Qué acciones de investigación, remediación o comunicación se han realizado ya? [lista breve y factual]
  * Esta llamada y este chat permanecerán activos hasta el cierre del incidente. Usadlos para todas las comunicaciones relacionadas. Publicad actualizaciones en tiempo real en el chat cuando sea posible. ¿Hay preguntas o información adicional?
  * Líderes de equipo, proceded con las acciones planificadas. Nos reuniremos de nuevo a las [UPDATE_TIME] para revisar el estado. Gracias.
* IC: [Si no es un incidente]: Con los hechos disponibles, esta situación no alcanza el umbral de incidente. Coordinaré las acciones de seguimiento directamente con la persona que lo reportó. Gracias por vuestro tiempo.

#### Reference: Call Etiquette

* Únete tanto a la llamada como al chat.
* Reduce al mínimo el ruido de fondo.
* Mantén el micrófono silenciado hasta tener algo que aportar.
* Identifícate al entrar: indica tu nombre y rol (_e.g._, "soy SME del equipo X").
* Habla alto y claro.
* Sé directo y factual.
* Mantén conversaciones breves y centradas.
* Traslada cualquier preocupación al Incident Commander (IC) durante la llamada.
* Respeta los límites de tiempo marcados por el Incident Commander.
* **Usa terminología clara y evita siglas o abreviaturas innecesarias. La claridad y la precisión son más importantes que la brevedad.**

### Conduct Response Update

* Realiza actualizaciones programadas usando la [estructura de actualización](#reference-response-update-call-structure) cada {{UPDATE_FREQUENCY}} en el puente activo. `TODO: Personalizar frecuencia y guion; se recomienda no superar dos actualizaciones diarias salvo necesidad.`
* Ajusta la frecuencia cuando el incidente lo requiera.
* Coordina actualizaciones independientes (_e.g._, dirección, legal) cuando sea necesario, pero con la menor frecuencia práctica para no distraer a los respondedores.

#### Reference: Response Update Call Structure

* INCIDENT COMMANDER (IC): Desde la última actualización programada, el resumen del incidente es:
  * [Impacto]
  * [Vector]
  * [Actualización del resumen]
  * [Actualización de la línea temporal]
* IC: Equipo de Investigación, proporcionad una actualización breve.
  * INVESTIGATION LEAD: [Actividades de investigación o "sin novedades"]
  * ¿Cuál es vuestro plan de investigación recomendado?
  * ¿Qué acciones de investigación requieren asignación o aprobación? [escuchar, buscar consenso, asignar/aprobar]
* IC: Equipo de Remediación, proporcionad una actualización breve.
  * REMEDIATION LEAD: [Actividades de remediación o "sin novedades"]
  * ¿Cuál es vuestra estrategia de remediación recomendada? ¿Objeciones fuertes? [escuchar, buscar consenso, asignar/aprobar]
  * ¿Qué acciones de remediación requieren asignación o aprobación?
* IC: Equipo de Comunicación, proporcionad una actualización breve.
  * COMMUNICATIONS LEAD: [Actividades de comunicación o "sin novedades"]
  * ¿Cuál es vuestra estrategia de comunicación recomendada? ¿Objeciones fuertes? [escuchar, buscar consenso, asignar/aprobar]
  * ¿Qué acciones de comunicación requieren asignación o aprobación?
* IC: Esta llamada y este chat permanecerán activos hasta el cierre del incidente. Usadlos para todas las comunicaciones relacionadas. Publicad actualizaciones en tiempo real en el chat cuando sea posible. ¿Hay preguntas o información adicional?
* IC: Líderes de equipo, proceded. Nos reuniremos de nuevo en [{{UPDATE_TIME}}] para revisar el estado. Gracias.

## Monitor Scope

* Monitoriza el alcance de la respuesta para que no supere la capacidad de control del Incident Commander.
* Si el incidente se vuelve suficientemente complejo y hay respondedores disponibles, considera crear subequipos.

### Create Sub-Teams

* Para incidentes complejos se predefinen tres subequipos: Investigación, Remediación y Comunicación. `TODO: Personalizar la estructura de subequipos si es necesario.`
* Crea un puente de llamada y un chat para cada subequipo.
* El Incident Commander designará líderes de equipo, que reportan al IC, y miembros, que reportan a su líder. _No es obligatorio que los líderes estén formados como Incident Commanders, aunque es recomendable que tengan experiencia de coordinación._
* El Incident Commander puede ajustar el propósito o nombre de los subequipos según la situación.
* Si quieres cambiar de equipo, solicítalo a tu **líder actual**. **No** lo pidas al Incident Commander ni al líder de otro equipo. Usa la cadena de mando.

### Split Incident

Si un incidente resulta ser dos o más incidentes distintos:

* Crea un nuevo [expediente de incidente](#create-incident-file).
* Registra y coordina investigación, remediación y comunicación en el expediente correspondiente.
* Considera establecer subequipos para cada incidente.
* **Mantén un único Incident Commander de nivel superior** para coordinar recursos escasos o de alta demanda y preservar la unidad de mando.

# Investigate

**[Investiga](#investigate), [remedia](#remediate) y [comunica](#communicate) en paralelo, usando equipos separados si es posible.** El Incident Commander coordinará estas actividades. Informa al IC si hay acciones que el equipo deba considerar.

## Create Incident File

1. Crea un nuevo expediente en {{INCIDENT_FILE_LOCATION}} usando el [nombre del incidente](#name-the-incident). Usa este expediente para almacenar documentación, evidencias y artefactos de forma segura.
    * Habilita almacenamiento digital seguro.
    * Habilita intercambio seguro de ficheros.
    * Obtén almacenamiento físico si es necesario.
    * Comparte la ubicación del expediente en la llamada y el chat.
    * `TODO: Personalizar y automatizar la ubicación y el procedimiento del expediente.`
1. Documenta el impacto funcional y de información, si se conoce (ver [Assess](#assess)). `TODO: Personalizar categorías de impacto si es necesario.`
1. Documenta el vector, si se conoce (_e.g._, web, correo, medio extraíble). `TODO: Personalizar lista de vectores si es necesario.`
1. Documenta el resumen del incidente: visión breve de vector, impacto, investigación y remediación conocida.
1. Documenta la línea temporal, incluyendo actividad del atacante y de los respondedores. `TODO: Añadir líneas temporales con distintos niveles de detalle si es necesario.`
1. Documenta los pasos de investigación, remediación y comunicación. Registra actividades de forma independiente para que puedan combinarse o reutilizarse.
1. Registra información significativa como:
    * **Evidencias**, con hora de recogida, fuente y cadena de custodia.
    * **Sistemas afectados**, con cómo y cuándo se identificaron y resumen del efecto (_e.g._, malware, datos accedidos).
    * **Ficheros de interés**, como malware o ficheros de datos, con sistema y metadatos.
    * **Datos accedidos o extraídos**, con nombres de fichero, metadatos y hora estimada de exposición.
    * **Actividad relevante del atacante**, como inicios de sesión o ejecución de malware, con hora del evento.
    * **Indicadores de compromiso (IOCs) de red**, como direcciones IP y dominios.
    * **IOCs de host**, como nombres de fichero, hashes y claves de registro.
    * **Cuentas comprometidas**, con alcance de acceso y momento de compromiso.

`TODO: Personalizar el procedimiento de documentación del incidente, incluyendo hojas de cálculo, bases de datos, formularios, sistemas y plantillas si es necesario.`

## Collect Initial Leads

1. Entrevista a la persona o personas que reportaron el incidente.
1. Recoge datos iniciales de apoyo (_e.g._, alertas, eventos, datos, hipótesis e intuiciones) en el expediente.
1. Entrevista a SMEs con conocimiento del dominio o sistema para entender detalle técnico, contexto y riesgo.
1. Entrevista a SMEs de las unidades de negocio afectadas para entender impacto en misión, contexto y riesgo.
1. Asegura que las pistas sean relevantes, detalladas y accionables.

### Reference: Response Resource List

Resource                  | Location
------------------------- | ------------------------------------
Critical information list | {{CRITICAL_INFO_LIST_LOCATION}}
Critical asset list       | {{CRITICAL_ASSET_LIST_LOCATION}}
Asset management database | {{ASSET_MGMT_DB_LOCATION}}
Network map               | {{NETWORK_MAP_LOCATION}}
SIEM console              | {{SIEM_CONSOLE_LOCATION}}
Log aggregator            | {{LOG_AGGREGATOR_CONSOLE}}

`TODO: Completar listas de información crítica y activos esenciales ("crown jewels"). Es fundamental para una respuesta eficaz.`

`TODO: Personalizar la lista de recursos de respuesta.`

## Update Investigative Plan and Incident File

1. Revisa y refina el impacto del incidente.
1. Revisa y refina el vector del incidente.
1. Revisa y refina el resumen del incidente.
1. Revisa y refina la línea temporal separando hechos e inferencias.
1. Formula hipótesis: qué pudo ocurrir y con qué nivel de confianza.
1. **Identifica y prioriza preguntas clave** (lagunas de información) para apoyar o descartar hipótesis.
    * Usa MITRE ATT&CK u otro marco equivalente para [desarrollar preguntas](#reference-attacker-tactics-to-key-questions-matrix).
        * [ATT&CK for Enterprise](https://attack.mitre.org/wiki/Main_Page), con técnicas específicas para Windows, Mac y Linux.
        * [ATT&CK Mobile Profile](https://attack.mitre.org/mobile/index.php/Main_Page) para dispositivos móviles.
    * Usa preguntas básicas como guía:
        * **¿Cuándo?**: primer compromiso, primera pérdida de datos, acceso a datos o sistemas concretos.
        * **¿Qué?**: impacto, vector, causa raíz, motivación, herramientas o exploits, cuentas/sistemas comprometidos, datos objetivo, IOCs.
        * **¿Dónde?**: ubicación del atacante, unidades de negocio afectadas, infraestructura implicada.
        * **¿Cómo?**: explotación, persistencia, acceso, exfiltración, movimiento lateral.
        * **¿Por qué?**: objetivo, oportunidad, acceso a datos o sistemas.
        * **¿Quién?**: atacante, usuarios afectados, clientes afectados.
1. **Identifica y prioriza fuentes de evidencia y estrategias** para responder a las preguntas clave.
    * Consulta diagramas de red, inventario de activos y conocimiento de SMEs.
    * Revisa la [lista de recursos de respuesta](#reference-response-resource-list).
1. Consulta los [playbooks de incidente](#playbooks) para preguntas clave, fuentes de evidencia y estrategias de investigación de amenazas comunes o de alto impacto.

**El plan de investigación es crítico para una respuesta eficaz: dirige todas las acciones de investigación. Usa pensamiento crítico, creatividad y buen criterio.**

### Reference: Attacker Tactics to Key Questions Matrix

Táctica del atacante | Cómo actúan los atacantes     | Preguntas clave posibles
-------------------- | ----------------------------- | -----------------------------------------
Reconnaissance       | ... aprenden sobre los objetivos | ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?
Resource Development | ... preparan infraestructura     | ¿Dónde? ¿Qué sistemas?
Initial Access       | ... consiguen acceso inicial     | ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?
Execution            | ... ejecutan código hostil       | ¿Qué malware? ¿Qué herramientas? ¿Dónde? ¿Cuándo?
Persistence          | ... mantienen presencia          | ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?
Privilege Escalation | ... elevan privilegios           | ¿Cómo? ¿Dónde? ¿Qué herramientas?
Defense Evasion      | ... evaden controles             | ¿Cómo? ¿Dónde? ¿Desde cuándo?
Credential Access    | ... obtienen o crean credenciales | ¿Qué cuentas? ¿Desde cuándo? ¿Por qué?
Discovery            | ... reconocen nuestra red        | ¿Cómo? ¿Dónde? ¿Qué saben?
Lateral Movement     | ... se mueven lateralmente       | ¿Cómo? ¿Cuándo? ¿Qué cuentas?
Collection           | ... localizan y recopilan datos  | ¿Qué datos? ¿Por qué? ¿Cuándo? ¿Dónde?
Command and Control  | ... controlan herramientas y sistemas | ¿Cómo? ¿Dónde? ¿Quién? ¿Por qué?
Exfiltration         | ... extraen datos                | ¿Qué datos? ¿Cómo? ¿Cuándo? ¿Dónde?
Impact               | ... degradan o destruyen         | ¿Qué sistemas o datos? ¿Cómo? ¿Cuándo? ¿Dónde? ¿Con qué gravedad?

Consulta [MITRE ATT&CK](https://attack.mitre.org/) para ampliar técnicas, fuentes de datos e ideas de investigación.

## Create and Deploy Indicators of Compromise (IOCs)

> Prioriza indicadores **dinámicos y de comportamiento** junto con huellas estáticas.

* Crea IOCs a partir de [pistas iniciales](#collect-initial-leads) y [análisis](#analyze-evidence).
* Crea IOCs en un formato abierto compatible con tus herramientas (_e.g._, [STIX 2.0](https://oasis-open.github.io/cti-documentation/stix/intro)) cuando sea posible. `TODO: Personalizar formato de IOC si es necesario.`
* Usa automatización cuando sea posible. `TODO: Añadir procedimiento de despliegue y revocación de IOCs.`
* **No** despliegues fuentes masivas de IOCs no curadas o no relacionadas; generan confusión y fatiga de alertas.
* Considera todos los tipos de IOC:
  * IOCs de red: direcciones IP o MAC, puertos, direcciones de correo, contenido o metadatos de correo, URLs, dominios o patrones PCAP.
  * IOCs de host: rutas, hashes, contenido o metadatos de fichero, claves de registro, MUTEX, autoruns, artefactos de usuario o permisos.
  * IOCs cloud: patrones de log en despliegues [SaaS](https://en.wikipedia.org/wiki/Software_as_a_service) o [IaaS](https://en.wikipedia.org/wiki/Infrastructure_as_a_service).
  * IOCs de comportamiento (TTPs): árboles de procesos, heurísticas, desviaciones de línea base y patrones de inicio de sesión.
* Correlaciona tipos de IOC, por ejemplo indicadores de red y host observados en los mismos sistemas.

## Identify Systems of Interest

1. Valida si son relevantes para el incidente.
1. Categoriza por qué son "de interés": contiene malware, fue accedido por una cuenta comprometida, contiene datos sensibles, etc. Trata estas categorías como etiquetas; un sistema puede tener varias.
1. Prioriza recogida, análisis y remediación según necesidades de investigación, impacto de negocio y criticidad.

## Collect Evidence

* Prioriza según el plan de investigación.
* Recoge datos de respuesta en vivo usando {{LIVE_RESPONSE_TOOL}}. `TODO: Personalizar herramientas y procedimiento de live response.`
* Recoge logs relevantes de sistemas, agregadores, SIEM o consolas de dispositivos si no forman parte de la respuesta en vivo. `TODO: Personalizar herramientas y procedimiento de recogida de logs.`
* Recoge imagen de memoria, si es necesario y no forma parte de la respuesta en vivo, usando {{MEMORY_COLLECTION_TOOL}}. `TODO: Personalizar herramientas y procedimiento de recogida de memoria.`
* Recoge imagen de disco, si es necesario, usando {{DISK_IMAGE_TOOL}}. `TODO: Personalizar herramienta y procedimiento de imagen de disco.`
* Recoge y almacena evidencias conforme a la política y con cadena de custodia adecuada. `TODO: Personalizar política de recogida de evidencias y cadena de custodia.`

Considera recoger los siguientes artefactos como evidencia, en tiempo real (_e.g._, vía EDR o SIEM) o bajo demanda:

###  Example Useful Artifacts

`TODO: Personalizar y priorizar artefactos útiles.`

* Procesos en ejecución.
* Servicios en ejecución.
* Hashes de ejecutables.
* Aplicaciones instaladas.
* Usuarios locales y de dominio.
* Puertos en escucha y servicios asociados.
* Configuración DNS y rutas estáticas.
* Conexiones de red establecidas o recientes.
* Run Keys y otros mecanismos AutoRun de persistencia.
* Tareas programadas y cron jobs.
* Artefactos de ejecución previa (_e.g._, Prefetch y Shimcache).
* Logs de eventos.
* Artefactos de Group Policy y WMI.
* Detecciones antivirus.
* Binarios en ubicaciones temporales.
* Credenciales de acceso remoto.
* Telemetría de conexiones de red (_e.g._, NetFlow, reglas permitidas en firewall).
* Tráfico y actividad DNS.
* Actividad de acceso remoto, incluyendo RDP, VPN, SSH, VNC y otras herramientas.
* Cadenas URI, user agents y acciones de proxy.
* Tráfico web HTTP/HTTPS.

## Analyze Evidence

* Prioriza según el plan de investigación.
* Analiza y tria datos de respuesta en vivo.
* Analiza imágenes de memoria y disco (_i.e._, realiza análisis forense).
* Analiza malware cuando proceda.
* _OPCIONAL:_ enriquece con investigación e inteligencia de amenazas.
* Documenta nuevos indicadores de compromiso (IOCs).
* Actualiza el expediente del caso.

### Example Useful Indicators

`TODO: Personalizar y priorizar indicadores útiles.`

* Comportamiento de autenticación inusual (_e.g._, frecuencia, sistemas, hora del día, ubicación remota).
* Nombres de usuario con formatos no estándar.
* Binarios sin firmar que conectan a red.
* Beaconing o transferencias significativas de datos.
* Comandos PowerShell con contenido codificado en Base64.
* Actividad excesiva de RAR, 7zip o WinZip, especialmente con nombres de fichero sospechosos.
* Conexiones en puertos no usados anteriormente.
* Patrones de tráfico por tiempo, frecuencia y volumen.
* Cambios en tablas de rutas, como pesos, entradas estáticas, gateways o relaciones de peering.

## Iterate Investigation

[Actualiza el plan de investigación](#update-investigative-plan-and-incident-file) y repite hasta el cierre.

# Remediate

**[Investiga](#investigate), [remedia](#remediate) y [comunica](#communicate) en paralelo, usando equipos separados si es posible.** El Incident Commander coordinará estas actividades. Informa al IC si hay acciones que el equipo deba considerar.

## Update Remediation Plan

1. Revisa el expediente en {{INCIDENT_FILE_LOCATION}} usando el [nombre del incidente](#name-the-incident).
1. Revisa los [playbooks](#playbooks) aplicables.
1. Revisa la [lista de recursos de respuesta](#reference-response-resource-list).
1. Identifica qué tácticas del atacante están presentes en el incidente. Usa MITRE [ATT&CK](https://attack.mitre.org/wiki/Main_Page) (_i.e._, Persistence, Privilege Escalation, Defense Evasion, Credential Access, Discovery, Lateral Movement, Execution, Collection, Exfiltration y Command and Control) u otro marco equivalente.
1. Define remediaciones para cada táctica activa, dentro de las capacidades y herramientas disponibles. Considera acciones para [proteger](#protect), [detectar](#detect), [contener](#contain) y [erradicar](#eradicate) cada comportamiento del atacante.
1. Prioriza según [estrategia temporal](#choose-remediation-timing), impacto y urgencia.
1. Documenta el plan en el expediente del incidente.

Usa marcos de [seguridad de la información](https://www.nist.gov/cyberframework) como referencia, pero **no sustituyas un programa de seguridad por acciones de remediación de incidente**. Ambos deben complementarse.

### Protect

> "¿Cómo evitamos que la táctica X vuelva a ocurrir o reducimos su riesgo? ¿Cómo mejoramos la protección futura?"

Usa lo siguiente como punto de partida para remediación protectora:

* Parchear aplicaciones.
* Parchear sistemas operativos.
* Actualizar firmas IPS de red y host.
* Actualizar firmas de protección endpoint, EDR y antivirus.
* Reducir ubicaciones con datos críticos.
* Reducir cuentas administrativas o privilegiadas.
* Activar autenticación multifactor.
* Reforzar requisitos de contraseña.
* Bloquear puertos y protocolos no usados en límites de segmento y red, tanto entrantes como salientes.
* Permitir solo conexiones necesarias para servidores y servicios críticos.

### Detect

> "¿Cómo detectamos esto en nuevos sistemas o en el futuro? ¿Cómo mejoramos la detección e investigación futuras?"

Usa lo siguiente como punto de partida para remediación detectiva:

* Mejorar logging y retención de logs de sistema, especialmente en sistemas críticos.
* Mejorar logging de aplicaciones, incluidas aplicaciones SaaS.
* Mejorar agregación de logs.
* Actualizar firmas IDS de red y host usando IOCs.

### Contain

> "¿Cómo evitamos que esto se propague o empeore? ¿Cómo mejoramos la contención futura?"

Usa lo siguiente como punto de partida para contención:

* Implementar listas de control de acceso (ACLs) en límites de segmentos de red.
* Aplicar bloqueos en el perímetro corporativo en varias capas del [modelo OSI](https://en.wikipedia.org/wiki/OSI_model).
* Deshabilitar o retirar accesos de cuentas comprometidas.
* Bloquear direcciones IP o redes maliciosas.
* Redirigir o bloquear dominios maliciosos.
* Actualizar IPS de red y host y firmas antimalware usando IOCs.
* Retirar de la red sistemas críticos o comprometidos.
* Contactar con proveedores para asistencia (_e.g._, ISP, proveedores SaaS).
* Permitir solo conexiones necesarias para servidores y servicios críticos.
* Finalizar o deshabilitar procesos o servicios.
* Bloquear o retirar accesos de proveedores y socios externos, especialmente accesos privilegiados.

### Eradicate

> "¿Cómo eliminamos esto de nuestros activos? ¿Cómo mejoramos la erradicación futura?"

Usa lo siguiente como punto de partida para erradicación:

* Reconstruir o restaurar sistemas y datos comprometidos desde un estado conocido como bueno.
* Restablecer contraseñas.
* Eliminar cuentas o credenciales hostiles.
* Borrar o retirar malware específico cuando sea viable.
* Cambiar a proveedores alternativos si es necesario.
* Activar y migrar a ubicaciones, servicios o servidores alternativos.

## Choose Remediation Timing

Determina la estrategia temporal de remediación con el Incident Commander, SMEs y propietarios de sistemas, SMEs y propietarios de negocio y equipo ejecutivo. Cada estrategia es adecuada en circunstancias distintas:

* Elige remediación **inmediata** cuando sea más importante detener la actividad del atacante que seguir investigando. Por ejemplo, pérdida financiera en curso, fallo operativo, exfiltración activa o amenaza inminente significativa.
* Elige remediación **diferida** cuando sea importante completar la investigación o no alertar al atacante. Por ejemplo, compromiso prolongado por atacante avanzado, espionaje corporativo o compromiso a gran escala con número de sistemas aún desconocido.
* Elige remediación **combinada** cuando coincidan circunstancias inmediatas y diferidas. Por ejemplo, segmentar de inmediato un servidor sensible por requisito regulatorio mientras continúa la investigación de un compromiso de larga duración.

## Execute Remediation

* Evalúa y explica los riesgos de las acciones de remediación a las partes interesadas. `TODO: Personalizar procedimiento de aprobación de riesgos de remediación si es necesario.`
* Implementa de inmediato acciones con poco o ningún efecto visible para el atacante (a veces llamadas "posturing actions"). Muchas acciones de [protección](#protect) y [detección](#detect) son buenas candidatas.
* Programa y asigna acciones de remediación según la estrategia temporal.
* Ejecuta acciones en lotes coordinados para maximizar eficacia y minimizar riesgo.
* Documenta estado y hora de ejecución en el expediente, especialmente en medidas temporales.

## Iterate Remediation

[Actualiza el plan de remediación](#update-remediation-plan) y repite hasta el cierre.

# Communicate

**[Investiga](#investigate), [remedia](#remediate) y [comunica](#communicate) en paralelo, usando equipos separados si es posible.** El Incident Commander coordinará estas actividades. Informa al IC si hay acciones que el equipo deba considerar.

Toda comunicación debe usar la información más precisa disponible. Actúa con integridad. No comuniques especulaciones.

## Communicate Internally

### Notify and Update Stakeholders

* Comunica con stakeholders en la llamada inicial, en actualizaciones programadas y mediante actualizaciones orientadas a eventos en llamada y chat.
* Coordina actualizaciones independientes (_e.g._, dirección, legal) cuando sea necesario, con la menor frecuencia práctica para mantener el foco en investigación y remediación.
* Céntrate en la mejor evaluación disponible del vector, impacto, resumen y puntos clave de la línea temporal, incluidas acciones de remediación. No especules.

### Notify and Update Organization

* **No** notifiques ni actualices a personal fuera de la respuesta hasta que lo autorice el Incident Commander, especialmente si existe riesgo de amenaza interna.
* Coordina actualizaciones para equipos o para toda la organización con dirección y responsables de negocio.
* Céntrate en la mejor evaluación disponible del vector, impacto, resumen y puntos clave de la línea temporal, incluidas acciones de remediación. No especules.

### Create Incident Report

* Al cerrar el incidente, recopila la información del [expediente](#create-incident-file) para distribuirla con el formato de {{INCIDENT_REPORT_TEMPLATE}}. **Si vector, impacto, resumen, línea temporal e informes de actividad están completos, este paso puede automatizarse.**
* Distribuye el informe de incidente a: {{INCIDENT_REPORT_RECIPIENTS}}.
* `TODO: Personalizar creación y distribución del informe de incidente si es necesario.`

## Communicate Externally

### Notify Regulators

* **No** notifiques ni actualices a personal fuera de la respuesta hasta que lo autorice el Incident Commander.
* Notifica a reguladores (_e.g._, HIPAA/HITRUST, PCI DSS, SOX) si es necesario y conforme a la política aplicable.
* Coordina requisitos, formato y plazos con {{COMPLIANCE_TEAM}}.

### Notify Customers

* **No** notifiques ni actualices a personal fuera de la respuesta hasta que lo autorice el Incident Commander.
* Coordina notificaciones a clientes con {{COMMUNICATIONS_TEAM}}.
* Incluye la fecha en el título de cualquier anuncio para evitar confusión.
* **No** uses frases vacías como "nos tomamos la seguridad muy en serio". Céntrate en hechos.
* Sé honesto, asume responsabilidad cuando corresponda y presenta los hechos junto con el plan para prevenir incidentes similares.
* Da el máximo detalle posible sobre la línea temporal.
* Explica con detalle qué información se vio comprometida y cómo afecta a clientes. Si almacenábamos algo que no debíamos, indícalo con transparencia.
* **No** hables de terceros que puedan haber causado el compromiso salvo que ya lo hayan comunicado públicamente; en ese caso, enlaza su comunicación. Coordina con ellos por separado (ver [Notify Vendors](#notify-vendors-and-partners)).
* Publica la comunicación externa lo antes posible una vez validada. Las malas noticias no mejoran con el tiempo.
* Si es posible, contacta con los equipos de seguridad de los clientes antes de notificar públicamente.

### Notify Vendors and Partners

* **No** notifiques ni actualices a personal fuera de la respuesta hasta que lo autorice el Incident Commander.
* Si es posible, contacta con los equipos internos de seguridad de proveedores y socios antes de una comunicación pública.
* Céntrate en los aspectos específicos del incidente que afectan o implican al proveedor o socio.
* Coordina esfuerzos de respuesta y comparte información cuando sea posible.

### Notify Law Enforcement

* **No** notifiques ni actualices a personal fuera de la respuesta hasta que lo autorice el Incident Commander.
* Coordina con {{EXECUTIVE_TEAM}} y {{LEGAL_TEAM}} antes de interactuar con fuerzas y cuerpos de seguridad.
* Contacta con autoridad local en {{LOCAL_LE_CONTACT}}.
* Contacta con el FBI en {{FBI_CONTACT}} o mediante el [Internet Crime Complaint Center (IC3)](https://www.ic3.gov), si aplica al contexto jurisdiccional.
* Contacta con operadores de sistemas usados en el ataque; sus sistemas también pueden estar comprometidos.

### Contact External Response Support

* Contacta con {{INCIDENT_RESPONSE_VENDOR}} para apoyo en evaluación de riesgo, gestión del incidente, respuesta y soporte postincidente.
* Contacta con {{PUBLIC_RELATIONS_VENDOR}} para apoyo en relaciones públicas y comunicación externa.
* Contacta con {{INSURANCE_VENDOR}} para apoyo relacionado con el seguro de ciberriesgo.

### Share Intelligence

* Comparte IOCs con [Infragard](https://www.infragard.org/) si aplica.
* Comparte IOCs con el [ISAC](https://en.wikipedia.org/wiki/Information_Sharing_and_Analysis_Center) correspondiente mediante {{ISAC_CONTACT}}, si aplica.

# Recover

`TODO: Personalizar pasos de recuperación.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

**La recuperación suele estar gobernada por unidades de negocio y propietarios de sistemas. Ejecuta acciones de recuperación solo en coordinación con las partes interesadas relevantes.**

1. Activa planes de continuidad de negocio o recuperación ante desastres: _e.g._, migración a ubicaciones alternativas, sitios de contingencia o sistemas de respaldo.
1. Integra las acciones de seguridad con los esfuerzos de recuperación organizativa.
