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


