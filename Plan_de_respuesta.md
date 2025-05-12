# Plan de respuesta

## 1. Preparación

### Roles y responsabilidades

* Comandante de incidentes: coordina y toma decisiones críticas. Este rol lidera la estrategia de respuesta, evaluando riesgos en tiempo real, priorizando acciones según impacto y asegurando que cada fase del plan se ejecute conforme a los objetivos de continuidad y resiliencia, manteniendo comunicación fluida con la alta dirección.
* Scribe: documenta pasos, tiempos y evidencias. Este rol gestiona la recopilación detallada de cada acción realizada durante el incidente, anotando marcas temporales precisas, resultados de análisis y las evidencias recolectadas. Su labor garantiza la integridad y disponibilidad del expediente técnico, facilitando posteriores auditorías y análisis forenses.

* Enlace de negocio: comunica impacto a las áreas afectadas. Actuando como nexo entre el equipo técnico y las unidades de negocio, este rol traduce la terminología técnica en métricas operativas y estratégicas. Informa sobre la disponibilidad de servicios, posibles desviaciones en los SLAs, y coordina recursos para mitigar el impacto en procesos críticos.

* Enlace externo: contacto con forenses, legales y prensa. Responsable de la interacción con proveedores externos de servicios forenses, equipos legales y departamentos de comunicación, este vínculo asegura el cumplimiento normativo, la correcta elaboración de comunicados y la transparencia ante reguladores y stakeholders. Gestiona acuerdos de confidencialidad y vela por la reputación corporativa durante toda la respuesta.

* Herramientas y recursos:

  * Inventario de activos clasificado por criticidad y tipo de dato:
    Contar con un inventario detallado permite identificar rápidamente qué sistemas y datos requieren atención prioritaria en caso de incidente. Cada activo debe estar etiquetado con su nivel de criticidad, tipo de información que maneja y responsable asignado, así como fecha de última revisión, para que el equipo de respuesta sepa dónde enfocar sus esfuerzos.
  * Repositorio cifrado para evidencias (logs, capturas de red, volcados):
    Disponer de un almacenamiento centralizado, cifrado en reposo con AES-256 y cifrado en tránsito con TLS, garantiza la integridad y confidencialidad de las evidencias forenses. El repositorio debe contar con control de versiones, acceso basado en roles y alertas ante descargas inusuales, asegurando que nadie manipule o extraiga datos sin autorización.
  * Plantillas de informes y playbooks locales (phishing, ransomware, defacement, supply-chain, identity compromise):
    Las plantillas estandarizadas facilitan la elaboración rápida de informes ejecutivos y técnicos, cubriendo contexto, hallazgos y recomendaciones. Los playbooks por tipo de incidente ofrecen checklists paso a paso con responsables asignados, minimizando la improvisación y acelerando la respuesta al contar con procedimientos validados y actualizados regularmente.
  * Servicio SIEM y EDR configurado con alertas tempranas y dashboards de estado:
    Una correcta configuración del SIEM y los agentes EDR permite identificar patrones de ataque y comportamientos anómalos en tiempo real. Los dashboards proporcionan visibilidad continua del estado de endpoints, volumen de alertas críticas y tendencias de seguridad, y la integración con el sistema de ticketing automatiza la creación de casos para agilizar la gestión del incidente.
* procesos y ejercicios

  * Calendario trimestral de tabletop exercises con escenarios definidos: estas sesiones simulan incidentes de ransomware, phishing dirigido y ataques a la cadena de suministro, poniendo a prueba roles, coordinación y comunicación, midiendo tiempos de respuesta y documentando brechas para perfeccionar procedimientos
  * Simulacros de consumo y distribución de IOCs (STIX/TAXII): generan y propagan indicadores de compromiso para evaluar capacidad de ingestión, detección y respuesta, midiendo precisión y rapidez en entornos simulados y reales, alimentando sistemas de alarma automática.
  * Revisión anual de políticas de escalado y umbrales de impacto: durante este proceso se analizan incidentes previos, ajustando niveles de severidad, rutas de escalado y recursos disponibles, actualizando contactos externos y optimizando tiempos de respuesta, garantizando alineación estratégica y eficacia operativa
  * Formación continua en nuevas amenazas y herramientas de respuesta: organiza sesiones prácticas mensuales, webinars especializados y ejercicios de simulación realistas para evaluar competencias y mejorar habilidades críticas de forma continua

## 2. Identificación

* Recepción de alerta

  * Monitorización automática (SIEM, IPS, EDR) y reportes de usuarios
    Correlación avanzada de eventos, alertas basadas en anomalías de comportamiento, integración de inteligencia de amenazas y notificaciones proactivas en tiempo real.
  * Canal de notificación cifrado para alertas críticas
    asegura confidencialidad y autenticidad de mensajes, disponible 24/7, redundante y auditado para reportes inmediatos a stakeholders.
* Análisis preliminar

  * evaluar alcance: sistemas afectados, datos en riesgo, servicios interrumpidos
    Este análisis incluye identificación de puntos de compromiso, inventario de sistemas críticos, clasificación de datos sensibles, evaluación de vectores de ataque potenciales y estimación de impacto operativo y reputacional inicial.
  * asignar código de incidente y abrir expediente centralizado
    Este proceso garantiza trazabilidad precisa, facilita la colaboración entre equipos, establece un registro único accesible, define prioridades de acción y asegura seguimiento coordinado durante todo el ciclo de respuesta sistemático.
* Criterios para declararlo incidente

  * Evidencia de acceso no autorizado o movimiento lateral: detección de conexiones sospechosas y movimientos laterales, identificando cuentas comprometidas, patrones de escalada de privilegios y rutas de propagación.
  * Cifrado masivo de archivos o eliminación de backups: evidencia de cifrado automatizado o borrado selectivo, alteración de backups críticos, detección de ransomware con renombrado masivo y bloqueo de recuperación.
  * Defacement de activos públicos o manipulación de página web: modificación de contenidos web, sustitución de portales por mensajes maliciosos, indicios de exploit en CMS y análisis de archivos comprometidos.
  * Compromiso de la cadena de suministro que pueda afectar integridad de software: infiltración de librerías o actualizaciones maliciosas, firmas comprometidas, análisis de dependencias e impacto en sistemas downstream.

## 3. Contención

* Contención rápida

  * Aislar segmentos de red afectados mediante ACLs o VLANs temporales: implementar reglas temporales para aislar tráfico malicioso, reduciendo propagación y permitiendo análisis controlado, restaurando conectividad segura solo tras validación forense completa.
  * Bloquear cuentas de usuario comprometidas y forzar cambio de claves: identificar rápidamente credenciales vulneradas, desactivar accesos comprometidos, notificar a propietarios de cuentas y requerir autenticación multifactor reforzada antes de reactivar permisos.
  * Retirar o desconectar servidores críticos para análisis forense sin exponer al atacante: desconectar sistemas del entorno de producción, preservando evidencia intacta, configurar red aislada para examen forense, minimizando riesgo de contaminación cruzada y filtración de datos sensibles.
* Contención prolongada

  * Distribuir IOCs (IPs, dominios, hashes) a todos los sensores y firewalls: para bloqueo proactivo, enriquecimiento de alertas, análisis continuo, respuesta automatizada coordinada y generación de informes detallados.
  * Crear reglas SIEM para detectar comandos de control, exfiltración y movimientos inusuales: optimizando correlación de eventos, priorización de alertas críticas, enriquecimiento de indicadores globales, y facilitando informes de tendencia.
  * Activar honeypots o trampas para captar actividad maliciosa y estudiar TTPs: generando inteligencia valiosa, recreando tácticas adversarias, probando detecciones, validando defensas y alimentando capacidades avanzadas de threat hunting

## 4. Erradicación

* Análisis forense

  * Volcado de memoria viva y adquisición de imágenes de disco con herramienta forense: captura estado del sistema en tiempo real, preservando procesos volátiles, registros RAM y contexto de ataque para análisis profundo.
  * Registro de cadena de custodia para todas las evidencias: documenta cada transferencia, acceso y almacenamiento, garantizando integridad legal, rastreabilidad completa y cumplimiento con normas forenses internacionales.
  * Reconstrucción de la cronología de compromiso y root cause analysis: detalla eventos secuenciales, identifica vulnerabilidades explotadas, revela técnicas adversarias y propone mejoras en controles preventivos basados en hallazgos.

* Limpieza y remediación

  * Restaurar sistemas desde “gold images” o backups validados: restaurando entornos confiables, validando integridad de snapshots, comprobando compatibilidad de versiones y verificando configuraciones críticas antes de puesta en producción.
  * Eliminar archivos, procesos y cuentas creadas por el atacante: garantizando eliminación completa de artefactos maliciosos, validando firmas digitales, revisando permisos residuales y cerrando potenciales vectores de reinfección.
  * Aplicar parches críticos, endurecer configuraciones (deshabilitar servicios innecesarios, ajustar permisos): instalando parches de seguridad prioritarios, revisando dependencias, comprobando cambios de configuración y documentando versiones para auditoría futura.
  * Actualizar firmas de antivirus, EDR y reglas de IPS: sincronizando repositorios de amenazas, actualizando definiciones, probando efectividad en entornos de prueba y generando reportes de cobertura de detección.

## 5. Recuperación

* Restauración de servicios

  * Priorizar aplicaciones críticas (SLA de 8 h), secundarias (24 h) y resto (72 h), garantizando recuperación inmediata, coordinación interdepartamental, evaluación de dependencias externas y pruebas de estrés antes de reactivar servicios.
  * Verificar integridad de datos restaurados (checksums, reconciliaciones) y validar transacciones, monitorizar accesos concurrentes, revisar logs de restablecimiento y documentar cualquier discrepancia para auditoría continua.
* Validación y monitoreo

  * Reinstaurar accesos de forma gradual y bajo supervisión: garantizando validación estricta de permisos, auditoría continua y control de acceso.
  * Monitorizar logs y métricas de desempeño durante “quarantine watch”: identificando tendencias anómalas, generando alertas tempranas y mejorando continuamente diagnósticos proactivos.
  * Documentar cualquier anomalía post-restauración: incluyendo impacto, responsables, acciones críticas correctivas y recomendaciones para futuros incidentes.

## 6. Toma de decisiones y escalado

* Árbol de decisión

  1. ¿Existe riesgo inmediato a vida o continuidad crítica?: Contención agresiva y notificación inmediata
  2. ¿Impacto económico/regulatorio supera umbrales definidos?: Escalar a comité ejecutivo y activar plan BC-IM
  3. ¿Necesidad de apoyo externo (forense, legal, PR, aseguradoras)?: Contratación rápida de vendors según playbook

* Criterios de escalado

  * Número de usuarios afectados supera X, facilitando respuesta rápida coordinada interna
  * Volumen de datos sensibles exfiltrados y registros, provocando alerta regulatorias y legales
  * Exposición mediática significativa, generando impacto reputacional y financiero

## 7. Ciberresiliencia

After-action review:

* Reunión con todas las áreas para documentar lecciones aprendidas y establecer planes de acción concretos, asignando responsables, plazos de ejecución y métricas de seguimiento para cada recomendación.
* Actualización de playbooks específicos con nuevos escenarios y TTPs detectados, incorporando resultados de ejercicios, datos de inteligencia de amenazas y validando procedimientos mejorados mediante simulacros prácticos.

Mejora continua:

* Incorporar detecciones basadas en comportamiento (anomalías de login, egress de datos): utilizando machine learning para identificar patrones atípicos de acceso, alertas automáticas de exfiltración y respuesta proactiva basada en inteligencia.
* Ejercicios de red teaming cada seis meses para validar controles: simulaciones realistas que prueban defensas, identifican brechas y contribuyen a mejorar playbooks y tiempos de respuesta coordinados.
* Revisión periódica de políticas, herramientas y umbrales de escalado: evaluando eficacia, adaptando umbrales a nuevas amenazas, alineando con regulaciones y garantizando recursos adecuados para cada nivel de incidente.
