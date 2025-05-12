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

**Confidencialidad de Datos y PI**

- Fuga de bases de datos de clientes o credenciales

- Acceso no autorizado a información sensible (legal, RRHH, I+D)

- Exfiltración de datos por malware en dispositivos o servidores

- Compromiso de cuentas de usuario privilegiadas

- Phishing/Spear-phishing a empleados de áreas críticas

**Integridad de Sistemas y Datos**

- Manipulación o alteración de registros y bases de datos

- Modificación no autorizada de configuraciones en servidores y red

- Malware/Ransomware en endpoints o servidores

- Errores de configuración en sistemas críticos

- Despliegue de software inseguro o sin validar

**Disponibilidad de Servicios**

- Ataques de denegación de servicio (DoS/DDoS) a la web o infraestructura

- Fallos eléctricos o de hardware en servidores/SAI

- Caída de servicios cloud o internos por sobrecarga o mantenimiento incorrecto

- Interrupción de operaciones por incidentes en la red

**Amenazas Transversales**

- Abuso de privilegios de acceso (interno/externo)

- Acceso no autorizado por suplantación de identidad

- Errores de usuarios/administradores

- Indisponibilidad de personal clave ante incidentes críticos


### Cálculo de riesgo

Considerando el inventario de activos y las posibles amenazas, se presenta la siguiente tabla para el cálculo de riesgos en Grupo 1 S.L.:

![Cálculo de riesgo](./img/Calculo%20del%20riesgo.png)

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


