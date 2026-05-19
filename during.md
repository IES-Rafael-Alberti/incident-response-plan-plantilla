# Plan de respuesta a incidentes para {{COMPANY_NAME}}

Autores: {{AUTHOR_NAME}}, {{AUTHOR_EMAIL}}

Revisión {{REVISION_NUMBER}}, Publicado {{RELEASE_DATE}}

Este plan de respuesta a incidentes está basado en el plan conciso, directivo, específico, flexible y gratuito disponible en [Github](https://github.com/counteractive/incident-response-plan-template) de Counteractive Security y discutido en [www.counteractive.net](https://www.counteractive.net/blog/an-ir-plan-you-will-use/)


Fue revisado por última vez el {{REVIEW_DATE}}. Fue probado por última vez en {{TEST_DATE}}.

## Contexto de la empresa y alcance (resumen operativo)

La organización es una asesoría (contable/fiscal/laboral/legal) con ~150 empleados y 2 sedes. Opera en entorno híbrido (infraestructura interna + servicios externos/nube).

Activos críticos destacados (según PDS):
- Datos de clientes (confidencialidad e integridad altas; RGPD).
- Servidores principales (servidor de archivos y aplicaciones).
- Software de gestión interna.

Riesgos más críticos documentados (según PDS):
- Ransomware en servidor de archivos.
- Accesos no autorizados en red interna (contraseñas débiles / segmentación insuficiente).
- Debilidades en copias de seguridad (externalización/validación insuficientes).

Áreas en alcance directo del PDS: TIC, RRHH, Facturación/Ventas y Legal. Fuera de alcance: web corporativa (proveedor), seguridad física (externalizada), equipos personales.

## Preparación (mínimo necesario, alineado con el PDS)

Esta sección existe porque los incidentes "durante" solo salen bien si lo previo está listo. Estado actual (según PDS): madurez global ~74% (ISO 27002), con brechas en formación y backups externos/validación.

Controles/proyectos que habilitan respuesta eficaz (PDS 2025–2027):
- PRY-001/002: formación + concienciación (phishing/errores humanos).
- PRY-003: copias cifradas y externas con verificación y pruebas de restauración.
- PRY-004: segmentación y monitorización de red.
- PRY-005: SGSI (ISO 27001) para formalizar roles, políticas y evidencias.

Entregables de preparación mínimos que deben existir antes de un SEV1/SEV2:
- Lista de guardias y roles (Incident Commander, TIC, Legal, RRHH) y canal oficial de comunicación.
- Ubicación de la carpeta segura del incidente (evidencias, timeline, decisiones, IOCs).
- Procedimiento de preservación de evidencias (cadena de custodia, hash, acceso mínimo).
- Fuentes de logs priorizadas: firewall, servidores, endpoints, autenticación (según disponibilidad).

## Mapeo de Amenazas y Respuesta (MITRE ATT&CK & RE&CT)

Para estructurar la respuesta durante un incidente, este plan utiliza las matrices **MITRE ATT&CK** (perspectiva del atacante) y **MITRE RE&CT** (perspectiva del defensor), garantizando que las respuestas sean estándar, eficaces y, sobre todo, **ciberresilientes**.

A continuación se muestra el mapeo directo entre nuestros incidentes más probables (según el análisis de riesgos sectorial de Asesoría PYMES) y los Playbooks específicos desarrollados:

### 1. Mapa de Amenazas (MITRE ATT&CK)
Se han priorizado las técnicas que afectan directamente al sector (Ransomware, Phishing, Robo de identidades y Cadena de Suministro).

![Mapa ATT&CK](mitre/Asesora_TT.svg)

* **Riesgo Crítico (Rojo):** `T1486` (Data Encrypted for Impact) y `T1048` (Exfiltration Over Alternative Protocol). Estos conforman el **Playbook de Ransomware**, donde el riesgo de paralización del negocio y la doble extorsión por pérdida de datos fiscales es inaceptable.
* **Riesgo Alto (Naranja):** `T1566` (Phishing), `T1078` (Valid Accounts) y `T1195` (Supply Chain Compromise). Técnicas abordadas en nuestros **Playbooks de Phishing, Identidad y Cadena de Suministro**.
* **Riesgo Medio (Amarillo):** `T1598` (Phishing for Information) y `T1110` (Brute Force). Acciones pre-ataque mitigadas en el **Playbook de Ingeniería Social**.

### 2. Acciones Defensivas y Resiliencia (MITRE RE&CT)
Cada técnica detectada desencadena acciones concretas de los playbooks en las fases de Contención, Erradicación y Recuperación, apostando siempre por mantener la continuidad operativa.

![Mapa ATT&CK](mitre/Asesoria_TT.svg)

**Medidas implementadas en el plan:**
* **Contención:** 
  * *Isolate Network:* Aislamiento inmediato de servidores afectados por Ransomware para cortar el cifrado de datos fiscales.
  * *Disable Account* y *Reset Password:* Bloqueo de identidades comprometidas en ataques T1078.
* **Erradicación:** 
  * *Delete Email Message / Remove File:* Purga a nivel organizativo de los vectores iniciales (phishing/malware).
* **Recuperación (Ciberresiliencia):**
  * *Restore System from Backup:* Medida vital tras un ataque de Ransomware. Asegura que la empresa levanta su ERP/CRM desde copias desconectadas sin tener que negociar la extorsión.

Uso operativo durante el incidente:
- **Investigar:** Buscar siempre el TTP (Técnica) según ATT&CK en el EDR o en los logs.
- **Remediar:** Vincular cada TTP detectado de forma estricta a su bloque en RE&CT (Ej. detectar T1486 -> activar Isolate Network inmediatamente).

## Métricas y mejora continua (KPIs/KRIs)

Estas métricas se alinean con los objetivos del PDS y se revisan en comité (cadencia sugerida: mensual para operativas, trimestral para estratégicas):

Métrica | Definición | Objetivo (según PDS / recomendación)
***|***|***
MTTD | Tiempo medio desde el primer evento hasta la detección | Reducir trimestre a trimestre
MTTC | Tiempo medio hasta contención efectiva | Reducir trimestre a trimestre
MTTR | Tiempo medio hasta restauración segura | Compatible con continuidad y criticidad
Backups externos validados | % de sistemas críticos con copia cifrada externa + verificación | 100% (PRY-003)
Pruebas de restauración | Nº de pruebas/periodo y % exitosas | 4/año (PRY-003)
Formación completada | % empleados formados en ciberseguridad | 90% (PRY-001)
Phishing simulado | % de clics en campañas internas | <5% (PRY-002)
Segmentación de red | % segmentación implementada | 100% (PRY-004)
Incidentes de red | Nº incidentes de red (normalizado) | reducción >=50% (PRY-004)

# Evaluar

1. **Mantenga la calma y la profesionalidad.**
2. Reúna la información pertinente, _por ejemplo_, alarmas, eventos, datos, suposiciones, intuiciones (**observar**).
3. Considerar las categorías de impacto, a continuación (**orientar**), y determinar si hay un posible incidente (**decidir**):
4. Iniciar una respuesta si hay un incidente (**actuar**).  En caso de duda, inicie una respuesta. El responsable de gestión de incidentes y el equipo de respuesta pueden ajustarse tras la investigación y la revisión.

## Evaluar el impacto funcional

¿Cuál es el impacto directo o probable en su trabajo? (_por ejemplo_, operaciones comerciales, empleados, clientes, usuarios)

* Degradación o fracaso del trabajo/negocio: **incidente!**
* Ninguno: evalúe el impacto de la información.

## Evaluar el impacto de la información

¿Cuál es el impacto directo o probable sobre sus datos/información, en particular los sensibles? (_por ejemplo_, información personal, datos de propiedad, financieros o sanitarios)

* Información a la que se ha accedido, extraído, modificado o eliminado: **incidente!**
* Ninguno: gestión a través de canales no relacionados con incidentes (por ejemplo, un ticket de soporte).

**Cada miembro del equipo está facultado para comenzar este proceso.** Si ves algo, dilo.

## Determinar severidad (mínimo viable)

Una vez confirmado que es un incidente, determine una severidad inicial para guiar escalado, comunicación y priorización.

Severidad | Descripción | Ejemplo
********* | *********-- | ******
SEV1 | Impacto crítico en negocio o datos sensibles | Ransomware, caída total
SEV2 | Impacto importante parcialmente contenido | Compromiso de cuenta privilegiada
SEV3 | Impacto limitado | Malware aislado
SEV4 | Evento sin impacto confirmado | Phishing reportado

## Tabla de clasificación inicial (triage)

Complete estos campos en la primera llamada y en el archivo del incidente.

Campo | Valor
***** | *****
Vector probable | Email/phishing; Endpoint; Credenciales; SaaS; Cloud; VPN; Web app; Insider; Supply chain
Severidad inicial | SEV1/SEV2/SEV3/SEV4
Sistemas/servicios afectados | 
Identidad/cuenta afectada | 
Datos potencialmente afectados | 
Clasificación de datos afectada | Pública; Interna; Confidencial; Restringida
Estado | Sospecha; Confirmado; Contenido; En recuperación; Cerrado
Propietario de negocio | 

## Escalado y toma de decisiones (diagrama)

```mermaid
flowchart TD
  A[Detección / reporte] --> B{¿Hay indicios de incidente?}
  B -- No --> C[Gestionar como ticket/soporte]
  B -- Sí --> D[Asignar severidad inicial (SEV1–SEV4)]
  D --> E{Severidad}
  E -- SEV4 --> F[TIC/soporte: analizar, bloquear si procede, monitorizar]
  E -- SEV3 --> G[Activar IR (TIC): carpeta del incidente + primera llamada]
  E -- SEV2 --> H[Activar Comité de Seguridad (CISO+TIC+Legal+RRHH): contención prioritaria]
  E -- SEV1 --> I[Activar {{EXECUTIVE_TEAM}} y {{COMPLIANCE_TEAM}}: contención inmediata + decisiones RGPD]
  F --> J[Actualizaciones periódicas (mínimo cada {{UPDATE_FREQUENCY}}; ajustar según severidad)]
  G --> J
  H --> J
  I --> J
```

# Iniciar la respuesta

## Nombre del incidente

Cree una [frase simple de dos palabras](http://creativityforyou.com/combomaker.html) para referirse al incidente -un nombre en clave- que se utilizará para el archivo y el canal del incidente.

Recomendación de nomenclatura (mínimo viable):
1. Dos palabras, sin datos sensibles.
2. Añada fecha si hay riesgo de colisión (por ejemplo, "Aurora Papel 2026-05-18").
3. Use exactamente el mismo nombre en el chat/canal, en la carpeta del incidente y en el informe.

## Reunir el equipo de respuesta

1. Llame al Incident Commander de turno/de guardia usando {{INCIDENT_COMMANDER_PAGER_URL}} ({{INCIDENT_COMMANDER_PAGER_NUMBER}}) y validando el responsable en {{INCIDENT_COMMANDER_ROSTER}}.
2. **No** discuta el incidente fuera del equipo de respuesta a menos que el Incident Commander lo autorice
3. Inicie y/o únase al chat de respuesta en {{RESPONSE_CHAT}}.
  - Cree un canal o hilo específico del incidente (por ejemplo, `#inc-<nombre-del-incidente>`).
  - Fije un mensaje inicial con: nombre, hora de inicio, resumen (vector/impacto), y quién es el IC.
4. Iniciar y/o unirse a la llamada de respuesta en {{RESPONSE_PHONE}} y/o {{RESPONSE_VTC}}.
  - Publique en el chat el enlace/datos de acceso.
  - Mantenga una única sala/puente "oficial" para evitar duplicidades.
5. Preferible usar la llamada de voz, el chat y el intercambio seguro de archivos sobre cualquier otro método.
6. **No** utilizar el correo electrónico principal si es posible. Si el correo electrónico es necesario, utilícelo con moderación o use {{ALTERNATE_EMAIL}}.
  - No incluya datos sensibles innecesarios en correo.
  - Encripte los correos electrónicos cuando cualquier participante esté fuera del dominio {{ORGANIZATION_DOMAIN}}.
7. **No** usar SMS/texto para comunicar el incidente, a menos que sea para decirle a alguien que se mueva a un canal más seguro.
8. Invite al personal de turno/guardia a la llamada y al chat de respuesta.
   * Invite al equipo de seguridad según {{SECURITY_TEAM_ROSTER}}.
   * Invitar al SME de los equipos y sistemas afectados según {{TEAM_SME_ROSTER}}.
   * Invitar a ejecutivos y/o asesoría según {{EXECUTIVE_ROSTER}} (priorice operativos si hay urgencia).
9. OPCIONAL:_ Establecer una sala de colaboración en persona ("sala de guerra") para incidentes complejos o graves. Si es remoto, use un canal de voz dedicado en {{RESPONSE_VTC}}.

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

### Referencia: Información de contacto del equipo de respuesta

Rol del equipo de respuesta         | Información de contacto
*********************************** | ***************************
Pager del Incident Commander        | {{INCIDENT_COMMANDER_PAGER_NUMBER}}
URL del Incident Commander          | {{INCIDENT_COMMANDER_PAGER_URL}}
Lista del Incident Commander        | {{INCIDENT_COMMANDER_ROSTER}}
Lista del equipo de seguridad       | {{SECURITY_TEAM_ROSTER}}
Lista del equipo SME                | {{TEAM_SME_ROSTER}}
Lista de ejecutivos                 | {{EXECUTIVE_ROSTER}}

## Establecer el ritmo de batalla

### Realizar la primera llamada de respuesta

1. Realice la llamada inicial utilizando la [estructura de llamada de respuesta inicial](#referencia-estructura-de-la-llamada-de-respuesta-inicial)
2. Siga las instrucciones del Incident Commander.  Si el Incident Commander de turno/de guardia no se une a la llamada **dentro de {{INCIDENT_COMMANDER_RESPONSE_SLA}}** y usted es un Incident Commander capacitado, tome el mando de la llamada.
3. Siga las [instrucciones correspondientes a su función](#roles).
4. Siga la llamada y el chat, y comente según corresponda.  Si no es un SME, comunique las aportaciones a través del SME de su equipo si es posible.
5. **Mantenga la llamada y el chat activos durante todo el incidente para una comunicación basada en eventos.**
6. Programe actualizaciones **cada {{UPDATE_FREQUENCY}}** sobre la comunicación activa.

#### Referencia: Estructura de la llamada de respuesta inicial

* Incident Commander (IC): Mi nombre es [NOMBRE], soy el Incident Commander.  He designado a [NOMBRE] como adjunto y a [NOMBRE] como escriba. ¿Quién está en la llamada?
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

* Llevar a cabo actualizaciones programadas utilizando la [estructura de llamada de actualización](#referencia-estructura-de-la-llamada-de-actualización-de-la-respuesta) cada {{UPDATE_FREQUENCY}} en el puente activo.
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

* En la preparación de incidentes complejos, se predefinen tres subequipos: Investigación, Remediación y Comunicación, generalmente responsables de esas funciones de respuesta.
* Crear un puente de llamadas y un chat para cada subequipo.
* El Incident Commander designará a los líderes de los equipos, que dependen del IC, y a los miembros de los equipos, que dependen de su líder.  _Los líderes de equipo no tienen que estar formados como Incident Commanders, pero es preferible que tengan alguna experiencia de liderazgo._
* El Incident Commander puede ajustar el propósito o el nombre de los subequipos según sea necesario.
* Si desea cambiar de equipo, pregunte a su **líder de equipo actual**.  **No** pregunte al Incident Commander, o al líder del otro(s) equipo(s).  Utilice la cadena de mando.

### Incidente dividido

Si un incidente resulta ser dos o más incidentes distintos:

* Establezca un nuevo [archivo de incidentes](#crear-archivo-del-incidente).
* Haga un seguimiento y coordine la investigación, la reparación y la comunicación en el archivo correspondiente.
* Considere la posibilidad de establecer subequipos para cada incidente.
* **Mantener un Incident Commander de alto nivel**, para coordinar los activos de baja densidad y alta demanda y mantener la unidad de mando.

# Investigar

**[Investigar](#investigar), [Remediar](#remediar) y [Comunicar](#comunicar) en paralelo, utilizando equipos separados, si es posible.** El Incident Commander coordinará estas actividades.  Notifique al Incident Commander si hay pasos que el equipo debe considerar.

## Crear archivo del incidente

1. Cree un nuevo archivo de incidentes en {{INCIDENT_FILE_LOCATION}} utilizando el [nombre del incidente](#nombre-del-incidente).  Utilice este archivo para el almacenamiento seguro de documentación, pruebas, artefactos, _etc._.
    * Proporcionar un almacenamiento digital seguro.
    * Proporcionar un intercambio de archivos seguro.
    * Obtener almacenamiento físico.
    * Compartir la ubicación del archivo del incidente en la llamada y el chat.
1. Documente el impacto funcional y de la información, si se conoce (véase [Evaluar](#evaluar)).
1. Documente la severidad inicial y la clasificación de datos afectada (véase [Tabla de clasificación inicial](#tabla-de-clasificacion-inicial-triage)).
2. Documentar el vector, si se conoce (por ejemplo: web, correo electrónico, credenciales/acceso remoto, endpoint, red, nube/SaaS, medios extraíbles).
3. Documente el resumen del incidente: un breve resumen del vector, el impacto, la investigación y la situación de la reparación, si se conoce.
4. Documente la línea de tiempo del incidente, incluyendo la actividad del atacante y la actividad de la respuesta.
5. Documente los pasos de investigación, reparación y comunicación.  Documente las actividades de forma independiente para que puedan combinarse y reutilizarse, si es posible.
6. Registre la información significativa, como:
    **Pruebas**, con la hora de recogida, la fuente, la cadena de custodia, _etc._.
    * **Sistemas afectados**, con el modo y el momento en que se identificó el sistema, y el resumen del efecto (_por ejemplo, tiene malware, datos a los que se ha accedido).
    * **Archivos de interés**, como el malware o los archivos de datos, con el sistema y los metadatos.
    * **Datos accedidos y extraídos**, con nombres de archivos, metadatos y hora de presunta exposición.
    * **Actividad significativa del atacante**, como inicios de sesión y ejecución de malware, con la hora del evento.
    * **Indicadores de compromiso (IOC)** basados en la red, como direcciones IP y dominios.
    * **Indicadores de compromiso basados en el host**, como nombres de archivos, hashes y claves de registro.
 * **Cuentas comprometidas**, con el alcance del acceso y la hora del compromiso.


## Recoger las pistas iniciales

1. Entrevistar a los reportadores del incidente.
2. Recoger los datos de apoyo iniciales (_p. ej._, alarmas, eventos, datos, suposiciones, intuiciones) en el archivo del incidente.
3. Entrevistar a lo(s) SME con experiencia en el dominio o el sistema, para comprender los detalles técnicos, el contexto y el riesgo.
4. Entrevistar a lo(s) SME de la unidad de negocio afectada, para comprender el impacto de la misión/negocio, el contexto y el riesgo.
5. Asegúrese de que las pistas son relevantes, detalladas y procesables.

### Referencia: Lista de recursos de respuesta

Recurso                             | Ubicación
*********************************** | ************************************
Lista de información crítica        | {{CRITICAL_INFO_LIST_LOCATION}}
Lista de activos críticos           | {{CRITICAL_ASSET_LIST_LOCATION}}
Base de datos de gestión de activos | {{ASSET_MGMT_DB_LOCATION}}
Mapa de red                         | {{NETWORK_MAP_LOCATION}}
Consola SIEM                        | {{SIEM_CONSOLE_LOCATION}}
Agregador de registros              | {{LOG_AGGREGATOR_CONSOLE}}


## Actualizar el plan de investigación y el archivo del incidente

1. Revisar y perfeccionar el impacto del incidente.
2. Revisar y refinar el vector del incidente.
3. Revisar y perfeccionar el resumen del incidente.
4. Revisar y perfeccionar la línea de tiempo del incidente con hechos e inferencias.
5. Crear hipótesis: qué puede haber ocurrido y con qué seguridad.
6. **Identificar y priorizar las preguntas clave** (lagunas de información) para apoyar o desacreditar las hipótesis.
    * Utilizar la matriz ATT&CK de MITRE o un marco similar para [desarrollar preguntas](#referencia-tactica-del-atacante-a-la-matriz-de-preguntas-clave).
        * [ATT&CK for Enterprise](https://attack.mitre.org/wiki/Main_Page), incluyendo enlaces a los específicos de Windows, Mac y Linux.
        * [ATT&CK Mobile Profile](https://attack.mitre.org/mobile/index.php/Main_Page) para dispositivos móviles.
    * Utilizar palabras interrogativas como inspiración:
        * **¿Cuándo?**: primer compromiso, primera pérdida de datos, acceso a x datos, acceso a y sistema, etc.
        * **¿Qué?**: impacto, vector, causa de origen, motivación, herramientas/explotaciones utilizadas, cuentas/sistemas comprometidos, datos atacados/perdidos, infraestructura, IOCs, etc.?
        * **¿Dónde?**: ubicación del atacante, unidades de negocio afectadas, infraestructura, etc.?
        * **¿Cómo?**: compromiso (explotación), persistencia, acceso, exfiltración, movimiento lateral, etc.?
        * **¿Por qué?**: objetivo, momento, acceso a x datos, acceso a y sistema, etc.
        * **¿Quién?**: atacante, usuarios afectados, clientes afectados, etc.?
1. **Identificar y priorizar los dispositivos y estrategias testigo** para responder a las preguntas clave.
    * Consultar los diagramas de la red, los sistemas de gestión de activos y la experiencia de las SME
    * Consultar la [Lista de recursos de respuesta](#referencia-lista-de-recursos-de-respuesta)
1. Consulte las [guías operativas (playbooks)](#guias-operativas-playbooks) para conocer preguntas clave, dispositivos testigo y estrategias para investigar amenazas comunes o muy dañinas.

**El plan de investigación es fundamental para una respuesta eficaz; impulsa todas las acciones de investigación.  Utilice el pensamiento crítico, la creatividad y el buen juicio.**

### Referencia: Táctica del atacante a la matriz de preguntas clave

Táctica del atacante    | La forma en que los atacantes ...      | Posibles preguntas clave
*********************** |****************************************| *****************************************
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

## Crear y desplegar indicadores de compromiso (IOC)

> Haga hincapié en los indicadores **dinámicos y de comportamiento** junto con las huellas digitales estáticas.

* Crear IOCs basados en [pistas iniciales](#recoger-las-pistas-iniciales) y [análisis](#analizar-las-pruebas).
* Cree IOCs usando un formato abierto soportado por sus herramientas (_por ejemplo_, [STIX 2.0](https://oasis-open.github.io/cti-documentation/stix/intro)), si es posible.
* Utilice la automatización, si es posible.
* **No** desplegar "feeds" de IOCs no relacionados y no curados, ya que pueden causar confusión y fatiga.
* Considerar todos los tipos de IOCs:
  * IOCs basados en la red, como direcciones IP o MAC, puertos, direcciones de correo electrónico, contenido o metadatos del correo electrónico, URLs, dominios o patrones PCAP.
  * IOCs basados en el host, como rutas, hashes de archivos, contenido o metadatos de archivos, claves de registro, MUTEXes, autoejecuciones o artefactos y permisos de usuarios.
  * IOCs basados en la nube, como patrones de registro para despliegues [SaaS](https://en.wikipedia.org/wiki/Software_as_a_service) o [IaaS](https://en.wikipedia.org/wiki/Infrastructure_as_a_service)
  * IOCs de comportamiento (a.k.a., patrones, TTPs) tales como patrones de árbol de procesos, heurística, desviación de la línea base y patrones de inicio de sesión.
* Correlacionar varios tipos de IOCs, como indicadores basados en la red y en el host en los mismos sistemas.

## Identificar los sistemas de interés

1. Validar si son relevantes.
2. Categorizar la(s) razón(es) por la(s) que son "de interés": tiene malware, acceso por cuenta comprometida, tiene datos sensibles, etc.  Trátelas como "etiquetas", puede haber más de una categoría por sistema.
3. Prioriza la recogida, el análisis y la reparación en función de las necesidades de la investigación, el impacto en el negocio, _etc_.

## Recogida de pruebas

* Priorizar en base al plan de investigación
* Recoger datos de respuesta en vivo utilizando {{LIVE_RESPONSE_TOOL}}.
* Recoger los registros relevantes de los sistemas (si no forman parte de la respuesta en vivo), agregadores, SIEM o consolas de dispositivos.
* Recoger la imagen de la memoria, si es necesario y si no forma parte de la respuesta en vivo, utilizando {{MEMORY_COLLECTION_TOOL}}.
* Recoger la imagen del disco, si es necesario, utilizando {{DISK_IMAGE_TOOL}}.
* Recoger y almacenar las pruebas de acuerdo con la política, y con la cadena de custodia adecuada.

Considere la posibilidad de recopilar los siguientes artefactos como evidencia, ya sea en tiempo real (_por ejemplo_, a través de EDR o un SIEM) o bajo demanda:

###  Ejemplo de artefactos útiles

* Procesos en ejecución
* Servicios en ejecución
* Hashes ejecutables
* Aplicaciones instaladas
* Usuarios locales y de dominio
* Puertos de escucha y servicios asociados
* Configuración de resolución del sistema de nombres de dominio (DNS) y rutas estáticas
* Conexiones de red establecidas y recientes
* Clave de ejecución y otra persistencia de la ejecución automática
* Tareas programadas y trabajos cron
* Artefactos de ejecución pasada (por ejemplo, Prefetch y Shimcache)
* Registros de eventos
* Política de grupo y artefactos WMI
* Detecciones antivirus
* Binarios en ubicaciones de almacenamiento temporal
* Credenciales de acceso remoto
* Telemetría de conexiones de red (por ejemplo, netflow, permisos de cortafuegos)
* Tráfico y actividad de DNS
* Actividad de acceso remoto, incluido el Protocolo de Escritorio Remoto (RDP), la red privada virtual (VPN), SSH, la informática de red virtual (VNC) y otras herramientas de acceso remoto
* Cadenas de identificadores de recursos uniformes (URI), cadenas de agentes de usuario y acciones de aplicación del proxy
* Tráfico web (HTTP/HTTPS)

## Analizar las pruebas

* Priorizar basándose en el plan de investigación
* Analizar y clasificar los datos de la respuesta en vivo
* Analizar la memoria y las imágenes de disco (es decir, realizar análisis forenses)
* Analizar el malware
* _OPCIONAL:_ Enriquecer con investigación e inteligencia
* Documentar nuevos indicadores de compromiso (IOCs)
* Actualizar el archivo del caso

### Ejemplo de indicadores útiles

* Comportamiento inusual de autenticación (_p. ej._, frecuencia, sistemas, hora del día, ubicación remota)
* Nombres de usuario con formato no estándar
* Binarios no firmados que se conectan a la red
* Balizamiento o transferencias de datos significativas
* Solicitudes de línea de comandos PowerShell con comandos codificados en Base64
* Actividad excesiva de RAR, 7zip o WinZip, especialmente con nombres de archivo sospechosos
* Conexiones en puertos no utilizados previamente.
* Patrones de tráfico relacionados con el tiempo, la frecuencia y el recuento de bytes
* Cambios en las tablas de enrutamiento, como la ponderación, las entradas estáticas, las pasarelas y las relaciones entre pares.

## Iterar la investigación

[Actualizar el plan de investigación](#actualizar-el-plan-de-investigación-y-el-archivo-del-incidente) y repetir hasta el cierre.

# Guías operativas (Playbooks)

Las guías operativas son anexos prácticos y accionables por tipo de incidente. Mantenga este IRP enfocado en lo estratégico/táctico y use playbooks para lo operativo.

Nota: en esta carpeta del proyecto no se incluyen playbooks separados; aquí solo se deja la referencia de cuáles serían los mínimos recomendados.

- Playbook: Identity and Access
- Playbook: Ingeniería Social
- Playbook: Phishing
- Playbook: Ransomware
- Playbook: Supply Chain

# Remediar

**[Investigar](#investigar), [Remediar](#remediar) y [Comunicar](#comunicar) en paralelo, utilizando equipos separados, si es posible.** El Incident Commander coordinará estas actividades. Notifique al Incident Commander si hay pasos que el equipo debe considerar

## Actualización del plan de remediación

1. Revise el archivo del incidente en {{INCIDENT_FILE_LOCATION}} utilizando el [nombre del incidente](#nombre-del-incidente)
2. Revise las [guías operativas (playbooks)](#guias-operativas-playbooks) aplicables.
3. Revise la [lista de recursos de respuesta](#referencia-lista-de-recursos-de-respuesta).
4. Considere qué tácticas del atacante están en juego en este incidente.  Utilice la lista de MITRE [ATT&CK](https://attack.mitre.org/wiki/Main_Page) (_i._, Persistencia, Escalada de Privilegios, Evasión de la Defensa, Acceso a Credenciales, Descubrimiento, Movimiento Lateral, Ejecución, Recolección, Exfiltración y Mando y Control), o un marco similar.
5. Desarrollar remedios para cada táctica en juego, en la medida en que sea factible teniendo en cuenta las herramientas y los recursos existentes.  Considere remedios para [Proteger](#protección), [Detectar](#detección), [Contener](#contención), y [Erradicar](#erradicar) cada comportamiento del atacante.
6. Priorizar en base a la [estrategia de tiempo](#elegir-el-momento-de-la-reparacion), el impacto y la urgencia.
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
* Actualizar las firmas de IPS y antimalware de la red y el host mediante IOC.
* Retirar de la red los sistemas críticos o comprometidos.
* Póngase en contacto con los proveedores para obtener ayuda (por ejemplo, proveedores de servicios de Internet, proveedores de SaaS).
* Poner en lista blanca las conexiones de red para los servidores y servicios críticos.
* Matar o deshabilitar procesos o servicios.
* Bloquear o eliminar el acceso de proveedores y socios externos, especialmente el acceso privilegiado.

### Erradicar

> "¿Cómo podemos eliminar esto de nuestros activos?  ¿Cómo podemos mejorar la erradicación en el futuro?"

Utilice lo siguiente como punto de partida para las acciones de erradicación:

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

* Evaluar y explicar los riesgos de las acciones de remediación a las partes interesadas.
* Implementar inmediatamente aquellas acciones de remediación que afecten poco o nada al atacante (a veces llamadas "acciones de postura"). Por ejemplo, muchas de las acciones de [protección](#protección) y [detección](#detección) anteriores son buenas candidatas.
* Programar y asignar acciones de remediación de acuerdo con la estrategia de tiempo.
* Ejecute las acciones de corrección en lotes, como eventos, para lograr la máxima eficacia y el mínimo riesgo.
* Documentar el estado de ejecución y el tiempo en el archivo de incidentes, especialmente para las medidas temporales.

## Iterar la remediación

[Actualizar el plan de remediación](#actualización-del-plan-de-remediación) y repetir hasta el cierre.

# Comunicar

* [Investigar](#investigar), [Remediar](#remediar) y [Comunicar](#comunicar) en paralelo, utilizando equipos separados, si es posible.  Notifique al Incident Commander si hay pasos que el equipo debe considerar

Toda comunicación debe incluir la información más precisa disponible.  Muestre integridad.  No comunicar especulaciones.

## Comunicación Interna

### Notificar y actualizar a las partes interesadas

* Comunicarse con las partes interesadas como parte de las llamadas iniciales y de actualización, así como a través de actualizaciones basadas en eventos en la llamada y el chat.
* Coordinar las actualizaciones independientes (_p. ej._, ejecutivas, legales) según sea necesario, pero con la menor frecuencia posible, para mantener el foco en la investigación y la reparación.
* Concéntrese en la mejor evaluación del vector, el impacto, el resumen y los aspectos más destacados de la línea de tiempo, incluidos los pasos de remediación.  No especule.

### Notificar y actualizar la organización

* **No** notifique o actualice al personal que no responde hasta que el Incident Commander lo autorice, en particular si existe el riesgo de una amenaza interna.
* Coordine las actualizaciones de los equipos o de toda la organización con los ejecutivos y la dirección de la empresa.
* Concéntrese en la mejor evaluación del vector, el impacto, el resumen y los aspectos más destacados de la línea de tiempo, incluidos los pasos de remediación.  No especule.

### Crear Informe de Incidentes

* Tras el cierre del incidente, capture la información en el [archivo del incidente](#crear-archivo-del-incidente) para su distribución utilizando {{INCIDENT_REPORT_TEMPLATE}}.
* Distribuir el informe de incidentes a: {{INCIDENT_REPORT_RECIPIENTS}}.

## Comunicar al exterior

### Notificar a los reguladores

* **No** notifique ni ponga al día al personal que no ha respondido hasta que el Incident Commander lo autorice.
* Notificar a los organismos reguladores (por ejemplo, HIPAA/HITRUST, PCI DSS, SOX) si es necesario y de acuerdo con la política.
* Coordinar los requisitos, el formato y los plazos con {{COMPLIANCE_TEAM}}.

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
* Póngase en contacto con las fuerzas del orden locales ({{LOCAL_LE_CONTACT}}) según procedimiento interno.
* Póngase en contacto con los operadores de los sistemas utilizados en el ataque, sus sistemas también pueden haber sido comprometidos.

### Contactar con el servicio de asistencia de respuesta externa

* Póngase en contacto con {{INCIDENT_RESPONSE_VENDOR}} para apoyo especializado.
* Póngase en contacto con {{PUBLIC_RELATIONS_VENDOR}} para coordinar comunicación externa.
* Póngase en contacto con {{INSURANCE_VENDOR}}.

### Compartir Inteligencia

* Comparta los IOCs con [Infragard](https://www.infragard.org/) si procede.
* Comparta los IOCs con {{ISAC_CONTACT}} (si aplica).

# Recuperación

La recuperación se centra en volver a la operación normal con seguridad, minimizando el riesgo de reinfección o re-compromiso.

En esta organización, la recuperación debe priorizar (según PDS):
- Restauración segura del servidor de archivos y servicios internos críticos.
- Recuperación desde copias cifradas/externas con verificación (PRY-003) y pruebas de restauración periódicas.
- Reducción de reinfección mediante segmentación/monitorización (PRY-004) y rotación de credenciales.

Checklist recomendado (genérico):

1. Confirmar criterios de "sistema limpio" antes de levantar el servicio (sin IOCs activos, cuentas rotadas, parches aplicados, monitorización reforzada).
2. Restaurar desde backups verificados cuando aplique (idealmente con pruebas de restauración previas y backups cifrados/externos).
3. Rotar credenciales relevantes (usuarios afectados, cuentas privilegiadas, API keys/tokens, cuentas de servicio).
4. Reaplicar hardening y configuración base (políticas, segmentación, MFA, reglas de firewall/WAF si aplica).
5. Validar integridad y disponibilidad:
  * pruebas funcionales por el área de negocio,
  * verificación de integridad de datos (si aplica),
  * verificación de logs/telemetría.
6. Monitorización post-incidente:
  * elevar el nivel de logging/alertas temporalmente,
  * hunting proactivo de IOCs y comportamiento anómalo.
7. Comunicación de vuelta a normalidad: informar a las partes interesadas del estado y de restricciones temporales.
8. Programar el After Action Review (AAR) en un plazo de {{AAR_SLA}} con: {{AAR_ATTENDEES}}.

**La recuperación suele estar dirigida por las unidades de negocio y los propietarios de los sistemas.  Tome medidas de recuperación sólo en colaboración con las partes interesadas pertinentes.**

1. Poner en marcha un plan de continuidad de negocio/recuperación de desastres: Por ejemplo, considerar la migración a ubicaciones operativas alternativas, sitios de conmutación por error, sistemas de copia de seguridad.
2. Integrar las acciones de seguridad con los esfuerzos de recuperación de la organización.

## Criterios de cierre técnico

El incidente podrá considerarse contenido y en recuperación cuando:

- No existan IOCs activos durante {{MONITORING_WINDOW}}
- Las credenciales comprometidas hayan sido rotadas
- Los sistemas críticos hayan sido validados
- Los propietarios de negocio aprueben la restauración
- El Incident Commander autorice el cierre operativo

RTO objetivo: {{RTO}}

RPO objetivo: {{RPO}}

## After Action Review (AAR)

El AAR debe incluir:

- Qué ocurrió
- Qué funcionó bien
- Qué falló
- Decisiones clave
- Brechas de detección
- Brechas de comunicación
- Acciones correctivas
- Responsable y fecha objetivo de cada acción

# Respuesta a las preguntas (Actividad 4.01)

> Esta sección responde de forma directa a las preguntas 1.a–3.a del enunciado.  
> Para evitar repetir información del IRP, aquí se responden las preguntas y, cuando hace falta, se referencian apartados que ya están desarrollados en el documento principal.

***
## 1.a Relación MITRE ATT&CK / RE&CT con el plan de respuesta

### ¿Qué relación existe?

La relación entre MITRE ATT&CK y RE&CT con el plan de respuesta es bastante clara, porque ambos ayudan a organizar mejor la respuesta ante incidentes y a que el análisis no se quede en algo demasiado genérico.

En lugar de limitarse a ideas generales como "investigar un incidente", estos marcos permiten concretar mejor:
- qué técnicas puede estar utilizando un atacante,
- qué evidencias deberían revisarse,
- y qué acciones de contención o respuesta tienen más sentido en cada situación.

En este plan:
- **MITRE ATT&CK** se utiliza como referencia para identificar y describir técnicas de ataque. Por ejemplo, permite relacionar comportamientos observados con técnicas concretas como phishing o uso de credenciales válidas.
- **RE&CT** se utiliza de una forma más práctica, ya que ayuda a traducir esas técnicas en acciones reales de detección y respuesta, como qué monitorizar, qué bloquear o qué sistemas aislar.

***
### ¿Cómo me ayudó el trabajo previo con las matrices?

El trabajo previo con MITRE ATT&CK y RE&CT ha sido útil principalmente para estructurar mejor el plan y justificar algunas decisiones.

1. **Priorización de riesgos**  
   En lugar de intentar cubrir todos los escenarios posibles, se priorizan los más probables y críticos para la empresa, como phishing, robo de credenciales y ransomware, que además coinciden con el análisis de riesgos del PDS.

2. **Mejor definición del triage**  
   Ayuda a convertir síntomas en algo más concreto. Por ejemplo:
   - muchos intentos fallidos de acceso → posible T1110 (fuerza bruta),
   - uso de cuentas válidas → posible T1078 (credenciales legítimas).

   Esto ayuda a pasar de un simple "algo raro está pasando" a preguntas más concretas como:
   - qué usuario está implicado,
   - desde dónde se conecta,
   - cuándo empezó la actividad,
   - o qué sistemas pueden estar afectados.

3. **Definición de evidencias mínimas**  
   Cada tipo de incidente necesita conservar información distinta antes de actuar:
   - phishing: correo original, cabeceras y enlaces o adjuntos,
   - ransomware: artefactos del sistema y línea temporal antes de restaurar,
   - credenciales comprometidas: logs de autenticación y sesiones activas.

4. **Relación entre detección y respuesta**  
   RE&CT ayuda a no quedarse solo en la parte de análisis. Si se detecta un posible compromiso de credenciales, la respuesta no es únicamente investigar, sino también actuar: revocar sesiones, cambiar contraseñas y aplicar medidas de contención.

***
### Evidencias que se deberían aportar

Como soporte de este apartado, lo más adecuado sería incluir:
- un export de MITRE ATT&CK Navigator con las técnicas priorizadas,
- y una tabla de relación ATT&CK → RE&CT donde se vea el vínculo entre técnicas y acciones de detección o respuesta.

***
## 1.b Playbooks necesarios y en qué me baso para identificarlos

### Playbooks identificados

A partir del análisis de riesgos, la taxonomía y las técnicas más relevantes, los playbooks mínimos para esta empresa serían:

- Ransomware  
- Phishing  
- Ingeniería social  
- Gestión de identidades y accesos (Identity & Access)  
- Ataques a proveedores o cadena de suministro (Supply Chain)

***
### Criterios utilizados para seleccionarlos

La selección de playbooks se basa en varios elementos del análisis previo.

1. **Plan Director de Seguridad (PDS)**  
   El PDS identifica riesgos importantes como:
   - ransomware en servidores de archivos,
   - problemas relacionados con copias de seguridad,
   - debilidades en credenciales y accesos,
   - y falta de concienciación de usuarios.

   Esto justifica directamente la necesidad de playbooks relacionados con ransomware, phishing e identidad.

2. **Taxonomía de incidentes**  
   La taxonomía refuerza cuáles son los vectores más habituales dentro de la organización, especialmente correo, credenciales, acceso remoto y posibles terceros. Esto ayuda a priorizar los playbooks más útiles para incidentes reales.

3. **MITRE ATT&CK / RE&CT**  
   Las técnicas identificadas como más relevantes (por ejemplo T1566, T1078, T1110 o T1486) indican claramente qué tipos de incidentes necesitan una respuesta rápida y estandarizada.

Además, algunos comportamientos como escaneo o sniffing no se consideran playbooks independientes, ya que normalmente forman parte de fases de reconocimiento dentro de incidentes más amplios.

***
### Diagrama de ejemplo de un playbook (ransomware)

```mermaid
flowchart TD
  A[Alerta o detección] --> B{¿Indicios de cifrado}
  B -- No --> C[Triage y monitorización]
  B -- Sí --> D[Clasificación SEV1 / SEV2]
  D --> E[Preservar evidencias]
  E --> F[Contención: aislamiento de equipos]
  F --> G[Erradicación del vector de entrada]
  G --> H[Recuperación desde backups verificados]
  H --> I[Revisión y lecciones aprendidas (AAR)]
```

## 1.c Cobertura de fases del plan y valoración de fases

### ¿Cómo aseguro que cubro todas las fases?

La cobertura del plan se asegura principalmente por la propia estructura del IRP, ya que cada fase del proceso de respuesta está separada y definida dentro del documento.  
En lugar de repetir todo el contenido aquí, la evidencia está en que el flujo completo aparece organizado de forma secuencial:

**Preparación → Evaluación → Investigación → Remediación → Comunicación → Recuperación → AAR (Lessons Learned)**

Esto permite seguir el ciclo completo de gestión de incidentes sin dejar partes "sueltas" o poco definidas.

Además, el plan no solo describe qué hacer en cada fase, sino también cuándo se considera completada una etapa y cuándo se puede pasar a la siguiente. Para ello se incluyen criterios de cierre técnico y condiciones mínimas de validación.

***
### Criterios de activación y transición entre fases

Uno de los puntos importantes para que el plan sea útil es evitar ambigüedades. Por eso se definen criterios claros para activar el IRP y para escalar la severidad de un incidente.

- **Paso de evento a incidente:**  
  Se activa formalmente el proceso de respuesta cuando existe impacto funcional, afectación a la información o indicios razonables de compromiso.  
  Si existe duda, se prioriza iniciar la respuesta y ajustar posteriormente la clasificación.

- **Escalado de SEV3 a SEV2:**  
  Algunos ejemplos que justificarían el escalado serían:
  - afectación a sistemas críticos,
  - compromiso de cuentas privilegiadas,
  - múltiples equipos afectados,
  - o indicios de acceso no autorizado mantenido en el tiempo.

- **Escalado a SEV1:**  
  Se considera especialmente crítico cuando existe:
  - ransomware activo,
  - caída generalizada de servicios,
  - extorsión,
  - o una posible brecha de datos relevante relacionada con RGPD.

- **Estado de contención:**  
  Un incidente se considera contenido cuando:
  - se ha detenido la propagación,
  - los accesos comprometidos han sido bloqueados,
  - y la monitorización deja de mostrar actividad maliciosa asociada.

- **Paso a recuperación:**  
  La recuperación comienza cuando el equipo técnico considera que el entorno está suficientemente controlado y que ya es posible restaurar servicios sin riesgo alto de reinfección.

- **Cierre técnico del incidente:**  
  El cierre se realiza cuando:
  - los sistemas han sido validados,
  - las credenciales comprometidas han sido rotadas,
  - la monitorización no detecta nueva actividad,
  - y negocio aprueba el retorno a la normalidad.

***
### ¿Qué fase suele estar más floja en un plan de respuesta?

En muchos casos, la fase más débil suele ser la de **erradicación**.

Esto ocurre porque eliminar completamente la causa raíz no siempre es sencillo. A veces se restaura un sistema afectado, pero el vector inicial sigue presente, por ejemplo:
- una cuenta comprometida,
- una vulnerabilidad sin corregir,
- o una regla maliciosa que continúa activa.

Además, esta fase depende mucho de la visibilidad disponible. Si la organización no tiene buen inventario, SIEM o EDR correctamente configurados, identificar persistencia o movimiento lateral se vuelve más complicado.

También es una fase que suele generar presión por parte de negocio, ya que una erradicación completa puede implicar:
- reinicios,
- cambios masivos de credenciales,
- cortes de acceso,
- o paradas temporales de servicios.

Por último, actuar demasiado rápido puede provocar pérdida de evidencias útiles para el análisis posterior.

***
### ¿Qué fase está mejor trabajada en este plan?

La parte más sólida del plan es la relacionada con el **triage y el escalado inicial**.

Esto se debe a varios motivos:

- La clasificación SEV1–SEV4 está bien definida.
- El flujo de escalado evita decisiones improvisadas.
- Las responsabilidades están repartidas de forma clara.
- Existe una cadencia de comunicación definida según la severidad.
- Se prioriza actuar rápido durante las primeras fases del incidente.

En general, el plan intenta que las primeras decisiones sean lo más rápidas y organizadas posible, ya que normalmente son las que más influyen en limitar el impacto final.

***
## 2.a Flujo de toma de decisiones y escalado + plan de comunicación

### ¿En qué consiste el flujo de toma de decisiones y escalado?

El flujo principal de actuación ya aparece representado en el IRP mediante el diagrama de escalado y gestión de incidentes.  
El proceso sigue una secuencia lógica:

**detección → validación → clasificación → escalado → contención → recuperación**

Sin embargo, más allá del flujo técnico, en incidentes reales suelen aparecer decisiones que no son totalmente automáticas y que requieren coordinación entre diferentes áreas.

***
### Puntos de ambigüedad y decisiones humanas

Aunque el proceso esté definido, hay situaciones donde la parte humana tiene bastante peso.

- **Aislamiento de sistemas críticos:**  
  La decisión técnica suele tomarla el Incident Commander junto con el equipo técnico, pero el impacto operativo debe validarlo el responsable de negocio afectado.

- **Comunicación externa:**  
  Las decisiones relacionadas con clientes, reguladores o posibles brechas RGPD deben coordinarse con los equipos de legal y compliance para evitar comunicar información incorrecta o incompleta.

- **Priorización durante el incidente:**  
  Dependiendo del escenario, las prioridades cambian:
  - si hay exfiltración activa, la prioridad es contener,
  - si el ransomware se está propagando, lo urgente es aislar,
  - y si hay caída de servicios críticos, debe buscarse equilibrio entre recuperación rápida y seguridad.

- **Presión por restaurar servicios:**  
  En algunos casos negocio puede pedir restaurar sistemas rápidamente.  
  Aun así, antes de recuperar servicios se consideran mínimos necesarios:
  - preservar evidencias,
  - cortar el vector de entrada,
  - y rotar credenciales comprometidas.

***
### Reglas básicas de decisión

Para evitar conflictos o falta de coordinación, el plan define varios principios básicos:

- El Incident Commander coordina la respuesta técnica.
- Legal y Compliance gestionan la comunicación externa.
- Negocio valida el impacto operativo y las prioridades de continuidad.
- Seguridad mantiene la autoridad sobre los controles mínimos necesarios antes de restaurar servicios.

***
### ¿Existe un plan de comunicación?

Sí. El plan incluye una fase específica de comunicación para reducir desorganización y evitar información contradictoria.

Se definen:
- canales oficiales,
- responsables de comunicación,
- frecuencia de actualizaciones,
- y destinatarios según la severidad del incidente.

La comunicación se divide principalmente en:
- comunicación técnica interna,
- comunicación a dirección,
- y comunicación externa cuando aplica.

***
## 3.a Respuestas resilientes: por qué lo son y en qué fases se centran

### ¿Cómo se asegura la resiliencia en el plan?

La resiliencia se trabaja principalmente intentando que la organización pueda seguir operando o recuperarse rápidamente incluso después de un incidente grave.

Para ello el plan incluye medidas como:

- backups externos y verificados,
- segmentación de red,
- MFA y mínimo privilegio,
- y preservación adecuada de evidencias.

***
### ¿Por qué estas medidas se consideran resilientes?

Se consideran resilientes porque reducen el impacto cuando algo falla.

Por ejemplo:
- la segmentación limita la propagación,
- las copias de seguridad permiten restaurar servicios,
- y la gestión de identidades reduce el impacto de credenciales comprometidas.

La idea no es evitar todos los incidentes, sino conseguir que el daño sea controlable y la recuperación más rápida.

***
### ¿En qué fases se centran principalmente?

Las medidas resilientes aparecen sobre todo en tres fases:

- **Preparación:**  
  backups, segmentación, formación y controles de identidad.

- **Contención:**  
  aislamiento de equipos, bloqueo de accesos y limitación de propagación.

- **Recuperación:**  
  restauración controlada, validación de sistemas y monitorización posterior.

***
### Ejemplos prácticos de recuperación resiliente

#### Ransomware en servidor de archivos

- **Qué falla:**  
  indisponibilidad del sistema y riesgo de propagación.

- **Respuesta resiliente:**  
  aislamiento rápido, bloqueo del movimiento lateral y restauración desde backups verificados.

- **Fases principales:**  
  contención y recuperación.

***
#### Compromiso de credenciales

- **Qué falla:**  
  acceso no autorizado usando cuentas legítimas.

- **Respuesta resiliente:**  
  revocación de sesiones, cambio de contraseñas, MFA y revisión de accesos sospechosos.

- **Fases principales:**  
  contención y erradicación.

***
#### Posible brecha de datos

- **Qué falla:**  
  riesgo legal, reputacional y posible exfiltración.

- **Respuesta resiliente:**  
  conservación de evidencias, bloqueo del canal de salida y coordinación con legal/compliance.

- **Fases principales:**  
  comunicación, remediación y recuperación.
