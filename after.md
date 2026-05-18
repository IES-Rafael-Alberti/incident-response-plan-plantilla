# Revisión posterior al incidente

La fase posterior al incidente convierte la respuesta en aprendizaje operativo. El objetivo no es buscar culpables, sino confirmar qué ocurrió, qué impacto tuvo en {{COMPANY_NAME}}, qué controles funcionaron, qué controles fallaron y qué cambios deben aplicarse para reducir la probabilidad o el impacto de incidentes similares.

La revisión posterior a la acción (After Action Review, AAR) debe programarse dentro de {{AAR_SLA}} tras declarar el cierre operativo del incidente. El Incident Commander puede adelantarla si el incidente fue S1/S2, afectó a datos personales, implicó a proveedores críticos, generó comunicación pública o dejó riesgos residuales relevantes.

## Preparar el AAR

1. Nombrar un propietario del AAR. Por defecto será el Escriba, salvo que el Incident Commander designe a otra persona.
2. Invitar a los asistentes definidos en {{AAR_ATTENDEES}} e incluir, como mínimo:
   * Incident Commander e Incident Commander-Adjunto.
   * Escriba.
   * Líderes de Investigación, Remediación y Comunicación.
   * Propietarios de los activos o servicios afectados.
   * CISO o dpto TIC que participaron en la respuesta.
   * Legal/Cumplimiento si hubo datos personales, evidencias legales, proveedores, contratos o comunicación regulatoria.
   * Dirección para incidentes S1/S2 o cuando existan decisiones de continuidad de negocio.
   * Proveedores implicados: SOC/CERT externo, proveedor cloud, proveedor web/tienda, EDR, backup, seguro o comunicación externa, cuando hayan participado en la respuesta.
3. Revisar antes de la reunión:
   * Expediente del incidente.
   * Línea temporal.
   * Severidad inicial y severidad final.
   * Activos afectados según el PDS.
   * Playbook aplicado y desviaciones respecto al procedimiento.
   * Técnicas MITRE ATT&CK observadas o probables.
   * Acciones RE&CT aplicadas.
   * IOCs, TTPs, logs y artefactos forenses conservados.
   * Evento MISP creado, TLP aplicado y destinatarios, si se compartió inteligencia.
   * Comunicaciones internas, externas, regulatorias y con proveedores.
   * Estado de recuperación, excepciones aceptadas y riesgos residuales.

## Realizar la reunión AAR

Documentar respuestas claras, verificables y sin atribución personal de culpa. La reunión debe centrarse en hechos, impacto, decisiones y mejora.

1. **Qué ocurrió.**
   * Construir una línea temporal desde la primera señal hasta el cierre operativo.
   * Identificar vector de entrada, sistemas afectados, cuentas afectadas, datos afectados e IOCs.
   * Indicar qué técnicas MITRE ATT&CK se observaron o se consideraron probables.
2. **Qué se suponía que debía ocurrir.**
   * Comparar la respuesta real con `during.md`, el playbook aplicado y las políticas internas.
   * Señalar decisiones de escalado, contención, comunicación y recuperación.
   * Registrar qué controles de prevención, detección, contención y recuperación funcionaron.
3. **Qué impacto tuvo.**
   * Indicar servicios afectados y duración de la indisponibilidad.
   * Registrar impacto sobre clientes, proveedores, empleados y obligaciones contractuales.
   * Evaluar si afectó a datos personales y si se cumplieron requisitos RGPD/LOPDGDD.
   * Comparar RTO/RPO esperados con RTO/RPO reales (RTO: Objetivo de Tiempo de Recuperación, RPO: Objetivo de Punto de Recuperación)
4. **Cuáles fueron las causas raíz.**
   * Diferenciar causa técnica, causa organizativa y causa de proceso.
   * Relacionar la causa con riesgos del PDS, controles pendientes o controles insuficientes.
   * Identificar si el incidente deriva de phishing, identidad, cloud, proveedor, ransomware, web o fuga de datos.
5. **Se compartió correctamente la inteligencia del incidente.**
   * Revisar si se creó un evento en MISP cuando existían IOCs o TTPs útiles para terceros de confianza.
   * Confirmar que el TLP aplicado fue correcto.
   * Confirmar que no se compartieron datos personales, credenciales, secretos, contratos ni evidencias forenses sensibles.
   * Registrar identificador del evento MISP, destinatarios/comunidades, fecha de publicación y responsable que autorizó el intercambio.
6. **Cómo se debe mejorar.**
   * Definir acciones correctivas con propietario, prioridad, fecha límite y evidencia esperada.
   * Clasificar cada acción como prevención, identificación, detección, contención, erradicación, recuperación o cooperación con terceros.
   * Decidir qué debe detenerse, empezar o mantenerse.

## Métricas posteriores al incidente

El AAR debe registrar, siempre que sea posible, las siguientes métricas:

| Métrica | Descripción | Uso |
|---|---|---|
| MTTD | Tiempo hasta detectar el incidente. | Medir eficacia de monitorización, alertas, usuarios y proveedores. |
| MTTA | Tiempo hasta reconocer la alerta y activar respuesta. | Medir rapidez de escalado y disponibilidad del equipo. |
| MTTC | Tiempo hasta contener el incidente. | Medir eficacia de aislamiento, bloqueo, revocación y segmentación. |
| MTTR | Tiempo hasta recuperar o resolver el incidente. | Medir capacidad de recuperación y continuidad de negocio. |
| RTO real | Tiempo real de recuperación frente al objetivo esperado. | Evaluar si la continuidad del negocio fue suficiente. |
| RPO real | Pérdida real de datos frente al punto de recuperación esperado. | Evaluar eficacia de copias de seguridad y sincronización. |
| Alcance | Sistemas, cuentas, buzones, endpoints, servidores, datos o proveedores afectados. | Dimensionar impacto y necesidades de remediación. |
| Severidad | Severidad inicial, máxima y final. | Evaluar si el escalado fue adecuado. |
| Datos personales | Categorías de datos, número estimado de personas afectadas y riesgo. | Sustentar decisiones RGPD/LOPDGDD y comunicación. |
| Comunicación | Mensajes emitidos, destinatarios, tiempos y aprobaciones. | Comprobar coordinación interna, externa y regulatoria. |
| MISP | Evento creado, TLP, destinatarios e indicadores compartidos. | Medir cooperación con terceros y control de inteligencia. |
| Eficacia del playbook | Pasos útiles, pasos omitidos y pasos que deben cambiarse. | Mejorar playbooks y entrenamiento. |

## Evaluar resiliencia

El AAR debe comprobar si la respuesta permitió mantener o recuperar los servicios esenciales de forma segura.

| Capacidad | Preguntas de revisión |
|---|---|
| Identificación | ¿Detectamos a tiempo? ¿Faltaron logs, alertas, inventario o visibilidad de proveedor? |
| Detección | ¿Los IOCs y TTPs se convirtieron en reglas SIEM/EDR/correo/cloud? |
| Prevención | ¿Qué control habría evitado o reducido el incidente? |
| Contención | ¿La propagación, exfiltración o exposición se cortó a tiempo? |
| Erradicación | ¿Se eliminó la causa raíz o solo se mitigaron síntomas? |
| Recuperación | ¿Los servicios críticos volvieron con datos íntegros, credenciales rotadas y monitorización? |
| Cooperación | ¿Legal, Dirección, proveedores, INCIBE-CERT, SOC/CERT o comunidades MISP participaron cuando procedía? |

## Acciones correctivas

Cada acción correctiva debe registrarse en el sistema de seguimiento acordado y enlazarse desde el AAR. Ningún incidente S1/S2 debe cerrarse sin acciones correctivas revisadas por el Incident Commander y Dirección.

| Campo | Contenido mínimo |
|---|---|
| Acción | Cambio concreto que debe ejecutarse. |
| Propietario | Persona o equipo responsable. |
| Prioridad | Alta, media o baja según severidad, riesgo residual y exposición. |
| Fecha límite | Fecha comprometida de implantación o revisión. |
| Riesgo PDS | Riesgo o activo del Plan Director de Seguridad relacionado. |
| Fase reforzada | Prevención, identificación, detección, contención, erradicación, recuperación o cooperación. |
| Evidencia | Prueba esperada: captura, ticket, configuración, acta, informe, regla, backup validado, formación o contrato actualizado. |
| Estado | Abierta, en curso, bloqueada, validada o cerrada. |

Las acciones correctivas habituales para {{COMPANY_NAME}} deben considerar:

* Reglas de detección, alertas, IOCs y casos de uso para correo, EDR, firewall, VPN, servidores, CRM/ERP y servicios cloud.
* Endurecimiento de MFA, contraseñas, permisos, cuentas privilegiadas y revisiones de acceso.
* Segmentación, parcheado, reducción de exposición pública y bloqueo de servicios innecesarios.
* Validación de copias de seguridad 3-2-1, restauraciones de prueba y protección frente a borrado o cifrado.
* Formación específica para trabajadores si el incidente estuvo relacionado con phishing, credenciales, uso de datos o puesto de trabajo.
* Ajustes en comunicación interna, comunicación a clientes/proveedores y criterios de notificación a la AEPD.
* Actualización de eventos MISP o feeds internos si hubo inteligencia útil.

## Actualizar plan, playbooks y matrices

Después de cada incidente real o simulacro, el propietario del AAR debe proponer cambios documentales cuando proceda:

1. Actualizar `during.md` si cambian criterios de severidad, escalado, comunicación, evidencias o recuperación.
2. Actualizar el playbook usado si hubo pasos ambiguos, ausentes o poco realistas.
3. Actualizar `playbooks/diagramas-flujo-playbooks.md` si cambia el flujo operativo.
4. Actualizar `evidencias-mitre/matriz-trazabilidad-mitre-react.md` si se identifican nuevas técnicas ATT&CK o acciones RE&CT relevantes.
5. Actualizar las capas JSON de ATT&CK Navigator o RE&CT Navigator si se incorporan técnicas, tácticas o acciones nuevas.
6. Actualizar el PDS y políticas internas si el incidente revela un riesgo no contemplado, un activo mal priorizado o un control insuficiente.
7. Actualizar el glosario si aparecen términos técnicos relevantes para futuras revisiones.

## Validar la recuperación

Antes de cerrar el AAR, el Incident Commander debe confirmar que la organización opera con un nivel de riesgo aceptado:

1. Los servicios críticos recuperados han sido validados por propietarios de negocio.
2. Los accesos reabiertos usan credenciales rotadas, MFA y permisos mínimos cuando aplique.
3. Los sistemas recuperados están parcheados, monitorizados y sin IOCs conocidos.
4. Las copias de seguridad relevantes han sido verificadas o se ha creado una acción correctiva.
5. Los proveedores implicados han entregado evidencias suficientes de contención, erradicación o recuperación.
6. Las obligaciones de comunicación interna, externa, contractual o regulatoria han sido evaluadas por Legal/Cumplimiento.
7. Se mantiene monitorización reforzada durante el periodo definido en `during.md` o por el Incident Commander.
8. Los riesgos residuales han sido aceptados formalmente por Dirección cuando proceda.

## Comunicar resultados

El propietario del AAR, en coordinación con el Enlace interno y Comunicación, informará del estado y resultados según la audiencia:

* **Equipo de respuesta:** informe completo, línea temporal, decisiones, métricas, evidencias y acciones correctivas.
* **Dirección:** resumen ejecutivo con impacto, estado de recuperación, riesgos residuales, decisiones pendientes y necesidades de inversión.
* **Usuarios internos:** cambios operativos que afecten a su trabajo, formación requerida o medidas preventivas.
* **Clientes, proveedores o terceros:** únicamente mensajes aprobados por Dirección, Legal/Cumplimiento y Comunicación.
* **Reguladores o autoridades:** comunicaciones formales cuando proceda, con evidencias y plazos documentados.

## Estados del AAR

| Estado | Descripción |
|---|---|
| **Borrador** | La recopilación de evidencias, métricas y línea temporal sigue en curso. |
| **En revisión** | El AAR está preparado para la reunión y pendiente de validación por los asistentes. |
| **Revisado** | La reunión se ha celebrado y las conclusiones han sido acordadas. Si hay mensajes externos, Comunicación preparará las versiones aprobadas. |
| **Acciones en seguimiento** | El incidente está operativamente cerrado, pero existen acciones correctivas abiertas con responsables y fechas. |
| **Cerrado** | Las acciones obligatorias están cerradas o aceptadas formalmente como riesgo residual, la documentación está archivada y el plan/playbooks han sido actualizados si era necesario. |

El cierre del AAR debe conservarse junto al expediente del incidente para auditoría, mejora continua, evidencias de cumplimiento y preparación de futuras simulaciones.
