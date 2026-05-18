## Playbook: Ransomware

**Investigar, remediar (contener, erradicar) y comunicar en paralelo. La contención es fundamental en los incidentes de ransomware; priorízala en consecuencia.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Aplicación del plan general

Este playbook desarrolla el escenario técnico, pero deberá ejecutarse siempre bajo el modelo operativo de [`plan.md`](../plan.md). En particular:

1. El `Incident Commander` dirigirá la respuesta, designará adjunto y escriba cuando corresponda y autorizará las decisiones de escalado relevantes.
2. Se abrirán la llamada, el chat y el expediente del incidente conforme al plan general.
3. La documentación, la cronología, los IOC, las evidencias y la cadena de custodia se mantendrán en el expediente del incidente.
4. Las actualizaciones de estado seguirán la cadencia definida en el plan general, con referencia de dos horas mientras el incidente permanezca activo, salvo ajuste expreso del `Incident Commander`.
5. Ninguna comunicación externa o ampliación de la difusión interna fuera del equipo de respuesta se realizará sin autorización del `Incident Commander`.

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

* `Incident Commander`, para coordinar la respuesta y aprobar el escalado operativo y de comunicación;
* Adjunto del `Incident Commander` o escriba, para seguimiento de tiempos, tareas y cronología;
* Equipo TIC de sistemas y endpoints, para aislamiento, reconstrucción y restauración;
* Equipo TIC de red y correo, para bloqueos, segmentación y revisión de accesos remotos;
* Help desk, para recepción de avisos y soporte operativo a usuarios;
* Responsables de proceso o negocio, para priorizar recuperación de servicios;
* Dirección y apoyo legal o RGPD, cuando exista impacto alto, continuidad afectada o riesgo regulatorio.

### Documentación y evidencias

1. Crear o actualizar el expediente del incidente con el nombre definido en el plan general.
2. Registrar desde el inicio:
   * Resumen inicial del incidente;
   * Sistemas, cuentas y datos afectados;
   * Impacto funcional, legal y de continuidad;
   * Línea temporal de eventos;
   * Responsables asignados;
   * Decisiones de contención, erradicación, recuperación y continuidad.
3. Conservar notas de rescate, muestras, logs, alertas, capturas, binarios, hashes y datos de restauración con fecha, hora, origen y responsable de la recogida.
4. Aplicar cadena de custodia cuando las evidencias puedan ser relevantes para acciones legales, contractuales o periciales.

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
        * **crítica**, si alcanza carpetas compartidas, servidores, varias sedes, cuentas privilegiadas, copias de seguridad, servicios esenciales, datos personales o la continuidad del negocio.
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

#### Preguntas clave de investigación

* Qué activos siguen cifrándose o podrían empezar a cifrarse en las próximas horas si no se aíslan.
* Si además de cifrado hubo exfiltración, borrado, sabotaje o robo de credenciales previo.
* Qué copias de seguridad, snapshots o repositorios siguen siendo confiables y desde qué momento.
* Si el paciente cero probable accedió recientemente por correo, VPN, RDP, proveedor externo o dispositivo extraíble.
* Qué sistemas comparten credenciales, permisos, rutas de red o herramientas con los activos ya afectados.
* Qué servicios mínimos necesita el negocio para operar mientras se completa la restauración.

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
* Registrar en el expediente el origen de cada evidencia y la persona responsable de su recogida.
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
    1. Activar el comité de crisis interno cuando la severidad sea crítica.
2. Activar el plan de continuidad del negocio si la indisponibilidad afecta a operaciones esenciales.
3. Documentar cronología, sistemas afectados, decisiones de contención, restauración y evidencias.
4. Comunicarse con asesoría legal y consultoría RGPD si hay indicios de exfiltración o acceso a datos personales.
5. Informar a usuarios internos de las restricciones temporales: indisponibilidad de carpetas, aislamiento de equipos, cambios de contraseña y procedimientos alternativos.
6. Comunicar a clientes o proveedores si el incidente afecta a la prestación del servicio o a sus datos, siempre con autorización del `Incident Commander` y coordinación con Legal, RGPD y Comunicación.
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

### Cierre y AAR

1. El `Incident Commander` declarará el cierre operativo del incidente cuando la propagación esté detenida, los sistemas prioritarios restaurados y la vigilancia reforzada estabilizada.
2. Completar el expediente con cronología final, impacto, evidencias, decisiones sobre continuidad y resultado de las restauraciones.
3. Programar la revisión posterior a la acción (AAR) dentro del plazo definido en el plan general.
4. Registrar acciones de mejora sobre copias de seguridad, segmentación, accesos remotos, hardening y procedimientos de continuidad.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar los indicios y abrir el incidente. |
| 2 | Clasificar la severidad como alta o crítica. |
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
