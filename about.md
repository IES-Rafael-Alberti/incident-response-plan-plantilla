# Acerca de este plan

Este Plan de Respuesta a Incidentes ha sido adaptado para {{COMPANY_NAME}} por {{AUTHOR_NAME}} como parte de la actividad 4.01, centrada en la creacion de un plan de respuesta y playbooks sectoriales. El documento parte de una plantilla general de respuesta a incidentes y la adapta al contexto de una asesoria que presta servicios a autonomos y PYMES, con especial atencion a la continuidad del negocio, la proteccion de datos personales y la coordinacion con proveedores externos.

El plan no debe entenderse como un documento teorico aislado. Su utilidad depende de que se mantenga actualizado, se pruebe periodicamente y se use como guia operativa durante incidentes reales o simulados. La version actual corresponde a la revision {{REVISION_NUMBER}}, publicada el {{RELEASE_DATE}}, revisada el {{REVIEW_DATE}} y probada el {{TEST_DATE}}.

## Alcance

El alcance del plan cubre los activos y procesos criticos identificados en el Plan Director de Seguridad de {{COMPANY_NAME}}:

* CRM/ERP y aplicaciones de gestion.
* Servidores de archivos y aplicaciones.
* Datos personales de clientes, proveedores y trabajadores.
* Correo corporativo.
* Pagina web y tienda online externalizada.
* Copias de seguridad.
* Puestos de trabajo.
* Servicios cloud, integraciones y proveedores externos.
* Procesos necesarios para mantener la continuidad del servicio.

Los playbooks incluidos se han priorizado por probabilidad e impacto, teniendo en cuenta el analisis de riesgos, la taxonomia de incidentes y la trazabilidad con MITRE ATT&CK y RE&CT. El objetivo es que cada respuesta permita contener el incidente, recuperar el servicio y reforzar las capacidades de prevencion, deteccion, cooperacion y mejora continua.

## Base documental

La adaptacion del plan se apoya en los siguientes documentos y evidencias internas del repositorio:

* `PlanDirectorSeguridad.md`, usado como referencia principal para activos criticos, riesgos y prioridades de seguridad.
* `1.b - Politica de seguridad del puesto de trabajo (3).md`, usada para alinear las respuestas con las normas de uso seguro del puesto de trabajo.
* `evidencias-mitre/matriz-trazabilidad-mitre-react.md`, que relaciona riesgos del PDS, activos, incidentes priorizados, tecnicas ATT&CK y acciones RE&CT.
* Capas JSON de ATT&CK Navigator en `evidencias-mitre/`, usadas como evidencia del trabajo de seleccion de tecnicas.
* Capa JSON de RE&CT en `evidencias-mitre/react-response-layer.json`, usada como evidencia del trabajo de seleccion de acciones de respuesta.
* `playbooks/diagramas-flujo-playbooks.md`, que resume el flujo operativo de cada playbook.
* `reference/glossary.md`, que define los terminos tecnicos necesarios para interpretar el plan.

## Uso de MITRE ATT&CK y RE&CT

MITRE ATT&CK se ha usado para razonar como podria actuar un atacante en cada escenario: acceso inicial, ejecucion, persistencia, movimiento lateral, acceso a credenciales, exfiltracion, impacto y evasion de defensas. Esta informacion permite que la investigacion no se limite al sintoma visible del incidente, sino que busque vector de entrada, alcance, persistencia, cuentas afectadas, datos comprometidos e indicadores de compromiso.

RE&CT se ha usado para convertir ese analisis en acciones de respuesta: preparar evidencias, identificar alcance, contener sistemas, erradicar persistencia, recuperar servicios y extraer lecciones aprendidas. La relacion entre ambas matrices queda reflejada en los playbooks, en la fase de investigacion de `during.md` y en la revision posterior de `after.md`.

## Uso de MISP e intercambio de informacion

El plan incorpora MISP como plataforma de intercambio estructurado de informacion sobre incidentes. Su uso esta previsto cuando existan indicadores de compromiso relevantes, incidentes S1/S2, afectacion a terceros, campanas de phishing, malware, ransomware, compromiso de proveedores o necesidad de cooperacion con equipos externos.

La informacion compartida en MISP debe respetar el principio de minimizacion de datos y la clasificacion TLP. No se compartiran datos personales, informacion contractual sensible ni evidencias forenses completas salvo que exista autorizacion expresa del Incident Commander y validacion legal. El objetivo de MISP es facilitar la deteccion y cooperacion mediante IOCs, TTPs, hashes, dominios, IPs, URLs, patrones de ataque y contexto tecnico suficiente.

## Mantenimiento y mejora continua

El plan debe revisarse como minimo una vez por curso o despues de cualquier incidente relevante, simulacro, cambio importante de infraestructura, cambio de proveedor critico o modificacion normativa. Tras cada incidente se realizara una revision posterior a la accion segun `after.md`, documentando metricas, decisiones, aciertos, fallos y acciones correctivas.

Las actualizaciones deberan reflejarse en:

* `during.md`, si cambia el flujo general de respuesta.
* `after.md`, si cambian las metricas, el proceso de revision o las acciones de mejora.
* `roles/`, si cambian responsabilidades o contactos.
* `playbooks/`, si se identifican nuevos escenarios o mejoras operativas.
* `evidencias-mitre/`, si se actualizan tecnicas ATT&CK o acciones RE&CT.
* `info.yml`, si cambian contactos, canales, herramientas, SLA o proveedores.

## Referencias

* Counteractive Security, Incident Response Plan Template: https://github.com/counteractive/incident-response-plan-template
* NIST SP 800-61 Rev. 2, Computer Security Incident Handling Guide: https://csrc.nist.gov/publications/detail/sp/800-61/rev-2/final
* MITRE ATT&CK: https://attack.mitre.org/
* MITRE ATT&CK Navigator: https://mitre-attack.github.io/attack-navigator/
* RE&CT Framework: https://atc-project.github.io/atc-react/
* MISP Project: https://www.misp-project.org/
* INCIBE-CERT: https://www.incibe.es/incibe-cert
* Agencia Espanola de Proteccion de Datos: https://www.aepd.es/
* Reglamento General de Proteccion de Datos (RGPD): https://eur-lex.europa.eu/eli/reg/2016/679/oj
* Esquema Nacional de Seguridad, Real Decreto 311/2022: https://www.boe.es/buscar/act.php?id=BOE-A-2022-7191
* CCN-CERT: https://www.ccn-cert.cni.es/

## Licencia y procedencia de la plantilla

Este trabajo se basa en la plantilla publica `incident-response-plan-template` de Counteractive Security, distribuida bajo licencia Apache 2.0. La adaptacion, contenido sectorial, playbooks, trazabilidad con MITRE ATT&CK y RE&CT, uso de MISP y referencias al Plan Director de Seguridad han sido desarrollados para el caso de {{COMPANY_NAME}}.

La plantilla original se conserva como referencia metodologica, pero el contenido operativo del plan debe interpretarse segun la organizacion, activos, riesgos, contactos y procedimientos definidos en esta entrega.
