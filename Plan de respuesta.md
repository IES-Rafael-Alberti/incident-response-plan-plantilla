# Plan de respuesta a incidentes – Grupo 1 S.L.

<br>

**Fecha de publicación:** 12/05/2025

**Revisión 1:** 12/05/2025

**Autor:** Grupo 1

**Contacto de revisión:** grupo1@grupo1sl.com

Este Plan de respuesta a incidentes ha sido desarrollado para Grupo 1 S.L., una empresa tecnológica con operaciones distribuidas en dos sedes físicas y una infraestructura compuesta por múltiples departamentos críticos para la continuidad del negocio.

## Contexto del plan

**Grupo 1 S.L.** cuenta con diversos activos físicos, digitales y humanos distribuidos entre los departamentos de Comercial, Compras, Marketing, RRHH, Legal, I+D y Logística. Esta estructura heterogénea requiere una planificación coordinada para detectar, responder y recuperarse eficazmente ante cualquier incidente de ciberseguridad que afecte la confidencialidad, integridad o disponibilidad de los activos críticos de la empresa.

Este plan se fundamenta en:

- La identificación y valoración de activos.

- El análisis de riesgos y amenazas asociadas a cada unidad.

- La definición de roles y responsabilidades claras.

- El uso de marcos como MITRE ATT&CK y RE&CT para la identificación de TTPs.

- El desarrollo de playbooks específicos para los escenarios de mayor impacto.

### Identificación de activos

| **ID**      | **Activo**                                               | **Descripción**                                               | **Departamento**           | **Tipo**                  | **Crítico** |
| ------- | ---------------------------------------------------- | --------------------------------------------------------- | ---------------------- | --------------------- | ------- |
| G1_001 | Servidor de Aplicaciones                             | Infraestructura principal para la ejecución de soluciones | I+D / TI               | Servidor              | Sí      |
| G1_002 | Base de Datos de Clientes                            | Contiene datos personales y de contacto sensibles         | Comercial / Soporte    | Base de Datos         | Sí      |
| G1_003 | Servidor de Correo Electrónico                       | Servicio de comunicación oficial interno y externo        | Todos                  | Correo / Cloud        | Sí      |
| G1_004 | Página Web Corporativa                               | Portal público con servicios online e información         | Marketing / TI         | Aplicación Web        | Sí      |
| G1_005 | Estaciones de Trabajo (portátiles)                   | Equipos de empleados en todas las áreas                   | Todos                  | Endpoint              | Sí      |
| G1_006 | Dispositivos Móviles Empresariales                   | Teléfonos y tablets con acceso a correo y datos           | RRHH / I+D / Comercial | Dispositivos móviles  | No      |
| G1_007 | Impresoras en Red y Escáneres                        | Equipos multifunción compartidos                          | Logística / RRHH       | Dispositivos físicos  | No      |
| G1_008 | Infraestructura de Red (switches, routers, firewall) | Backbone de conectividad en ambas sedes                   | TI                     | Red / Comunicaciones  | Sí      |
| G1_009 | Sistema de Gestión Documental Jurídica               | Plataforma con contratos, acuerdos y documentación legal  | Departamento Legal     | Aplicación Interna    | Sí      |
| G1_010 | Plataforma de Recursos Humanos                       | Gestión de empleados, nóminas, evaluaciones               | RRHH                   | SaaS / Aplicación Web | Sí      |


<br>

### Nivel de madurez

Se evaluó la postura actual de ciberseguridad de Grupo 1 S.L., con los siguientes resultados:

| **Área de Seguridad**                       | **Madurez Actual** | **Madurez Objetivo** | **Comentario**                                                                |
| --------------------------------------- | -------------- | ---------------- | ------------------------------------------------------------------------- |
| Gestión de Accesos y MFA                | 65%            | 90%              | MFA desplegado parcialmente. Pendiente integración con aplicaciones SaaS. |
| Protección de Base de Datos             | 70%            | 95%              | Cifrado activo y controles RBAC aplicados. Falta detección avanzada.      |
| Seguridad del Entorno Web               | 60%            | 90%              | WAF instalado, falta validación automatizada y pruebas DAST.              |
| Seguridad del Endpoint                  | 75%            | 90%              | Antivirus actualizado. EDR pendiente en algunos equipos móviles.          |
| Concienciación y Formación del Personal | 50%            | 85%              | Formación básica anual. No hay simulacros ni seguimiento individual.      |
| Continuidad de Negocio                  | 70%            | 90%              | Backups periódicos. Falta documentación del BCP actualizado.              |


![Modelo de madurez](./img/Modelo%20de%20madurez.png)

Para aumentar el nivel de madurez en **Grupo 1 S.L.**, se proponen las siguientes tareas:


1. **Análisis continuo de riesgos y amenazas específicas**

    - **Responsable:** Departamento de seguridad / Comité de riesgos

    - **Tarea:** Monitorizar y revaluar periódicamente los riesgos asociados a los activos críticos de la empresa, considerando nuevas amenazas tecnológicas y cambios en el entorno de negocio. Utilizar fuentes de inteligencia y herramientas de análisis (como MITRE ATT&CK y RE&CT) para anticipar TTPs relevantes para el sector.

    - **Objetivo:** Mantener actualizado el mapa de riesgos y priorizar acciones preventivas.

2. **Definición y actualización de políticas de seguridad**

    - **Responsable**: Dirección de seguridad / Comité de seguridad

    - **Tarea:** Revisar y actualizar anualmente las políticas de seguridad de la información, incorporando requisitos legales, mejores prácticas y lecciones aprendidas de incidentes. Incluir la gestión de dispositivos móviles, teletrabajo y protección de datos personales.

    - **Objetivo:** Garantizar que las políticas cubran todo el ciclo de vida de la información y sean conocidas por todo el personal.

3. **Elaboración de procedimientos y normativas específicas**

    - **Responsable:** Departamento de seguridad / Jefes de área
    - **Tarea:** Desarrollar procedimientos claros para la gestión de incidentes, acceso a sistemas, uso de dispositivos y protección de datos. Incluir protocolos de respuesta rápida y guías de actuación ante incidentes críticos.

    - **Objetivo:** Facilitar la actuación coordinada y eficaz ante cualquier incidente.

4. **Gestión de accesos y privilegios**

    - **Responsable:** Departamento de TI / Seguridad

    - **Tarea:** Auditar y limitar los accesos a sistemas y datos críticos, asegurando que cada empleado solo tenga los permisos necesarios para su función. Implementar revisiones periódicas y MFA en todos los accesos sensibles.

    - **Objetivo:** Reducir el riesgo de accesos indebidos y fugas de información.

5. **Formación y concienciación en seguridad**

    - **Responsable:** RRHH / Seguridad

    - **Tarea:** Impartir programas de formación continua en ciberseguridad, especialmente sobre phishing, protección de dispositivos y gestión segura de la información. Realizar simulacros de incidentes y campañas de concienciación.

    - **Objetivo:** Fomentar una cultura de seguridad y reducir el factor humano como vector de ataque.

6. **Seguridad física y lógica de infraestructuras**

    - **Responsable:** Departamento de TI / Seguridad

    - **Tarea:** Reforzar los controles de acceso físico a salas técnicas y servidores, instalar sistemas de videovigilancia y alarmas. Implementar segmentación de red y firewalls para proteger los sistemas críticos.

    - **Objetivo:** Proteger los activos frente a amenazas tanto físicas como lógicas.

7. **Gobernanza y gestión de la seguridad**

    - **Responsable:** Comité de seguridad

    - **Tarea:** Definir roles y responsabilidades claras en materia de ciberseguridad, establecer canales de comunicación y escalado, y asegurar la supervisión de todas las acciones relacionadas con la protección de la información.

    - **Objetivo:** Garantizar la coordinación y el liderazgo en la gestión de la seguridad.

8. **Gestión Proactiva de Incidentes**

    - **Responsable:** CSIRT interno / Departamento de Seguridad

    - **Tarea:** Implementar un equipo de respuesta a incidentes, con protocolos claros para la detección, análisis, contención, erradicación y recuperación ante incidentes. Realizar ejercicios de simulación y revisión post-incidente.

    - **Objetivo:** Minimizar el impacto de los incidentes y mejorar la capacidad de recuperación.

9. **Auditorías internas y externas**

    - **Responsable:** Seguridad / Auditoría / Terceros

    - **Tarea:** Realizar auditorías periódicas de los sistemas, políticas y procedimientos de seguridad, tanto internas como con proveedores externos. Corregir las desviaciones detectadas.

    - **Objetivo:** Validar la eficacia de las medidas y detectar áreas de mejora.

10. **Mejora continua del programa de seguridad**

    - **Responsable:** Departamento de seguridad

    - **Tarea:** Revisar y actualizar regularmente el plan de seguridad, los controles y los procedimientos en función de las nuevas amenazas, tecnologías y resultados de auditorías.

    - **Objetivo:** Mantener la seguridad alineada con la evolución del entorno y las mejores prácticas.

11. **Monitorización y alerta temprana**

    - **Responsable:** SOC / Departamento de Seguridad

    - **Tarea:** Implantar sistemas de monitorización (SIEM/SOAR) para la detección temprana de incidentes, correlación de eventos y generación de alertas automáticas.

    - **Objetivo:** Detectar y responder rápidamente a amenazas en tiempo real.

12. **Gestión de backups y pruebas de recuperación**

    - **Responsable:** Departamento de TI

    - **Tarea:** Realizar copias de seguridad periódicas de los datos críticos, almacenar copias fuera de línea y ejecutar pruebas de restauración regulares para asegurar la disponibilidad en caso de incidente.

    - **Objetivo:** Garantizar la continuidad operativa y la recuperación ante desastres.

<br>

### Posibles amenazas

El análisis de amenazas, utilizado para calcular riesgos, consideró las clasificaciones de INCIBE.


![Posibles amenazas](./img/Posibles%20amenazas.png)

---

### Cálculo de riesgo

Considerando el inventario de activos y las posibles amenazas, se presenta la siguiente tabla para el cálculo de riesgos en Grupo 1 S.L.:

![Cálculo de riesgo](./img/Calculo%20del%20riesgo.png)

---

### Taxonomía de incidentes

Se han identificado los siguientes incidentes prioritarios que pueden afectar a Grupo 1 S.L., considerando su sector, activos críticos y amenazas detectadas en el análisis previo:

1. **Exfiltración de datos de clientes o credenciales**

    - **Descripción:** Acceso no autorizado y fuga de información personal o credenciales almacenadas en las bases de datos de clientes.
    - **Funcionamiento:** Puede originarse por ataques externos (explotación de vulnerabilidades, phishing, malware) o internos (empleados desleales, abuso de privilegios).
    - **Identificación:** Alertas de DLP, logs de acceso inusual a bases de datos, tráfico anómalo, detección de exportaciones masivas de datos.
    - **Protección:** Cifrado en reposo, RBAC, MFA, monitorización continua, formación de empleados y políticas de mínimo privilegio.
    - **Caso análogo:** Brecha de datos en una empresa tecnológica que expone información personal de clientes.

2. **Compromiso de la web corporativa y servicios online**

    - **Descripción:** Explotación de vulnerabilidades en la página web o APIs, suplantación de identidad, acceso indebido o defacement.
    - **Funcionamiento:** Ataques de inyección (SQLi, XSS), fuerza bruta, explotación de componentes desactualizados, robo de sesiones.
    - **Identificación:** Alertas de WAF, logs de actividad sospechosa, reportes de clientes, detección de cambios no autorizados en el sitio.
    - **Protección:** WAF, CSP, validación de entradas, parches de seguridad, autenticación robusta, monitorización web.
    - **Caso análogo:** Defacement de un portal web corporativo, robo de cuentas de usuarios a través de vulnerabilidades.

3. **Ataques de denegación de servicio (DoS/DDoS) a infraestructura TIC**

    - **Descripción:** Intentos de saturar o dejar inoperativos los servidores, servicios web o infraestructura de red mediante tráfico malicioso.
    - **Funcionamiento:** Tráfico masivo desde botnets, explotación de recursos limitados, ataques coordinados a puntos críticos de la red.
    - **Identificación:** Alertas en balanceadores de carga, monitorización de tráfico, caída de servicios, logs de eventos de red.
    - **Protección:** Balanceo de carga, SAI redundantes, firewall perimetral, mitigación anti-DDoS, segmentación de red.
    - **Caso análogo:** Caída de servicios web de una empresa tras ataque DDoS coordinado.

4. **Robo o pérdida de dispositivos con datos sensibles (portátiles, móviles, tablets)**

    - **Descripción:** Pérdida o robo de dispositivos pertenecientes a empleados de RRHH, I+D, Legal o Comercial, con acceso a información confidencial.
    - **Funcionamiento:** Olvido, robo físico, acceso no autorizado por terceros.
    - **Identificación:** Notificación del usuario, alertas de MDM, intentos de acceso remoto no autorizados, rastreo de dispositivos.
    - **Protección:** Cifrado de disco, gestión de dispositivos móviles (MDM), borrado remoto, formación en seguridad, MFA.
    - **Caso análogo:** Robo de portátil de un empleado con fuga de información de clientes y empleados.

5. **Uso indebido o compartido de credenciales y baja trazabilidad**

    - **Descripción:** Empleados que comparten cuentas, contraseñas o accesos, dificultando la trazabilidad y aumentando el riesgo de accesos indebidos.
    - **Funcionamiento:** Uso de cuentas genéricas, falta de autenticación robusta, ausencia de registro de accesos.
    - **Identificación:** Logs de acceso anómalo, detección de múltiples accesos simultáneos, alertas de SIEM.
    - **Protección:** Cuentas individuales, autenticación multifactor, políticas de contraseñas, monitorización de accesos.
    - **Caso análogo:** Acceso no autorizado a sistemas críticos por uso compartido de credenciales.

6. **Espionaje industrial y fuga de propiedad intelectual en I+D**

    - **Descripción:** Acceso no autorizado o robo de información confidencial relacionada con proyectos de investigación y desarrollo.
    - **Funcionamiento:** Exfiltración de datos por insiders o atacantes externos, malware especializado, ingeniería social.
    - **Identificación:** Alertas de DLP, logs de acceso a documentos sensibles, tráfico de red inusual, detección de dispositivos extraños.
    - **Protección:** Segmentación de red, cifrado reforzado, control de acceso, formación en seguridad, monitorización continua.
    - **Caso análogo:** Robo de planos o patentes por parte de un competidor tras acceso indebido a la red de I+D.


7. **Manipulación física o sabotaje de hardware crítico**

    - **Descripción:** Acceso físico no autorizado o manipulación de hardware en departamentos como Compras, Logística o Infraestructura TIC.
    - **Funcionamiento:** Sabotaje, robo de componentes, alteración de configuraciones físicas.
    - **Identificación:** Alarmas de acceso físico, logs de entrada/salida, inspecciones periódicas.
    - **Protección:** Control de accesos físicos, videovigilancia, registro de visitas, políticas de seguridad física.
    - **Caso análogo:** Sabotaje de servidores por acceso no controlado a la sala técnica.

<br>

---

## Evaluar

**Mantén la calma y la profesionalidad**. La sensibilidad de los datos y servicios gestionados por Grupo 1 S.L. exige una respuesta metódica y objetiva.

**Reúne toda la información relevante:** alertas del SIEM, registros de dispositivos, reportes de usuarios, actividad inusual en servidores, bases de datos o aplicaciones web, observaciones y sospechas.

**Considera las categorías de impacto** (funcional e informacional) y determina si existe un posible incidente.  
Si hay dudas, especialmente si afecta datos de clientes, propiedad intelectual o la reputación de Grupo 1 S.L., inicia la respuesta. El responsable de gestión de incidentes y el equipo pueden ajustarse conforme avance la investigación.

### Evaluar el impacto funcional

- ¿Cuál es el impacto directo o probable en la operativa de **Grupo 1 S.L.** o de sus clientes?  
  Ejemplo: ¿El departamento comercial no puede acceder a la base de datos de clientes? ¿La web corporativa está caída? ¿El área de RRHH no puede procesar nóminas?
- ¿Se ha degradado o detenido alguna función crítica, servicio a clientes o proceso interno?  
  Si la respuesta es sí, ¡es incidente!
- Si no hay impacto funcional, evalúa el impacto sobre la información.

### Evaluar el impacto de la información

- ¿Cuál es el impacto directo o probable sobre los datos/información, en particular datos de clientes, proyectos de **I+D**, documentos legales o información interna?  
- ¿Se ha accedido, filtrado, modificado o borrado información sensible de clientes o de la empresa?  
  Si la respuesta es sí, **¡es incidente!**
- Si no hay impacto informacional, gestiona la situación por canales internos habituales (por ejemplo, ticket de soporte técnico).

**Cada miembro del equipo está facultado para iniciar este proceso.** Si ves algo, repórtalo.

<br>


## Iniciar la respuesta

### Nombrar el incidente

Crea una frase simple de dos palabras como nombre en clave para identificar el incidente (por ejemplo, “Operación Grupo1 Azul”). Este nombre se utilizará para el archivo, el canal de chat y la documentación del incidente.

---

### Reunir el equipo de respuesta

- Llama al Incident Commander (IC) de guardia de Grupo 1 S.L.
- No discutas el incidente fuera del equipo de respuesta a menos que el IC lo autorice. La confidencialidad es fundamental.
- Inicia y/o únete al canal de chat de respuesta dedicado en la plataforma interna de Grupo 1 S.L. (ejemplo: `teams.grupo1.com/incidentes` o `ir.grupo1.com/chat`).
- Inicia y/o únete a la llamada de respuesta en la sala virtual designada (ejemplo: meet.grupo1.com/sala-incidentes).
- Prioriza el uso de llamada de voz, chat seguro e intercambio seguro de archivos (por ejemplo, OneDrive seguro con acceso restringido).  
  No uses el correo principal si existe sospecha de compromiso. Si es necesario, utiliza la cuenta de emergencia (ejemplo: ir-emergencia@grupo1.com) y cifra los mensajes si hay participantes externos.
- No uses SMS para detalles del incidente, salvo para redirigir a un canal más seguro.
- Invita al personal de guardia a la llamada y chat de respuesta:
  - Equipo de Seguridad Interna / SOC de Grupo 1 S.L.
  - SME de sistemas afectados (servidores, web, bases de datos, endpoints).
  - Dirección, CISO y Asesoría Legal lo antes posible, priorizando responsables operativos.
- **OPCIONAL:** Establece una sala de crisis física o virtual para incidentes complejos.

---

#### Referencia: Estructura del equipo de respuesta

**Equipo de Mando**
- Incident Commander (IC)
- IC Adjunto (Subjefe)
- Escriba

**Equipo de Enlace**
- Enlace Interno (partes interesadas de Grupo 1 S.L.)
- Enlace Externo (clientes afectados, reguladores, proveedores si aplica)

**Equipo de Operaciones**
- SME para Infraestructura TIC, Web, Bases de Datos, Seguridad de Endpoints, etc.
- SME de áreas de negocio afectadas (ejemplo: Jefe de RRHH, Responsable de I+D)
- SME para Funciones Ejecutivas (Legal, Dirección, Comunicación)

---

#### Referencia: Información de contacto del equipo de respuesta

| Rol del equipo de respuesta      | Información de contacto                       |
|----------------------------------|-----------------------------------------------|
| Localizador del IC               | +34 600 123 456 (Línea de Emergencia)         |
| Portal del IC                    | ir.grupo1.com/ic                              |
| Lista del IC                     | ir.grupo1.com/roster/ic                       |
| Lista del equipo de seguridad    | ir.grupo1.com/roster/seguridad                |
| Lista del equipo SME             | ir.grupo1.com/roster/sme                      |
| Lista de ejecutivos              | ir.grupo1.com/roster/ejecutivos               |

---

### Establecer el ritmo de batalla

#### Realizar la primera llamada de respuesta

- Realiza la llamada inicial usando la estructura de llamada de respuesta inicial.
- Sigue las instrucciones del IC. Si el IC de guardia no se une en 15 minutos y eres IC capacitado, toma el mando.
- Cumple las instrucciones de tu función.
- Mantén la llamada y el chat activos durante el incidente para comunicación basada en eventos.
- Programa actualizaciones cada 2-4 horas (o según gravedad) sobre la comunicación activa. Para Grupo 1 S.L., la rapidez es clave.

##### Referencia: Estructura de la llamada de respuesta inicial

- IC: “Mi nombre es [NOMBRE], soy el IC para **Grupo 1 S.L.** He designado a [NOMBRE] como adjunto y a [NOMBRE] como escriba. ¿Quién está en la llamada y qué área representa?”
- Escriba: Toma asistencia, roles y áreas de responsabilidad.
- IC: Si falta personal clave, el adjunto contacta y moviliza a los ausentes.
- IC: Pregunta para comprender situación, síntomas, alcance (qué clientes/datos podrían estar afectados), vector, impacto y cronología al reportador y SMEs.
- SMEs: Responden breve y factual al IC.
- IC: Si es incidente:
  - Resumen del incidente.
  - El equipo de Investigación será liderado por [NOMBRE], Remediación por [NOMBRE] y Comunicación por [NOMBRE]. Coordinarán sus equipos y reportarán al IC.
  - ¿Qué medidas de investigación, remediación o comunicación se han tomado?
  - Esta llamada y canal de chat permanecerán activos. Actualizaciones de estado en tiempo real en el chat.
  - Líderes de equipo, procedan. Nos reuniremos en [UPDATE_TIME] para discutir el estado.
- IC: Si no es incidente, coordina seguimiento con el reportador/equipo.

##### Referencia: Etiqueta de la llamada

- Únete a la llamada y al chat dedicado.
- Minimiza el ruido de fondo. Silencia el micrófono si no hablas.
- Identifícate al entrar: nombre y rol en Grupo 1 S.L. (ejemplo: “Soy Ana, SME de Infraestructura”).
- Habla con claridad y precisión.
- Comunicaciones cortas y directas.
- Dirige preocupaciones al IC.
- Respeta los tiempos y la estructura del IC.
- Usa terminología clara. Evita acrónimos poco comunes.

---

#### Realizar la actualización de la respuesta

- Realiza actualizaciones programadas usando la estructura de llamada de actualización en el puente activo. La frecuencia puede ser mayor (cada 1-2 horas) si el incidente es grave o afecta datos de clientes.
- Ajusta la frecuencia según necesidad.
- Coordina actualizaciones separadas (ejecutivas, legales, clientes clave) según necesidad, minimizando la frecuencia para mantener el foco operativo.

##### Referencia: Estructura de la llamada de actualización de la respuesta

- IC: “Actualización del incidente [NOMBRE CLAVE]. Desde la última comunicación, el resumen es:”
  - Impacto actual en clientes/datos de Grupo 1 S.L.
  - Vector confirmado o hipótesis principal
  - Actualización del resumen general
  - Actualización de la línea de tiempo
- IC: Equipo de Investigación, actualicen.
  - Líder de Investigación: Actividades realizadas, hallazgos, o “sin cambios significativos”.
  - ¿Plan de investigación recomendado para las próximas X horas?
  - ¿Acciones de investigación que necesitan aprobación/asignación?
- IC: Equipo de Remediación, actualicen.
  - Líder de Remediación: Actividades (contención/erradicación) o “sin cambios”.
  - ¿Estrategia de remediación recomendada? ¿Objeciones?
  - ¿Acciones de remediación que necesitan aprobación/asignación?
- IC: Equipo de Comunicación, actualicen.
  - Líder de Comunicación: Comunicaciones realizadas/planificadas (internas/externas) o “sin comunicaciones nuevas”.
  - ¿Estrategia de comunicación recomendada? ¿Objeciones?
  - ¿Acciones de comunicación que necesitan aprobación/asignación?
- IC: La llamada y el chat siguen activos. ¿Preguntas o aportaciones?
- IC: Líderes de equipo, procedan. Próxima reunión en [UPDATE_TIME].

---

### Supervisar el alcance

- Supervisa el alcance de la respuesta. Si el incidente involucra múltiples sistemas, sedes o una brecha de datos mayor, el IC debe asegurar recursos suficientes.
- Si el incidente es complejo (por ejemplo, compromiso de servidores y web corporativa a la vez), considera crear sub-equipos más específicos.

#### Crear Sub-Equipos

- Para incidentes en Grupo 1 S.L., los sub-equipos predefinidos (Investigación, Remediación, Comunicación) son el estándar.
- El IC designará líderes.
- Si un incidente afecta simultáneamente infraestructura TIC, web y bases de datos, el IC puede crear sub-equipos técnicos específicos (ejemplo: “Sub-equipo Web”, “Sub-equipo Infraestructura”) bajo el líder de Remediación.

#### Incidente dividido

- Si un incidente resulta ser dos o más incidentes distintos (por ejemplo, ataque DDoS a la web y phishing a empleados no relacionados):
  - Establece un nuevo archivo de incidentes para el segundo.
  - Seguimiento y coordinación separados, con conocimiento mutuo si hay recursos compartidos.
  - Mantén un IC de alto nivel si los incidentes compiten por recursos críticos.

<br>

## **Investigar**

> _Investigar, remediar y comunicar deben realizarse en paralelo, con equipos separados si es posible. El Incident Commander (IC) coordina y supervisa. La confidencialidad de los datos de clientes y la reputación de Grupo 1 S.L. tienen máxima prioridad durante toda la investigación._

---

### **Crear el archivo del incidente**

- **Crea un nuevo archivo de incidente** en el sistema de gestión de Grupo 1 S.L. (por ejemplo: `ir-casos.grupo1.com` o una carpeta segura en SharePoint/OneDrive) usando el nombre en clave del incidente.
- **Almacena de forma segura** logs, pruebas, artefactos, capturas, etc.  
  _Asegura el almacenamiento digital con control de acceso estricto (solo personal autorizado IR)._
- **Intercambia archivos** únicamente por canales seguros (enlaces temporales y protegidos por contraseña).
- Si existen pruebas físicas (ej. discos duros), guárdalas en un lugar seguro bajo control de inventario.
- **Comparte la ubicación del archivo** en el canal de respuesta.
- **Documenta:**
    - Impacto funcional y de la información (_ver apartado Evaluar_).
    - Vector de ataque, si se conoce.
    - Resumen del incidente.
    - Línea de tiempo: actividad del atacante y respuesta de Grupo 1 S.L.
    - Pasos de investigación, remediación y comunicación.
    - Pruebas forenses (imágenes de disco/memoria, logs, PCAPs), asegurando la cadena de custodia.
    - Sistemas afectados (servidores, endpoints, bases de datos, web, etc.).
    - Archivos de interés (malware, scripts, documentos accedidos).
    - Datos accedidos o exfiltrados (identificar información sensible y clientes afectados).
    - Actividad significativa del atacante (comandos ejecutados, accesos, cambios de configuración).
    - IOCs de red (IPs, dominios) y host (hashes, rutas).
    - Cuentas comprometidas (locales, cloud, de clientes).

---

### **Recoger las pistas iniciales**

- **Entrevista a quien reportó el incidente** (empleado, cliente, proveedor).
- **Recoge datos iniciales:** alertas del SIEM, logs de endpoints, capturas de pantalla de aplicaciones internas o web.
- **Consulta a SMEs** (expertos internos en sistemas, redes, seguridad) para detalles técnicos y contexto.
- **Habla con responsables de negocio** (ejemplo: jefe de RRHH, responsable de I+D, comercial) para entender el impacto real.
- **Asegúrate de que las pistas sean relevantes, detalladas y accionables.**

---

#### **Referencia: Lista de recursos de respuesta**

| **Recurso**                     | **Ubicación**                            |
|----------------------------------|------------------------------------------|
| Lista de información crítica     | ``docs.grupo1.com/ir/info-critica``          |
| Lista de activos críticos        | ``docs.grupo1.com/ir/activos-criticos``      |
| Portal de Gestión de Activos     | ``activos.grupo1.com``                       |
| Diagramas de Red (Sedes y Cloud) | ``docs.grupo1.com/ir/mapas-red``             |
| Consola SIEM / Monitorización    | ``siem.grupo1.com``                          |
| Agregador de Logs                | ``logs.grupo1.com``                          |
| Consola EDR                      | ``edr.grupo1.com``                           |

---

### **Actualizar el plan de investigación y el archivo del incidente**

- **Revisa y precisa el impacto:** ¿Qué clientes, datos o servicios de Grupo 1 S.L. están afectados?
- **Actualiza el plan de investigación y el archivo del incidente** continuamente:
    - Precisa el vector de ataque.
    - Actualiza el resumen y la línea de tiempo con hechos e inferencias.
    - Crea hipótesis: ¿qué pudo ocurrir y con qué certeza?
    - Identifica y prioriza preguntas clave (lagunas de información) para confirmar o descartar hipótesis.
    - Utiliza MITRE ATT&CK para guiar las preguntas (ver matriz).  
      _Ejemplo: ¿Cómo se obtuvo acceso inicial? ¿Qué cuentas fueron comprometidas? ¿Qué técnicas de evasión se usaron?_
    - Identifica y prioriza dispositivos y estrategias testigo para responder a las preguntas clave.

---

#### **Referencia: Táctica del atacante a la matriz de preguntas clave**

| **Táctica del atacante**      | **¿Qué hacen?**                        | **Preguntas clave**                                  |
|-------------------------------|-----------------------------------------|------------------------------------------------------|
| Reconocimiento                | Aprender sobre el objetivo              | ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?         |
| Desarrollo de recursos        | Construir infraestructuras              | ¿Qué sistemas? ¿Dónde?                               |
| Acceso inicial                | Entrar                                  | ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?         |
| Ejecución                     | Ejecutar código hostil                  | ¿Qué malware? ¿Qué herramientas? ¿Dónde? ¿Cuándo?    |
| Persistencia                  | Mantenerse en el sistema                | ¿Cómo? ¿Desde cuándo? ¿Dónde? ¿Qué sistemas?         |
| Escalada de privilegios       | Obtener acceso de mayor nivel           | ¿Cómo? ¿Dónde? ¿Qué herramientas?                    |
| Evasión de la defensa         | Esquivar la seguridad                   | ¿Cómo? ¿Dónde? ¿Desde cuándo?                        |
| Acceso a credenciales         | Obtener/crear cuentas                   | ¿Qué cuentas? ¿Desde cuándo? ¿Por qué?               |
| Descubrimiento                | Aprender sobre la red                   | ¿Cómo? ¿Dónde? ¿Qué saben?                           |
| Movimiento lateral            | Moverse entre sistemas                  | ¿Cómo? ¿Cuándo? ¿Qué cuentas?                        |
| Recogida                      | Encontrar y reunir datos                | ¿Qué datos? ¿Por qué? ¿Cuándo? ¿Dónde?               |
| Mando y control               | Control remoto                          | ¿Cómo? ¿Dónde? ¿Quién? ¿Por qué?                     |
| Exfiltración                  | Extraer datos                           | ¿Qué datos? ¿Cómo? ¿Cuándo? ¿Dónde?                  |
| Impacto                       | Dañar sistemas o datos                  | ¿Qué sistemas o datos? ¿Cómo? ¿Cuándo? ¿Dónde? ¿Gravedad? |

_Consulta MITRE ATT&CK para más información y ejemplos específicos de amenazas relevantes para Grupo 1 S.L._

---

### **Crear y desplegar indicadores de compromiso (IOC)**

- **Crea IOCs** a partir de las pistas iniciales y el análisis.
- **Utiliza formatos abiertos** (ejemplo: STIX 2.0).
- **Automatiza el despliegue de IOCs** en SIEM, EDR y Firewalls.
- **No despliegues feeds no curados.**
- Considera todos los tipos de IOC:
    - **Red:** IPs, dominios, URLs (especialmente de C2 o exfiltración).
    - **Host:** Hashes de malware, rutas de persistencia, claves de registro.
    - **Cloud:** Patrones de logs inusuales, IPs de acceso anómalas, uso sospechoso de APIs.
    - **Comportamiento:** TTPs, desviaciones respecto a la actividad normal de cuentas o sistemas.
- **Correlaciona IOCs:** Ejemplo, una IP sospechosa vista en logs de red y en endpoints afectados.

---

### **Identificar los sistemas de interés**

- **Valida la relevancia** de los sistemas implicados.
- **Categoriza:** Ejemplo, “Servidor Web Comprometido”, “Portátil con Malware”, “Cuenta de RRHH con acceso a nóminas”.
- **Prioriza la recogida, análisis y remediación** según el impacto en clientes, datos sensibles y operaciones críticas.

---

### **Recogida de pruebas**

- **Prioriza según el plan de investigación.**
- **Usa herramientas aprobadas** por Grupo 1 S.L. para respuesta en vivo (ejemplo: KAPE, herramientas nativas de Windows/Linux).
- **Recolecta logs relevantes** (SIEM, EDR, servidores, aplicaciones, red).
- **Obtén imágenes de memoria/disco** de sistemas críticos si es necesario (Volatility, FTK Imager).
- **Mantén una cadena de custodia rigurosa.**
- **Artefactos útiles:**
    - Logs de inicio de sesión y actividad.
    - Logs de aplicaciones críticas (CRM, ERP, web).
    - Artefactos de endpoints (procesos, conexiones, persistencia, Prefetch, Shimcache).
    - Historial de comandos en servidores.

---

### **Analizar las pruebas**

- **Prioriza según el plan de investigación.**
- **Realiza análisis forense** de imágenes, análisis de malware (sandbox interno o externo con precauciones).
- **Enriquece con inteligencia de amenazas** (feeds, OSINT).
- **Documenta nuevos IOCs.**
- **Actualiza el archivo del caso.**
- **Indicadores útiles:**
    - Creación/modificación inusual de usuarios o permisos.
    - Acceso a sistemas desde IPs desconocidas o ubicaciones inusuales.
    - Ejecución de comandos sospechosos.
    - Creación de copias de seguridad o exportaciones no autorizadas.
    - Actividad anómala en bóvedas de contraseñas o repositorios de código.

---

### **Iterar la investigación**

- **Actualiza el plan de investigación** y repite el ciclo hasta el cierre del incidente.
- **Utiliza pensamiento crítico y creatividad** para descubrir nuevas pistas y ajustar hipótesis.
- **Coordina con el IC** para informar de hallazgos y ajustar la estrategia de respuesta.

<br>

## **Remediar**

> **Investigar, Remediar y Comunicar deben realizarse en paralelo. El Incident Commander (IC) coordina y supervisa. Notifica siempre al IC cualquier hallazgo relevante.**

---

### **Actualización del plan de remediación**

- **Revisa el archivo del incidente** en el sistema de gestión de Grupo 1 S.L. (por ejemplo, `ir-casos.grupo1.com`).
- **Consulta los playbooks aplicables** (ejemplo: Compromiso de Cuenta Cloud, Exfiltración de Datos, Ataque DoS).
- **Revisa la lista de recursos de respuesta** y asegúrate de que todo el equipo tiene acceso.
- **Considera las tácticas ATT&CK** identificadas durante la investigación, especialmente si hay vectores cloud o híbridos.
- **Desarrolla remedios** para cada TTP detectado, cubriendo las fases de:
  - **Proteger**
  - **Detectar**
  - **Contener**
  - **Erradicar**
- **Prioriza** las acciones según el tiempo, el impacto en Grupo 1 S.L. y sus clientes, y la urgencia.
- **Documenta** cada acción y decisión en el archivo del incidente.

---

### **Protección**  
_¿Cómo evitamos que esto se repita en la infraestructura de Grupo 1 S.L. o afecte más datos de clientes?_

- **Revisa y refuerza las políticas de MFA** para todos los accesos críticos (Azure, correo, VPN, aplicaciones internas).
- **Configura y revisa directivas de acceso condicional** en Azure AD y sistemas internos para limitar el acceso según el riesgo, ubicación, dispositivo y usuario.
- **Rota claves de API y secretos** en Azure Key Vault, bases de datos y aplicaciones sensibles.
- **Aplica el principio de mínimo privilegio** en todos los roles IAM, tanto en cloud como en sistemas locales.
- **Fortalece el hardening** de servidores, endpoints y dispositivos de red.
- **Mejora la segmentación de red** (VLANs, NSGs, firewalls internos y cloud).

---

### **Detección**  
_¿Cómo detectamos este tipo de incidente antes en el futuro?_

- **Crea o ajusta reglas de alerta** en el SIEM y en Azure Sentinel para identificar actividad sospechosa (accesos inusuales, movimientos laterales, exfiltración de datos).
- **Mejora la ingesta de logs** de todos los sistemas críticos (cloud y on-premises) en el SIEM.
- **Despliega o refuerza EDR** en todos los endpoints y servidores.
- **Realiza auditorías frecuentes de logs** de acceso a datos sensibles y recursos cloud.

---

### **Contención**  
_¿Cómo evitamos que el incidente se extienda o afecte a más clientes/sistemas?_

- **Deshabilita o aísla cuentas comprometidas** en Azure AD, sistemas internos y aplicaciones.
- **Bloquea IPs maliciosas** en firewalls, NSGs y WAF.
- **Aísla servidores, endpoints o redes** afectados (corta conexiones, cambia contraseñas, elimina sesiones activas).
- **Pon en cuarentena dispositivos sospechosos** y elimina accesos no autorizados.

---

### **Erradicar**  
_¿Cómo eliminamos la presencia del atacante y restauramos la seguridad?_

- **Reconstruye servidores o endpoints comprometidos** a partir de imágenes limpias.
- **Elimina backdoors, malware y persistencia** detectados en sistemas y aplicaciones.
- **Restablece todas las credenciales** (Azure AD, cuentas locales, claves API, contraseñas de bases de datos).
- **Revisa y revierte cambios no autorizados** en configuraciones de sistemas, cloud y aplicaciones.

---

### **Elegir el momento de la reparación**

- **Determina la estrategia** (inmediata, retrasada, combinada) junto con el IC, SMEs y Dirección.
- Para incidentes que afectan datos de clientes, suele preferirse la reparación inmediata o combinada (contener de inmediato, investigar más antes de erradicar completamente si es seguro).
- **Evalúa y comunica los riesgos** de cada acción a las partes interesadas.

---

### **Ejecutar la remediación**

- **Implementa acciones prioritarias** (por ejemplo, refuerzo de logging, bloqueo de cuentas, aislamiento de sistemas) de forma inmediata.
- **Programa y asigna tareas** a los responsables de cada equipo.
- **Ejecuta los cambios en lotes coordinados** para minimizar el impacto y facilitar el control.
- **Documenta el estado y los tiempos** de cada acción en el archivo del incidente.

---

### **Iterar la remediación**

- **Actualiza el plan de remediación** conforme se obtienen nuevos hallazgos o cambia el alcance del incidente.
- **Repite el ciclo de protección, detección, contención y erradicación** hasta que el incidente esté completamente resuelto y verificado.

<br>

## **Comunicar**

> **Investigar, Remediar y Comunicar deben realizarse en paralelo. Notifique siempre al Incident Commander (IC). Toda comunicación debe ser precisa, factual y mostrar integridad. No especule, especialmente sobre datos de clientes.**

---

### **Comunicación Interna (Grupo 1 S.L.)**

- **Notifique y actualice a las partes interesadas**:
  - Use canales dedicados (chat seguro, llamadas de emergencia) para informar a los equipos implicados.
  - En las llamadas iniciales y de actualización, comparta información clara sobre el vector, impacto (especialmente en clientes), resumen, cronología y acciones de remediación.
  - Proporcione actualizaciones regulares a Dirección y Legal según la gravedad y evolución del incidente.
  - Mantenga un único punto de contacto para coordinar la comunicación y evitar mensajes contradictorios.

- **Notifique y actualice a la organización**:
  - No informe al personal no involucrado hasta que el IC lo autorice, para evitar pánico o filtraciones innecesarias.
  - Las comunicaciones generales (a equipos o a toda la organización) deben ser coordinadas con Dirección y, si procede, con el área de Comunicación Interna.
  - Refuerce los protocolos y canales internos: intranet, boletines, mensajes directos y reuniones informativas según el alcance del incidente.
  - Tras el cierre, elabore un **Informe de Incidente** siguiendo la plantilla corporativa y distribúyalo a los destinatarios definidos (Dirección, Legal, Seguridad, etc.).

---

### **Comunicación Externa**

- **Notificar a reguladores**:
  - No notifique hasta autorización expresa del IC y consulta con Legal.
  - Si hay brecha de datos personales, notifique a la AEPD conforme al RGPD, coordinando el mensaje y la documentación con el área legal.

- **Notificar a clientes afectados**:
  - No comunique nada hasta autorización del IC y consulta con Legal/Dirección.
  - Priorice la notificación si los datos de clientes han sido comprometidos.
  - Sea honesto y factual: explique qué datos se vieron afectados, qué hizo Grupo 1 S.L. y qué acciones pueden tomar los clientes.
  - No culpe a terceros públicamente sin confirmación y asesoría legal.
  - Cuando sea necesario, realice un contacto directo y personalizado con los clientes más afectados.
  - Publique la comunicación lo antes posible una vez se tome la decisión.

- **Notificar a proveedores y socios**:
  - No notifique hasta autorización del IC.
  - Centre la comunicación en los aspectos que les afectan o requieran su acción (por ejemplo, soporte técnico, plataformas cloud, etc.).

- **Notificar a Fuerzas de Seguridad**:
  - No notifique hasta autorización del IC y consulta con Dirección y Legal.
  - Contacte con la Unidad de Delitos Tecnológicos de la Policía Nacional o Guardia Civil, y con organismos como INCIBE o CCN-CERT si es relevante.

- **Contactar con servicios de asistencia externa**:
  - Notifique al proveedor de ciberseguro de Grupo 1 S.L. si corresponde.
  - Contacte con la consultora externa de respuesta a incidentes si está contratada.
  - Involucre a la agencia de comunicación/PR si la situación lo requiere.

- **Compartir inteligencia**:
  - Comparta IOCs (Indicadores de Compromiso) anonimizados con INCIBE o ISACs relevantes para el sector, contribuyendo a la protección colectiva.

<br>

## **Recuperación**

- La recuperación debe ser **dirigida por las unidades de negocio y los propietarios de sistemas** en Grupo 1 S.L., en coordinación con el Incident Commander (IC) y todas las partes interesadas.
- **Active el Plan de Continuidad de Negocio y Recuperación ante Desastres (BCP/DRP)** si la situación lo requiere (por ejemplo, caída prolongada de servicios críticos como la web corporativa, o pérdida masiva de datos en sistemas cloud o locales).
- **Integre las acciones de seguridad** (como la restauración de backups, el refuerzo de controles y la monitorización post-incidente) con los esfuerzos de recuperación operativa.
- **Valide la integridad de los datos restaurados** y asegúrese de que los accesos y permisos estén correctamente configurados antes de devolver los sistemas a producción.
- **Documente cada paso** en el archivo del incidente y comunique el progreso al IC y a los responsables de negocio.

---

### **Roles en la respuesta a incidentes**

#### **Equipo de Comando**
- **Incident Commander (IC):** Lidera la respuesta, toma decisiones críticas, coordina equipos y mantiene la visión global.
- **Subjefe de Incidentes:** Apoya al IC, asume el mando si es necesario y coordina tareas específicas.
- **Escriba:** Documenta todas las acciones, decisiones y hallazgos durante el incidente.

#### **Equipo de Enlace**
- **Enlace Interno:** Mantiene informadas a las partes interesadas internas (Dirección, departamentos afectados).
- **Enlace Externo:** Gestiona la comunicación con clientes, reguladores y proveedores externos.

#### **Equipo de Operaciones (SME)**
- **Expertos en la Materia (SME):** Especialistas en sistemas críticos (infraestructura TIC, cloud, red, endpoints, web).
- **SME de Unidades de Negocio:** Referentes de áreas afectadas (Comercial, RRHH, I+D, Legal).
- **SME para Funciones Ejecutivas:** Soporte en temas legales, dirección y comunicación.

> _Todos los roles deben recibir formación periódica en gestión de incidentes, comunicación en crisis, buenas prácticas legales y técnicas de ciberseguridad._

---

### **Revisión posterior a la acción (AAR)**

- **Programe una reunión AAR** dentro de los 3-5 días hábiles posteriores al cierre del incidente. Invite a:
  - Incident Commander (IC)
  - Propietarios de servicios o plataformas afectadas (por ejemplo, responsables de la web, bases de datos, cloud)
  - Ingenieros, analistas y técnicos clave que participaron en la respuesta
  - Representante legal si hubo implicaciones legales o de clientes
- **Designe un propietario del AAR** que coordine la reunión y la documentación.

#### **Realización de la reunión AAR**

- Documente respuestas a preguntas clave, enfocándose en cómo mejorar la respuesta y la protección de datos de clientes:
  - ¿Qué ocurrió? (línea de tiempo detallada, datos y sistemas afectados)
  - ¿Qué se suponía que debía ocurrir según los planes y procedimientos de Grupo 1 S.L.?
  - ¿Cuáles fueron las causas fundamentales del incidente?
  - ¿Qué acciones debemos detener, empezar o continuar para mejorar en el futuro?

#### **Comunicar el estado y los resultados del AAR**

- El propietario del informe comunicará el estado y los resultados a los equipos y dirección.
- **Descripciones de estado:**

| **Estado**       | **Descripción**                                                                                       |
|--------------|---------------------------------------------------------------------------------------------------|
| Borrador     | La investigación AAR sigue en curso.                                                              |
| En revisión  | La investigación AAR se ha completado y está lista para revisión durante la reunión AAR.          |
| Revisado     | La reunión AAR ha terminado; el contenido ha sido revisado y acordado.                            |
| Cerrado      | No se requieren más acciones en el AAR (los problemas pendientes se rastrean en tickets).         |

- Si hay mensajes externos adicionales, el equipo de comunicación los preparará y actualizará el estado a Cerrado una vez enviados.
- **Comunicar internamente** los resultados y finalizar la documentación en los sistemas de **Grupo 1 S.L**.