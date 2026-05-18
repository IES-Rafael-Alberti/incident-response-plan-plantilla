# Acerca de este plan

Este Plan de Respuesta a Incidentes ha sido adaptado para {{COMPANY_NAME}} por {{AUTHOR_NAME}} como parte de la actividad 4.01, centrada en la creacion de un plan de respuesta y playbooks sectoriales. El documento parte de una plantilla general de respuesta a incidentes y la adapta al contexto de una asesoria que presta servicios a autonomos y PYMES, con especial atencion a la continuidad del negocio, la proteccion de datos personales y la coordinacion con proveedores externos.

El plan no debe entenderse como un documento teorico aislado. Su utilidad real depende de que se mantenga actualizado, se pruebe periodicamente y se use como guia operativa durante incidentes reales o simulados. La version actual corresponde a la revision {{REVISION_NUMBER}}, publicada el {{RELEASE_DATE}}, revisada el {{REVIEW_DATE}} y probada el {{TEST_DATE}}.

## Alcance

El plan cubre los activos y procesos críticos identificados en el Plan Director de Seguridad de {{COMPANY_NAME}}:

* CRM/ERP y aplicaciones de gestión
* Servidores de archivos y aplicaciones
* Datos personales de clientes, proveedores y trabajadores
* Correo corporativo
* Pagina web y tienda online externalizada
* Copias de seguridad
* Puestos de trabajo
* Servicios cloud, integraciones y proveedores externos
* Procesos necesarios para mantener la continuidad del servicio

Los playbooks incluidos se han priorizado por probabilidad e impacto, teniendo en cuenta el análisis de riesgos, la taxonomía de incidentes y la trazabilidad con MITRE ATT&CK y RE&CT. El objetivo es que cada respuesta permita contener el incidente, recuperar el servicio y reforzar las capacidades de prevención, detección, cooperación y mejora continua.

## Base documental

La adaptación del plan se apoya en los siguientes documentos y evidencias internas del repositorio:

* `PlanDirectorSeguridad.md`, referencia principal para activos críticos, riesgos y prioridades de seguridad.
* `1.b - Politica de seguridad del puesto de trabajo (3).md`, para alinear las respuestas con las normas de uso seguro del puesto de trabajo.
* `evidencias-mitre/matriz-trazabilidad-mitre-react.md`, que relaciona riesgos del PDS, activos, incidentes priorizados, técnicas ATT&CK y acciones RE&CT.
* Capas JSON de ATT&CK Navigator en `evidencias-mitre/`, como evidencia del trabajo de selección de técnicas.
* Capa JSON de RE&CT en `evidencias-mitre/react-response-layer.json`, como evidencia del trabajo de selección de acciones de respuesta.
* `playbooks/diagramas-flujo-playbooks.md`, que resume el flujo operativo de cada playbook.
* `reference/glossary.md`, que define los términos técnicos necesarios para interpretar el plan.

## Uso de MITRE ATT&CK y RE&CT

MITRE ATT&CK se ha usado para razonar como podría actuar un atacante en cada escenario: acceso inicial, ejecución, persistencia, movimiento lateral, acceso a credenciales, exfiltración, impacto y evasión de defensas. Esto permite que la investigación no se quede en el síntoma visible, sino que busque el vector de entrada, alcance real, persistencia, cuentas afectadas, datos comprometidos y los indicadores de compromiso.

RE&CT se ha usado para convertir ese análisis en acciones concretas de respuesta: preparar evidencias, identificar el alcance, contener sistemas, erradicar persistencia, recuperar servicios y extraer lecciones aprendidas. La relacion entre ambas matrices queda reflejada en los playbooks, en la fase de investigación de `during.md` y en la revisión posterior de `after.md`.

## Uso de MISP e intercambio de información

El plan incorpora MISP como plataforma de intercambio estructurado de información sobre incidentes. Su uso esta previsto cuando existan indicadores de compromiso relevantes, incidentes S1/S2, afectación a terceros, campanas de phishing, malware, ransomware, compromiso de proveedores o necesidad de cooperación con equipos externos.

La informacion compartida en MISP debe respetar el principio de minimización de datos y la clasificación TLP. No se compartirán datos personales, informacion contractual sensible ni evidencias forenses completas salvo que exista autorización expresa del Incident Commander y validación legal. El objetivo de MISP es facilitar la detección y cooperación mediante IOCs, TTPs, hashes, dominios, IPs, URLs, patrones de ataque y contexto técnico suficiente.

## Mantenimiento y mejora continua

El plan debe revisarse como mínimo una vez por curso o después de cualquier incidente relevante, simulacro, cambio importante de infraestructura, cambio de proveedor critico o modificación de la normativa. Tras cada incidente se realizará una revisión posterior a la acción segun `after.md`, documentando métricas, decisiones, aciertos, fallos y acciones correctivas.

Las actualizaciones deberán reflejarse en:

* `during.md`, si cambia el flujo general de respuesta
* `after.md`, si cambian las métricas, el proceso de revisión o las acciones de mejora
* `roles/`, si cambian responsabilidades o contactos
* `playbooks/`, si se identifican nuevos escenarios o mejoras operativas
* `evidencias-mitre/`, si se actualizan técnicas ATT&CK o acciones RE&CT
* `info.yml`, si cambian contactos, canales, herramientas, SLA o proveedores

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

Este trabajo se basa en la plantilla publica `incident-response-plan-template` de Counteractive Security, distribuida bajo licencia Apache 2.0. La adaptación, el contenido sectorial, los playbooks, la trazabilidad con MITRE ATT&CK y RE&CT, uso de MISP y las referencias al Plan Director de Seguridad han sido desarrollados para el caso de {{COMPANY_NAME}}.

La plantilla original se conserva como referencia metodológica, pero el contenido operativo del plan debe interpretarse segun la organización, activos, riesgos, contactos y procedimientos definidos en esta entrega.
