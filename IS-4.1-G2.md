# CiberConsulting S.L. - Plan de Respuesta a Incidentes y Playbooks Sectoriales

**ID Actividad:** 4.01
**Curso:** 2526
**Tarea:** 4.1
**Grupo:** G2
**Entorno de la Empresa:** Asesoría de autónomos y PYMEs (150 empleados, 2 sedes, web/tienda online externalizada).

---

## Índice

1. [Introducción](#introducción)
2. [Plan de respuesta](#plan-de-respuesta)
3. [Playbooks](#playbooks)
4. [Respuesta a las preguntas](#respuesta-a-las-preguntas)
   - [Pregunta 1.a (Relación MITRE ATT&CK y RE&CT)](#1a-qué-relación-existe-entre-el-trabajo-que-has-hecho-con-las-matrices-mitre-attck-y-rect-y-el-plan-de-respuesta-que-estás-planteando)
   - [Pregunta 1.b (Playbooks identificados y flujo)](#1b-qué-playbooks-has-identificado-como-necesarios-en-este-plan-de-respuesta-y-en-qué-te-has-basado)
   - [Pregunta 1.c (Cobertura de fases PICERL)](#1c-cómo-te-has-asegurado-que-has-cubierto-todas-las-fases-del-plan-de-respuesta)
   - [Pregunta 2.a (Flujo de Toma de Decisiones y Escalado)](#2a-en-qué-consiste-el-flujo-de-toma-de-decisiones-y-escalado-de-tu-plan-de-respuesta)
   - [Pregunta 3.a (Respuestas Resilientes)](#3a-cómo-te-has-asegurado-de-que-tu-plan-tiene-respuestas-resilientes)
5. [Conclusiones](#conclusiones)
6. [Bibliografía](#bibliografía)

---

## Introducción


Inventario completo de activos

| ID | Activo | Tipo | Categoría | Propietario | Valor C | Valor I | Valor D | Criticidad |
| :------ | :------ | :------ | :------ | :------ | :------ | :------ | :------ | :------ |
| ACT-001 | **Datos personales (RGPD)** | Datos | Clientes / Legal | Director Legal | **5** | **5** | 4 | **Alta** |
| ACT-002 | **Página web / Tienda online** | Servicio | Ventas / Marketing | Director Comercial | 4 | **5** | **5** | **Alta** |
| ACT-003 | Aplicaciones empresariales (CRM/ERP) | Software | Procesos / Operaciones | Director TIC | 4 | 4 | **5** | **Alta** |
| ACT-004 | Servidores de Archivos (Local) | Hardware/SW | Almacenamiento | Director TIC | 4 | 4 | 4 | Media |
| ACT-005 | Propiedad intelectual (Informes) | Datos | Negocio / Legal | Dir. General | **5** | 4 | 3 | Media |
| ACT-006 | Dispositivos Móviles (Portátiles/Tabletas) | Hardware | Empleados | Director RRHH | 3 | 3 | 3 | Media |
| ACT-007 | Personal cualificado | Persona | RRHH | Director RRHH | 5 | 4 | 4 | Media |
| ACT-008 | Servidores de Correo Electrónico (Local) | Servicio | Comunicaciones | Director TIC | 4 | 4 | 4 | Media |




## Plan de respuesta

[Estructura general del Plan de Respuesta y asignación de roles técnicos de CiberConsulting S.L.]

## Playbooks

Aquí se listan los 6 playbooks detallados creados por el equipo:

- [Playbook 1: Exfiltración de Datos (Web/Tienda Online)](./playbook_exfiltracion.md)
- [Playbook 2: Amenaza Interna / Riesgo Físico (Extracción USB)](./playbook_insider.md)
- [Playbook 3: Infección por Ransomware](./playbook_ransomware.md)
- [Playbook 4: Ataque de Phishing](./playbook_phishing.md)
- [Playbook 5: Account Takeover (Robo de Cuentas)](./playbook_account.md)
- [Playbook 6: Insider Threat Secundario](./playbook_insider2.md)

---

## Respuesta a las preguntas

### 1.a ¿Qué relación existe entre el trabajo que has hecho con las matrices MITRE ATT&CK y RE&CT y el plan de respuesta que estás planteando? ¿De qué manera te ha ayudado el trabajo previo?

### 1.b ¿Qué playbooks has identificado como necesarios en este plan de respuesta y en que te has basado para saber que son los necesarios? Deja algún diagrama que describa el flujo de un playbook.

### 1.c ¿Como te has asegurado que has cubierto todas las fases del plan de respuesta? ¿Qué fase consideras que está más floja en un plan? ¿Cuál de ellas consideras que está mejor trabajada en tu plan?

### 2.a ¿En qué consiste el Flujo de Toma de Decisiones y Escalado de tu plan de respuesta? ¿Existe un plan de comunicación, protocolos, etc? Si la respuesta es correcta, haz un resumen del plan y protocolos. Deja evidencias del flujo, mediante un diagrama.

### 3.a ¿Cómo te has asegurado de que tu plan tiene respuestas resilientes? ¿Por qué son resilientes y en qué fases se centran?

---

## Conclusiones

[Conclusión final del proyecto de CiberConsulting S.L.]

## Bibliografía

- MITRE ATT&CK Matrix v19
- RE&CT Navigator v2.2
- NIST SP 800-61 Rev. 2 (Computer Security Incident Handling Guide)
- INCIBE (Instituto Nacional de Ciberseguridad)
