# Incidentes de seguridad
## Unidad 1: Principios generales de la ciberseguridad
**Ciclo de Especialización de FP en Ciberseguridad en Entornos de las Tecnologías de la Información**

![](assets/PlanDirectorSeguridad.png "Plan Director de Seguridad")

---

# PLAN DIRECTOR DE SEGURIDAD
**[De este documento debe respetarse los puntos principales del indice, el resto de contenido puede eliminarse o adaptarse según las necesidades]**

## Información del documento

| Campo       | Valor                          |
|-------------|--------------------------------|
| **Empresa** | Security S.L.                  |
| **Versión** | 1.0                            |
| **Fecha**   | 09/11/2025                     |
| **Autores** | Jose luis, Manuel, Hugo, Juan  |
| **Estado**  | Borrador                       |

---

## Índice

[**1. Introducción**](#1-introducción)

[1.1 Importancia de la seguridad de la información](#11-importancia-de-la-seguridad-de-la-información)

[1.2 Plan Director de Seguridad](#12-plan-director-de-seguridad)

[**2. Situación Actual de la Empresa**](#2-situación-actual-de-la-empresa)

[2.1 Contexto de la empresa y estrategia de negocio](#21-contexto-de-la-empresa-y-estrategia-de-negocio)

[2.2 Acotar y establecer un alcance](#22-acotar-y-establecer-un-alcance)

[2.3 Identificación de los responsables de la gestión de los activos](#23-identificación-de-los-responsables-de-la-gestión-de-los-activos)

[2.4 Análisis de riesgos](#24-análisis-de-riesgos)

[2.4.1 Alcance del análisis](#241-alcance-del-análisis)

[2.4.2 Análisis de los activos](#242-análisis-de-los-activos)

[2.4.3 Análisis de las amenazas](#243-análisis-de-las-amenazas)

[2.4.4 Establecimiento de las vulnerabilidades](#244-establecimiento-de-las-vulnerabilidades)

[2.4.5 Evaluación y cálculo de riesgo](#245-evaluación-y-cálculo-de-riesgo)

[2.5 Objetivos basados en los activos críticos](#25-objetivos-basados-en-los-activos-críticos)

[**3. Estrategia de la Empresa**](#3-estrategia-de-la-empresa)

[**4. Definición de Proyectos e Iniciativas**](#4-definición-de-proyectos-e-iniciativas)

[**5. Clasificación y Priorización de los Proyectos**](#5-clasificación-y-priorización-de-los-proyectos)

[**6. Aprobación del PDS**](#6-aprobación-del-pds)

[**7. Puesta en Marcha del PDS**](#7-puesta-en-marcha-del-pds)

[**8. Tareas Asociadas y Responsables**](#8-tareas-asociadas-y-responsables)

[**9. Conclusiones**](#9-conclusiones)

[**10. Bibliografía**](#10-bibliografía)

[**Anexos**](#anexos)

[**Identificación del Equipo**](#identificación-del-equipo)

---

## 1. Introducción

### 1.1 Importancia de la seguridad de la información

La seguridad de la información es muy importante, ya que es fundamental para la privacidad, continuidad del negocio, su reputación y el cumplimiento normativo. Protege contra ciberataques y amenazas internas, además de abarcar protección de los dispositivos de almacenamiento, de los programas, aplicaciones y gestión de los controles de acceso a la información.

**Contexto general**
La empresa operativa en el sector de seguridad de redes, sistemas e información debe asegurar la protección de datos críticos de clientes y proveedores, garantizando la continuidad de operaciones y cumplimiento normativo.

**Motivación para este PDS** 
Tras el ataque de ransomware sufrido, se evidenció la necesidad crítica de implementar un Plan Director de Seguridad integral que cubra todos los niveles organizativos, técnicos y procedimentales.

### 1.2 Plan Director de Seguridad
Un Plan Director de Seguridad consiste en la definición y priorización de un conjunto de proyectos en materia de seguridad de la información con el objetivo de reducir los riesgos a los que está expuesta la organización hasta unos niveles aceptables, a partir de un análisis de la situación inicial.

Es fundamental para la realización de un buen Plan Director de Seguridad que se alinee con los objetivos estratégicos de la empresa, incluya una definición del alcance e incorpore las obligaciones y buenas prácticas de seguridad que deberán cumplir los trabajadores de la organización así como terceros que colaboren con ésta.

Definición: Un Plan Director de Seguridad es un documento de planificación estratégica que define las iniciativas, proyectos y controles necesarios para mejorar la postura de seguridad de la información de una organización de manera integral y alineada con su estrategia empresarial.

**Objetivos del documento:**

Establecer una hoja de ruta clara para implementar mejoras de seguridad en los próximos 2-3 años

Reducir los riesgos identificados en el análisis de riesgos a niveles aceptables por la organización

Alinear la seguridad de la información con los objetivos empresariales de transformación digital

**Alcance temporal:**
Alcance temporal: 2024-2026 (3 años)

**Metodología:**
Metodología: MAGERIT, ISO 27001/27002 e ISO 27005

## 2. Situación Actual de la Empresa

### 2.1 Contexto de la empresa y estrategia de negocio
Nuestra empresa está en proceso de recuperación y refuerzo de seguridad tras un ataque de ransomware y una evaluación de sus vulnerabilidades y riesgos.

**Aspectos de la situación:**
- Nuestra empresa sufrió un ataque de ransomware, como anteriormente mencionado, lo que nos evidenció debilidades críticas en la seguridad
- Tenemos antivirus subcontratado (en transición a gestión propia), controles técnicos de protección pendientes de despliegue completo (bloqueo automático 2 min, USB deshabilitados, cifrado BitLocker, contraseñas robustas 12 chars), dispositivos móviles Xiaomi Redmi Note 14 sin cifrado activado, copias de seguridad insuficientes y puntos WiFi sin controles
- Nos enfrentamos a amenazas intencionadas (hacking, ransomware), accidentales (errores, phishing) y técnicas (fallos de software, equipos desactualizados)

**Activos clave:**
- Ordenadores, dispositivos móviles, servidores
- Infraestructuras de red (router, WiFi, firewall)
- Servicios en la nube y aplicaciones
- Página web y tienda online
- Datos personales de clientes y proveedores
- Información financiera y contractual
- Propiedad intelectual y documentación


**Información general:**

| Aspecto         | Descripción                      |
|-----------------|----------------------------------|
| **Sector**      | Seguridad de redes, sistemas e información    |
| **Actividad**   | Servicios de asesoría, auditoría y consultoría en ciberseguridad   |
| **Tamaño**      | 150 empleados                    |
| **Sedes**       | 2 sedes (principal + secundaria) |
| **Antigüedad**  | [Años de operación]              |
| **Facturación** | Ventas, compras, comunicación, TIC, RRHH, Delivery, Mantenimiento, Legal           |

**Estructura organizativa:**

```
Consejo de Administración
│
├── Dirección General
    │
    ├── Facturación y Ventas
    ├── Compras
    ├── Comunicación y RRSS
    ├── TIC
    ├── RRHH
    ├── Delivery
    ├── Mantenimiento
    ├── Legal
    └── Responsable de Seguridad (transversal)
```

**Estrategia de negocio:**
Transformación digital para digitalizar operaciones y procesos, usando Internet, la página web y RRSS para amplificar presencia y captar clientes. Este modelo incrementa la dependencia de servicios en la nube y proveedores externos. Priorizamos salvaguardar la continuidad y minimizar el impacto de incidentes sobre la disponibilidad, integridad y confidencialidad de la información.

**Factores críticos de éxito:**
1. Compromiso de la dirección: Aprobación del PDS por parte de la dirección para garantizar el compromiso institucional, asignación de recursos y legitimidad en la implementación de proyectos y controles de seguridad
2. Comunicación efectiva: Presentación del PDS a la organización para asegurar la comprensión de los trabajos, resultados y el compromiso de cada departamento.
3. Revisión periódica y ajustes: Análisis de riesgos anuales con informes a dirección, auditorías y pentesting para mantener la mejora contínua ante cambios en amenazas o estrategia empresarial.

### 2.2 Acotar y establecer un alcance

> **Instrucciones**: Define claramente el alcance del PDS. Incluye:
> - Qué departamentos/procesos están incluidos
> - Qué activos están dentro del alcance
> - Qué queda fuera del alcance (si aplica)
> - Justificación del alcance elegido
> - Relación del alcance con la estrategia de negocio

**Alcance incluido:**

| Elemento | Incluido | Justificación |
|----------|----------|---------------|
| Departamento TIC | Sí | Gestión de infraestructura crítica |
| Departamento RRHH | Sí | Gestión de datos personales de empleados |
| Facturación y Ventas | Sí | Manejo de datos de clientes |
| Todos los departamentos | Sí | Acceso a información corporativa |
| Ambas sedes físicas | Sí | Alcance territorial completo |
| Servicios externalizados | Sí | Web, tienda online, proveedores |


**Procesos críticos en alcance:**
- Gestión de información de clientes y proveedores
- Procesamiento de transacciones financieras
- Almacenamiento y protección de datos corporativos
- Acceso a sistemas y servicios en la nube

**Exclusiones (fuera de alcance):**
- [Elemento excluido 1]: [Razón]
- [Elemento excluido 2]: [Razón]

**Justificación del alcance:**
Este alcance es apropiado considerando la estrategia de negocio centrada en transformación digital y la dependencia de servicios en la nube y proveedores externos. Cubre todos los puntos donde se generan, procesan, transmiten o almacenan datos críticos para la continuidad del negocio.



### 2.3 Identificación de los responsables de la gestión de los activos

**Estructura de gobierno de seguridad:**
```
Dirección General
│
├── Responsable de Seguridad
│ │
│ ├── Coordina ejecución, revisión y comunicación de análisis de riesgos
│ ├── Difusión de resultados y aplicación de políticas de protección
│ └── Centraliza coordinación de subcontratas de seguridad en distintas sedes
│
├── Departamento TIC
│ │
│ ├── Gestión de servicios de infraestructura, equipos, software, apps, accesos
│ ├── Administración y mantenimiento
│ ├── Asegurar confidencialidad, integridad y disponibilidad de datos y sistemas
│ └── Actualización de activos (adquisiciones, instalación, actualización, retirada)
│
└── Jefes de Departamento
│
└── Gestión, protección y supervisión de activos bajo su responsabilidad
```

**Responsables por tipo de activo:**

| Tipo de Activo                        | Propietario              | Custodio                    | Usuario                          |
|---------------------------------------|--------------------------|-----------------------------|---------------------------------|
| Servidores locales                    | Departamento TIC         | Administración TIC          | Todos los empleados             |
| Infraestructura de red                | Departamento TIC         | Administración TIC          | Todos los empleados             |
| Puestos de trabajo (PCs, impresoras)  | Departamento TIC         | Administración TIC          | Empleados según departamento    |
| Portátiles, móviles y tablets         | Departamento TIC         | Administración TIC          | Empleados según asignación      |
| Software y aplicaciones               | Departamento TIC         | Administración TIC          | Empleados según rol             |
| Datos personales de empleados         | Jefe de Departamento RRHH| Administración TIC          | Departamento RRHH               |
| Datos de clientes y proveedores       | Jefes de Departamento    | Administración TIC          | Ventas, Delivery, Compras       |
| Información financiera                | Jefes de Departamento    | Administración TIC          | Departamentos autorizados       |
| Servicios en la nube                  | Departamento TIC         | Proveedor externo + TIC     | Todos los empleados             |
| Página web y tienda online            | Departamento TIC         | Proveedor externo + TIC     | Clientes y administradores      |
| Documentación y registros             | Jefes de Departamento    | Cada departamento           | Empleados según departamento    |


**Matriz RACI del PDS:**

| Actividad              | Dir. General  | CISO  | TIC  | RRHH  | Legal  | Otros Dptos  |
|------------------------|---------------|-------|------|-------|--------|--------------|
| Aprobación PDS         | A             | R     | C    | C     | C      | I            |
| Análisis de riesgos    | I             | A     | R    | C     | C      | C            |
| Implementación técnica | I             | A     | R    | I     | I      | C            |
| Formación usuarios     | I             | A     | C    | R     | I      | C            |
| Auditorías             | A             | R     | C    | I     | C      | I            |

> **Leyenda**: R=Responsable, A=Aprobador, C=Consultado, I=Informado



### 2.4 Análisis de riesgos

**Introducción al análisis:**
Se ha realizado un análisis de riesgos integral utilizando la metodología MAGERIT. Esta sección resume el análisis detallado previo.

#### 2.4.1 Alcance del análisis

El análisis de riesgos abarca todos los departamentos de la empresa que participan en la gestión, procesamiento y almacenamiento de información crítica, incluyendo ambas sedes físicas con sus sistemas internos (PCs, portátiles, móviles, tablets, servidores, routers, WiFi) y servicios externalizados (página web, tienda online, servicios en la nube, proveedores de seguridad física).

También se incluye la información gestionada: datos personales de clientes y proveedores, información financiera, contractual, propiedad intelectual y documentación tanto en formato físico como digital.


#### 2.4.2 Análisis de los activos

**Resumen de activos identificados:**

| Categoría  | Cantidad  | Criticidad Alta  | Criticidad Media  | Criticidad Baja  |
|------------|-----------|------------------|-------------------|------------------|
| Hardware   | 9         | 3                | 4                 | 2                |
| Software   | 3         | 2                | 1                 | 0                |
| Datos      | 4         | 4                | 0                 | 0                |
| Servicios  | 3         | 3                | 0                 | 0                |
| Personal   | 1         | 1                | 0                 | 0                |
| **Total**  | **20**    | **13**           | **5**             | **2**            |

### Por categoría:

#### Hardware (9 activos)

**Criticidad Alta (3):**
- Servidores locales (correo, archivos, aplicaciones)
- Portátiles, móviles y tablets
- Infraestructura de red (router, WiFi, conexiones)

**Criticidad Media (4):**
- Ordenadores personales
- Impresoras
- Teléfonos fijos
- Almacenamiento externo (discos duros, pendrives)

**Criticidad Baja (2):**
- Equipos de respaldo
- Dispositivos periféricos adicionales

#### Software (3 activos)

**Criticidad Alta (2):**
- Sistemas operativos
- Aplicaciones empresariales críticas

**Criticidad Media (1):**
- Software de productividad general

#### Datos (4 activos)

**Criticidad Alta (4):**
- Datos personales de clientes y proveedores
- Información financiera
- Información contractual y de gestión interna
- Propiedad intelectual y documentación (física y digital)

#### Servicios (3 activos)

**Criticidad Alta (3):**
- Servicios en la nube (almacenamiento y aplicaciones)
- Página web
- Tienda online

#### Personal (1 activo)

**Criticidad Alta (1):**
- Personal con acceso a información crítica y sistemas


**Activos más críticos identificados:**

1. **Servidores locales**
   - Tipo: Hardware/Infraestructura
   - Criticidad: Alta
   - Justificación: Servidores de correo electrónico, de archivos y aplicaciones, esenciales para la gestión interna, el almacenamiento y la información. Sin estos activos, la empresa no podría prestar servicio alguno o se expondría a sanciones legales y pérdidas económicas severas
   - Valor estimado: Confidencialidad: Alta, Integridad: Alta, Disponibilidad: Muy Alta

2. **Datos personales de clientes y proveedores**
   - Tipo: Datos/Información
   - Criticidad: Alta
   - Justificación: Información sensible sujeta a cumplimiento normativo (RGPD). Su compromiso genera sanciones legales, daño reputacional y pérdidas económicas severas. Impacto directo en la operativa diaria y el cumplimiento normativo
   - Valor estimado: Confidencialidad: Muy Alta, Integridad: Alta, Disponibilidad: Alta

3. **Portátiles, teléfonos móviles y tablets**
   - Tipo: Hardware
   - Criticidad: Alta
   - Justificación: Fundamentales para el trabajo remoto (Dell Latitude 3440), el acceso a información en cualquier lugar y la comunicación con clientes y proveedores. Actualmente sin protección adecuada: Xiaomi Redmi Note 14 sin cifrado nativo activado, portátiles Dell sin BitLocker desplegado, antivirus subcontratado sin gestión TIC. Se requiere implementar: antivirus propio con capacidades anti-ransomware y alertas centralizadas, puertos USB bloqueados por defecto con autorización TIC, y cifrado obligatorio en todos los dispositivos
   - Valor estimado: Confidencialidad: Alta, Integridad: Media, Disponibilidad: Alta

4. **Página web y tienda online**
   - Tipo: Servicios externalizados
   - Criticidad: Alta
   - Justificación: Canales principales de captación de clientes y prestación de servicios, alojados en proveedores externos. La falta de control sobre su seguridad es crítica para el negocio. La estrategia de transformación digital depende de estos activos
   - Valor estimado: Confidencialidad: Alta, Integridad: Alta, Disponibilidad: Alta

5. **Servicios en la nube**
   - Tipo: Servicios externalizados
   - Criticidad: Alta
   - Justificación: Espacios para almacenamiento y aplicaciones. La estrategia de negocio incrementa la dependencia de servicios de la nube y proveedores externos. Su caída paralizaría las operaciones
   - Valor estimado: Confidencialidad: Alta, Integridad: Alta, Disponibilidad: Alta

6. **Información financiera, contractual y de gestión interna**
   - Tipo: Datos/Información
   - Criticidad: Alta
   - Justificación: Sustenta los procesos de la empresa y cumple requisitos legales. Su compromiso afecta la continuidad del negocio y genera pérdidas económicas severas
   - Valor estimado: Confidencialidad: Alta, Integridad: Alta, Disponibilidad: Alta

7. **Infraestructura de red (router, WiFi, conexiones)**
   - Tipo: Hardware/Infraestructura
   - Criticidad: Alta
   - Justificación: Esencial para la conectividad y comunicación de toda la organización. Actualmente presenta vulnerabilidades (puntos WiFi sin controles, cableado expuesto). Sin segmentación adecuada permite propagación de ataques
   - Valor estimado: Confidencialidad: Media, Integridad: Alta, Disponibilidad: Alta

8. **Propiedad intelectual**
   - Tipo: Datos/Información
   - Criticidad: Alta
   - Justificación: Información crítica para la ventaja competitiva de la empresa. Su robo mediante espionaje industrial genera pérdidas económicas y daño reputacional severo
   - Valor estimado: Confidencialidad: Alta, Integridad: Alta, Disponibilidad: Media


> Consultar el **Anexo A: Inventario completo de activos** para el listado detallado.

---

#### 2.4.3 Análisis de las amenazas

**Resumen de amenazas identificadas:**

| Tipo de Amenaza                   | Cantidad  | Probabilidad Alta  | Probabilidad Media | Probabilidad Baja  |
|-----------------------------------|-----------|--------------------|--------------------|--------------------|
| Desastres naturales               | 2         | 0                  | 1                  | 1                  |
| De origen industrial              | 1         | 0                  | 1                  | 0                  |
| Errores y fallos no intencionados | 3         | 1                  | 2                  | 0                  |
| Ataques intencionados             | 3         | 3                  | 0                  | 0                  |
| **Total**                         | **9**     | **4**              | **4**              | **1**              |

**Principales amenazas identificadas:**

**Amenazas intencionadas y/o maliciosas:**

1. **Acceso no autorizado, hacking, ransomware y spyware**
   - Tipo: Ataques intencionados
   - Probabilidad: Alta
   - Activos afectados: Servidores locales, dispositivos móviles, datos personales, información financiera, servicios en la nube
   - Descripción: Amenazas para robar, destruir o secuestrar información sensible

2. **Espionaje industrial**
   - Tipo: Ataques intencionados
   - Probabilidad: Alta
   - Activos afectados: Propiedad intelectual, información confidencial
   - Descripción: Robo de propiedad intelectual o información confidencial

3. **Fraude, vandalismo o ataques armados**
   - Tipo: Ataques intencionados
   - Probabilidad: Alta
   - Activos afectados: Infraestructura completa, servidores, datos
   - Descripción: Amenazas que pueden paralizar la operación de la empresa

**Amenazas de origen humano (accidental):**

4. **Eliminación involuntaria de archivos críticos**
   - Tipo: Errores y fallos no intencionados
   - Probabilidad: Alta
   - Activos afectados: Datos corporativos, servidores, puestos de trabajo
   - Descripción: Eliminación involuntaria de archivos críticos o introducción de datos erróneos

5. **Divulgación accidental de información confidencial**
   - Tipo: Errores y fallos no intencionados
   - Probabilidad: Media
   - Activos afectados: Datos personales, información financiera, propiedad intelectual
   - Descripción: Divulgación accidental de información confidencial

6. **Instalación de software no autorizado**
   - Tipo: Errores y fallos no intencionados
   - Probabilidad: Media
   - Activos afectados: Puestos de trabajo, portátiles, servidores
   - Descripción: Instalación de software no autorizado y/o uso de dispositivos sin medidas adecuadas de protección

**Amenazas ambientales y/o físicas:**

7. **Desastres naturales**
   - Tipo: Desastres naturales
   - Probabilidad: Media
   - Activos afectados: Instalaciones físicas, servidores, infraestructura de red
   - Descripción: Incendios, inundaciones o terremotos que pueden interrumpir los servicios y/o dañar las instalaciones

8. **Fallos técnicos**
   - Tipo: De origen industrial
   - Probabilidad: Media
   - Activos afectados: Servidores, infraestructura de red, software
   - Descripción: Mal funcionamiento de equipos o errores de software que afectan a la disponibilidad y operatividad

9. **Terremoto**
   - Tipo: Desastres naturales
   - Probabilidad: Baja
   - Activos afectados: Instalaciones físicas completas
   - Descripción: Daño estructural a las sedes físicas que interrumpe totalmente las operaciones


> Consultar el **Anexo B: Catálogo completo de amenazas** para el listado detallado.

---

#### 2.4.4 Establecimiento de las vulnerabilidades

#### 2.4.4 Establecimiento de las vulnerabilidades

**Análisis de madurez de controles (ISO 27002:2022):**

| Dominio de control | Total controles  | Implementados  | Parciales  | No implementados  | % Madurez  |
|--------------------|------------------|----------------|------------|-------------------|------------|
| 5. Organizativos   | 37               | 5              | 8          | 24                | 35%        |
| 6. Personas        | 8                | 1              | 2          | 5                 | 38%        |
| 7. Físicos         | 14               | 3              | 4          | 7                 | 50%        |
| 8. Tecnológicos    | 34               | 4              | 7          | 23                | 32%        |
| **Total**          | **93**           | **13**         | **21**     | **59**            | **36%**    |

**Nivel de madurez global: INICIAL**

**Principales vulnerabilidades identificadas:**

1. **Ausencia de bloqueo automático de sesión en puestos de trabajo**
   - Control ISO 27002: 8.3 (Control de acceso a sistemas y aplicaciones)
   - Estado: No implementado
   - Activos afectados: Equipos Dell Precision (escritorio), Dell Latitude 3440 (portátiles)
   - Riesgo asociado: Alto
   - Observaciones: Los equipos no tienen configurado bloqueo automático a los 2 minutos de inactividad, exponiendo accesos indebidos. Tampoco se apagan al final de jornada de forma sistemática

2. **Falta de formación y concienciación de seguridad en el personal**
   - Control ISO 27002: 6.3 (Concienciación, educación y formación)
   - Estado: No implementado
   - Activos afectados: Todos los empleados, datos personales, información confidencial
   - Riesgo asociado: Alto
   - Observaciones: El personal no está capacitado para identificar amenazas como phishing, ingeniería social ni reportar incidentes de seguridad

3. **Procedimientos deficientes para gestionar bajas de empleados y notificación de incidentes**
   - Control ISO 27002: 7.3 (Cese o cambio de puesto) y 5.24 (Gestión de incidentes)
   - Estado: No implementado
   - Activos afectados: Todos los sistemas, dispositivos móviles (Xiaomi Redmi Note 14), datos personales, información financiera
   - Riesgo asociado: Alto
   - Observaciones: No se revocan accesos en bajas. No existe canal formal para reportar alertas de malware, correos sospechosos, pérdida de dispositivos, borrado accidental o accesos no autorizados

4. **Supervisión insuficiente del personal y proveedores con acceso a datos sensibles**
   - Control ISO 27002: 6.1 (Organización interna) y 5.19 (Gestión de proveedores)
   - Estado: No implementado
   - Activos afectados: Datos de clientes, información financiera, propiedad intelectual
   - Riesgo asociado: Alto
   - Observaciones: Sin controles para supervisar actividades de usuarios con acceso privilegiado

5. **Derechos de usuario que no se revisan regularmente**
   - Control ISO 27002: 8.2 (Gestión de acceso de usuario)
   - Estado: No implementado
   - Activos afectados: Todos los sistemas y datos corporativos
   - Riesgo asociado: Alto
   - Observaciones: Los usuarios acumulan privilegios excesivos sin revisión ni actualización regular

6. **Ausencia de políticas formalizadas sobre seguridad**
   - Control ISO 27002: 5.1 (Políticas para la seguridad de la información)
   - Estado: En proceso de implementación (controles técnicos de protección de equipos, clasificación de información, seguridad cloud)
   - Activos afectados: Toda la organización, equipos Dell Precision y Dell Latitude 3440, Xiaomi Redmi Note 14
   - Riesgo asociado: Medio


7. **Copias de seguridad con frecuencia insuficiente y sin pruebas de restauración**
   - Control ISO 27002: 8.13 (Copias de seguridad)
   - Estado: Parcial (existente pero insuficiente)
   - Activos afectados: Servidores, datos corporativos, información financiera
   - Riesgo asociado: Muy Alto
   - Observaciones: Las copias son centralizadas, sin redundancia y sin pruebas periódicas de restauración

8. **Gestión deficiente de cambios**
   - Control ISO 27002: 8.9 (Gestión de cambios)
   - Estado: No implementado
   - Activos afectados: Infraestructura TIC, aplicaciones, servidores
   - Riesgo asociado: Medio
   - Observaciones: Implementación de tecnologías sin análisis adecuado de riesgos

9. **Política de contraseñas insuficiente**
   - Control ISO 27002: 8.5 (Gestión de contraseñas)
   - Estado: En proceso de fortalecimiento (implementación de requisitos mínimo 12 caracteres con complejidad, renovación cada 90 días)
   - Activos afectados: Todos los equipos Dell Precision, Dell Latitude 3440, Xiaomi Redmi Note 14, routers, WiFi, servidores, aplicaciones
   - Riesgo asociado: Alto

10. **Software y SO desactualizados**
   - Control ISO 27002: 8.8 (Gestión de vulnerabilidades técnicas)
   - Estado: En proceso de mejora (implementación de actualizaciones automáticas mediante WSUS para Windows)
   - Activos afectados: Equipos Dell Precision y Dell Latitude 3440, servidores, infraestructura
   - Riesgo asociado: Alto


11. **Uso de software no autorizado o descargado de fuentes no confiables**
    - Control ISO 27002: 8.7 (Control de software en explotación)
    - Estado: No implementado
    - Activos afectados: Equipos Dell Precision, Dell Latitude 3440
    - Riesgo asociado: Medio

12. **Equipos sin cifrado y dependencia de antivirus subcontratado**
    - Control ISO 27002: 8.10 (Cifrado), 8.7 (Protección contra malware) y 8.11 (Control de medios extraíbles)
    - Estado: En transición hacia solución propia (BitLocker en Dell Latitude, cifrado nativo Xiaomi, antivirus con anti-ransomware y alertas centralizadas, control USB)
    - Activos afectados: Dell Latitude 3440 (portátiles), Xiaomi Redmi Note 14 (móviles corporativos), USB y almacenamiento externo
    - Riesgo asociado: Muy Alto


13. **Seguridad física deficiente con accesos no controlados**
    - Control ISO 27002: 7.2 (Seguridad física y del entorno)
    - Estado: Parcial
    - Activos afectados: Instalaciones físicas, servidores, equipamiento Dell
    - Riesgo asociado: Medio
    - Observaciones: Accesos a instalaciones sin control adecuado. Complementar con medida de bloqueo automático (2 min) y apagado de equipos al final de jornada

14. **Cableado de red expuesto**
    - Control ISO 27002: 7.4 (Seguridad del cableado)
    - Estado: No implementado
    - Activos afectados: Infraestructura de red
    - Riesgo asociado: Medio
    - Observaciones: Cableado de red sin protección física adecuada

15. **Equipos ubicados en zonas de riesgo ambiental**
    - Control ISO 27002: 7.3 (Protección contra amenazas ambientales)
    - Estado: No implementado
    - Activos afectados: Servidores, equipamiento Dell crítico
    - Riesgo asociado: Bajo
    - Observaciones: Equipos expuestos a humedad, calor o polvo

16. **Ausencia de inventario y clasificación de activos de información**
    - Control ISO 27002: 5.9 (Inventario de activos) y 5.12 (Clasificación de la información)
    - Estado: En proceso de implementación (creación CMDB con propietarios, clasificación en 5 niveles, controles por nivel)
    - Activos afectados: Datos personales de clientes y proveedores, información financiera, contratos, propiedad intelectual, nóminas, expedientes clientes
    - Riesgo asociado: Alto
    - Observaciones: No existe catálogo formal (CMDB) con propietarios, localización y clasificación. Sin sistema de niveles (Público/Interno/Confidencial/Sensible/Restringido) no se pueden aplicar controles proporcionales

17. **Falta de etiquetado y controles proporcionales por nivel de información**
    - Control ISO 27002: 5.12 (Clasificación de la información) y 5.13 (Etiquetado de la información)
    - Estado: No implementado
    - Activos afectados: Documentos digitales y físicos, nóminas (RRHH), expedientes clientes (Legal), CMS web/tienda (Marketing)
    - Riesgo asociado: Alto
    - Observaciones: Documentos sin nivel de clasificación en encabezado, pie o metadatos. No se aplican tratamientos mínimos (cifrado, backups, logging, retención) según criticidad

18. **Shadow IT: almacenamiento en servicios no autorizados**
    - Control ISO 27002: 5.19 (Seguridad de la información en las relaciones con proveedores) y 5.23 (Uso aceptable de activos)
    - Estado: No implementado
    - Activos afectados: Información corporativa en servicios personales (Dropbox personal, Google Drive personal, WhatsApp personal)
    - Riesgo asociado: Alto
    - Observaciones: Se debe prohibir uso de servicios personales no autorizados. Necesidad de tramitar servicios cloud autorizados vía TIC con contratos y cláusulas de seguridad

19. **Retención y eliminación de información sin registro formal**
    - Control ISO 27002: 5.10 (Uso aceptable de activos) y 8.10 (Eliminación de información)
    - Estado: No implementado
    - Activos afectados: Facturación (6 años), nóminas (6 años), contratos (5 años), documentación operativa
    - Riesgo asociado: Medio
    - Observaciones: Sin proceso de eliminación segura verificable por TIC. Riesgo de incumplimiento legal por retención excesiva o insuficiente

20. **Gestión de accesos sin proceso formal de aprobación y revisión**
    - Control ISO 27002: 5.18 (Derechos de acceso) y 8.2 (Gestión de acceso de usuario)
    - Estado: No implementado
    - Activos afectados: Nóminas (RRHH), expedientes clientes sensibles (Legal), CMS web (Marketing), servidores
    - Riesgo asociado: Alto
    - Observaciones: Se requiere proceso formal de altas/bajas por ticketing con revocación en 24h y revisión trimestral. Sin control de acceso basado en roles ni MFA para usuarios privilegiados

**Salvaguardas existentes:**

| Control                      | Estado              | Nivel madurez | Efectividad | Descripción Técnica |
|------------------------------|---------------------|----------------|-------------|---------------------|
| Copias de seguridad          | Parcial             | Inicial        | Baja        | Estrategia 3-2-1 con backups según clasificación |
| Antivirus (subcontratado → propio) | En transición | Inicial        | Media       | Migración a solución propia con anti-ransomware |
| Firewall                     | Implementado        | Repetible      | Media       | Perímetro básico implementado |
| Cumplimiento RGPD            | Implementado        | Definido       | Alta        | Conformidad GDPR/LOPDGDD |
| Seguridad física básica      | Parcial             | Inicial        | Baja        | Bloqueo automático y apagado correcto |
| Control de acceso lógico     | En implementación   | Inicial        | Baja        | RBAC + MFA para accesos sensibles |
| Cifrado de datos             | En implementación   | Inicial        | Baja        | BitLocker portátiles + cifrado según clasificación |
| Gestión de identidades (MFA) | En implementación   | Inicial        | Baja        | MFA para RRHH, Legal, Marketing |
| Segmentación de red          | No implementado     | No existe      | Nula        | Pendiente VLANs por departamento |
| Monitorización de seguridad  | En planificación    | Inicial        | Baja        | Alertas centralizadas + logs según criticidad |
| Control USB                  | En implementación   | Inicial        | Baja        | USB bloqueado por defecto con MDM |
| Gestión de incidentes        | En desarrollo       | Inicial        | Baja        | Canal notificación con respuesta en 24h |
| Actualización de SO          | Parcial             | Inicial        | Media       | WSUS para Windows en equipos Dell |
| Clasificación de información | En implementación   | Inicial        | Baja        | Inventario CMDB con cinco niveles |
| Etiquetado de documentos     | No implementado     | No existe      | Nula        | Metadatos digitales + sellos físicos |
| Control Shadow IT            | No implementado     | No existe      | Nula        | Prohibición servicios no autorizados |
| Retención y eliminación      | Parcial             | Inicial        | Baja        | Plazos legales + eliminación segura registrada |

#### 2.4.5 Evaluación y cálculo de riesgo

**Metodología de evaluación**

La metodología sigue un enfoque cualitativo basado en ISO 31000, integrando amenazas (2.4.3), vulnerabilidades (2.4.4) y activos del inventario. Se utiliza una escala simplificada de 1-3 para probabilidad (Bajo:1, Medio:2, Alto:3) e impacto (Bajo:1, Medio:2, Alto:3), calculando riesgo como producto (Riesgo = Probabilidad × Impacto), agravado por madurez de controles. El template de análisis confirma esta escala y cruces activo-amenaza para automatizar evaluaciones, priorizando tratamientos vía iniciativas. Incorpora verificación (64% controles insuficientes) y post-ransomware, sin alterar PDF.

**Matriz de riesgo**

| Impacto / Probabilidad | Probabilidad Baja (1) | Probabilidad Media (2) | Probabilidad Alta (3) |
|------------------------|-----------------------|------------------------|-----------------------|
| **Impacto Alto (3)**    | Medio (3)            | Alto (6)              | Alto (9)             |
| **Impacto Medio (2)**   | Bajo (2)             | Medio (4)             | Alto (6)             |
| **Impacto Bajo (1)**    | Bajo (1)             | Bajo (2)              | Medio (3)            |

**Interpretación de la matriz:**
- **Bajo (1-3)**: Aceptable, monitoreo.
- **Medio (4-6)**: Recomendado tratamiento.
- **Alto (7-9)**: Prioritario/inmediato.

**Distribución de riesgos**

De 42 riesgos (cruces activo-amenaza del template), usando inventario (23 activos) y verificación:

| Nivel de Riesgo | Cantidad | Porcentaje | Ejemplos |
|-----------------|----------|------------|----------|
| Alto           | 15      | 36%       | Ransomware servidores |
| Medio          | 18      | 43%       | Acceso no autorizado datos |
| Bajo           | 9       | 21%       | Fallos periféricos |

Concentración en altos/medios (79%) por controles deficientes.

**Top 10 riesgos más críticos**

1. **Ransomware en servidores**
   - Probabilidad: Alto (3)
   - Impacto: Alto (3)
   - Nivel: Alto (9)
   - Activos: ID_0001, ID_0002 (servidores)
   - Justificación: Desactualizaciones (ID_0022); backups insuficientes (ID_0013)

2. **Acceso no autorizado a datos clientes**
   - Probabilidad: Alto (3)
   - Impacto: Alto (3)
   - Nivel: Alto (9)
   - Activos: ID_0020 (datos clientes)
   - Justificación: Sin MFA (ID_0016); RGPD parcial (ID_0027)

3. **Robo de dispositivos móviles**
   - Probabilidad: Alto (3)
   - Impacto: Alto (3)
   - Nivel: Alto (9)
   - Activos: ID_0007, ID_0008 (móviles)
   - Justificación: Sin cifrado; supervisión baja (ID_0015)

4. **Espionaje en propiedad intelectual**
   - Probabilidad: Alto (3)
   - Impacto: Alto (3)
   - Nivel: Alto (9)
   - Activos: ID_0021 (base datos)
   - Justificación: Proveedores sin cláusulas (ID_0005)

5. **Eliminación accidental archivos**
   - Probabilidad: Alto (3)
   - Impacto: Alto (3)
   - Nivel: Alto (9)
   - Activos: ID_0013, ID_0014 (discos)
   - Justificación: Sin formación (ID_0018); backups sin pruebas (ID_0013)

6. **Caída servicios cloud**
   - Probabilidad: Medio (2)
   - Impacto: Alto (3)
   - Nivel: Alto (6)
   - Activos: ID_0018 (cloud)
   - Justificación: Dependencia externa; sin SLAs

7. **Phishing en puestos**
   - Probabilidad: Alto (3)
   - Impacto: Medio (2)
   - Nivel: Alto (6)
   - Activos: ID_0009, ID_0010 (ordenadores)
   - Justificación: Antivirus parcial; sin concienciación (ID_0018)

8. **Fallo en red (cableado)**
   - Probabilidad: Medio (2)
   - Impacto: Alto (3)
   - Nivel: Alto (6)
   - Activos: ID_0003-ID_0006 (routers)
   - Justificación: Exposición física (ID_0021)

9. **Desastre natural**
   - Probabilidad: Medio (2)
   - Impacto: Alto (3)
   - Nivel: Alto (6)
   - Activos: Salas CPD
   - Justificación: Sin continuidad (ID_0024-ID_0026)

10. **Abuso de privilegios**
    - Probabilidad: Medio (2)
    - Impacto: Alto (3)
    - Nivel: Alto (6)
    - Activos: Accesos datos financieros
    - Justificación: Cuentas compartidas (ID_0020); sin revisión (ID_0016)

**Umbral de aceptación del riesgo**

Umbral: Bajo (≤3), monitoreo. Medio (4-6): evaluación anual. Alto (7-9): tratamiento obligatorio. Alineado con template (riesgos >3 acción) y apetito post-ransomware.

**Riesgos asumidos**

9 riesgos bajos (21%), mitigación excede beneficio:

- **Fallo pen drives (ID_0015, ID_0016)**: Bajo (1).
- **Acceso bajo WiFi clientes (ID_0003, ID_0005)**: Bajo (2).
- **Errores de impresoras**: Bajo (2). 
- **Temperatura ambiental de discos**: Bajo (2). 
- **Divulgación de telfonos fijos**: Bajo (1). 
- **Fallo de puestos no críticos (ID_0011, ID_0012)**: Bajo (2). 
- **Residual web externa (ID_0017)**: Bajo (3).
- **Baja de periféricos**: Bajo (1). 
- **Fallo de servicios (ID_0019)**: Bajo (2). 

### 2.5 Objetivos basados en los activos críticos


**Objetivos estratégicos de seguridad:**

### Objetivo 1: Implementar autenticación multifactor (MFA) en accesos privilegiados
- Descripción: Desplegar MFA en todos los sistemas y aplicaciones para usuarios con accesos a servidores y datos sensibles, cubriendo al menos el 100% de cuentas administrativas en un plazo de 6 meses.
- Justificación: La ausencia de MFA expone a riesgos de accesos no autorizados y fraude interno, agravados por cuentas compartidas y revisiones inexistentes, como se evidencia en la verificación de controles .
- Activos críticos relacionados: Servidores (ID_0001, ID_0002), datos de clientes (ID_0020), base de datos (ID_0021) .
- Riesgos que mitiga: Acceso no autorizado a datos (top 2), fraude interno por privilegios (top 10), espionaje industrial (top 4).​
- Indicadores de éxito (KPI): 100% de cuentas administrativas con MFA activado (medido por auditoría trimestral); reducción del 50% en intentos de login fallidos (monitoreo logs) .
- Plazo: 6 meses 
- Prioridad: Alta.
- Principios CIA afectados: Confidencialidad (previene accesos indebidos), Integridad (protege contra modificaciones no autorizadas), Disponibilidad (mantiene accesos legítimos).​

### Objetivo 2: Desarrollar y desplegar programa integral de formación en ciberseguridad
- Descripción: Realizar formación anual obligatoria para el 100% del personal cubriendo temas esenciales: identificación de phishing y correos sospechosos, manejo seguro de datos sensibles, procedimientos de bloqueo automático de equipos (2 minutos de inactividad), apagado correcto al finalizar jornada, gestión robusta de contraseñas (mínimo 12 caracteres, prohibición de compartir, renovación cada 90 días), uso correcto del canal de notificación de incidentes para reportar alertas de malware, pérdida de dispositivos Dell Latitude o Xiaomi Redmi Note 14, borrado accidental de información y accesos no autorizados, prohibición de uso de USB no autorizados, protección física de equipos corporativos, y manejo de clasificación de información. Incluir módulos especializados para roles TIC y RRHH sobre gestión de accesos, DLP y controles avanzados, completando el primer ciclo en 4 meses.
- Justificación: La falta de concienciación causa errores humanos críticos como eliminación accidental de archivos y caída en ataques de phishing, con el 64% de controles humanos deficientes. Los empleados deben conocer procedimientos de notificación inmediata de incidentes para permitir respuesta rápida ante amenazas.
- Activos críticos relacionados: Dell Latitude 3440 (ID_0007, ID_0008), Dell Precision (ID_0009, ID_0010), Xiaomi Redmi Note 14, datos personales (ID_0020), información clasificada.
- Riesgos que mitiga: Phishing en puestos (top 7), eliminación accidental de archivos (top 5), robo de dispositivos (top 3), incidentes no reportados (vulnerabilidad 3), Shadow IT.
- Indicadores de éxito (KPI): 95% de tasa de completitud en formación (seguimiento por plataforma LMS); reducción del 40% en incidentes causados por errores humanos; aumento del 200% en incidentes reportados mediante canal de notificación.
- Plazo: 12 meses 
- Prioridad: Alta.
- Principios CIA afectados: Confidencialidad (mejora detección de amenazas), Integridad (evita errores en datos), Disponibilidad (reduce downtime por incidentes).

### Objetivo 3: Establecer estrategia de copias de seguridad 3-2-1 robusta
- Descripción: Implementar backups con regla 3-2-1 (3 copias, 2 medios, 1 offsite) para activos críticos, incluyendo pruebas mensuales de restauración, cubriendo servidores y datos en un plazo de 3 meses.
- Justificación: Copias insuficientes y sin pruebas exponen a pérdidas por ransomware y desastres, como el ataque previo, con controles parciales en backups .
- Activos críticos relacionados: Servidores (ID_0001, ID_0002), discos duros (ID_0013, ID_0014), base de datos (ID_0021) .
- Riesgos que mitiga: Ransomware en servidores (top 1), eliminación accidental (top 5), desastre natural (top 9).​
- Indicadores de éxito (KPI): 100% de cobertura en backups críticos (auditoría mensual); éxito en 95% de pruebas de restauración (reportes de simulación) .
- Plazo: 6 meses 
- Prioridad: Alta.
- Principios CIA afectados: Disponibilidad (recuperación rápida), Integridad (preservación de datos), Confidencialidad (copias seguras).​

### Objetivo 4: Desplegar controles técnicos de protección en estaciones de trabajo y equipos móviles
- Descripción: Implementar controles técnicos de seguridad en todos los equipos Dell Precision (escritorio), Dell Latitude 3440 (portátiles) y Xiaomi Redmi Note 14 (móviles). Los controles incluyen: configurar bloqueo automático tras 2 minutos de inactividad con apagado al fin de jornada; aplicar actualizaciones de sistema operativo Windows mediante WSUS; migrar a solución antivirus propia con capacidades anti-ransomware y alertas centralizadas al equipo TIC; deshabilitar puertos USB por defecto con proceso formal de autorización TIC y escaneo obligatorio; establecer requisitos de contraseñas de mínimo 12 caracteres con complejidad y renovación cada 90 días; implementar canal de notificación de incidentes (incidentes@empresa.com) para reportar alertas de malware, correos sospechosos, pérdida de dispositivos y accesos no autorizados; activar cifrado BitLocker en todos los portátiles Dell Latitude y configurar cifrado nativo en dispositivos Xiaomi antes de su entrega. Además, implementar controles específicos para equipos portátiles: MFA con passkey física con huella dactilar, VPN OpenVPN en servidor Ubuntu 24.04 LTS para conexiones remotas, solución MDM con capacidades de monitoreo y borrado remoto, y repositorio interno de software autorizado. Paralelamente, establecer sistema de clasificación de información con inventario de activos en CMDB (propietario, localización, clasificación, criticidad), cinco niveles de clasificación (Público, Interno, Confidencial, Sensible, Restringido), controles específicos por nivel (cifrado AES-256, MFA para acceso a nóminas y expedientes, DLP en repositorios cloud), gestión formal de accesos con altas/bajas por ticketing y revisión trimestral, contratos con proveedores cloud incluyendo cláusulas de seguridad, retención documental según obligaciones legales (facturación 6 años, nóminas 6 años, contratos 5 años) y eliminación segura registrada. Finalmente, formalizar controles para servicios cloud: lista blanca de aplicaciones autorizadas, MFA obligatorio, cifrado pre-cloud para información confidencial, backups 3-2-1 de datos cloud, y prohibición de Shadow IT.
- Justificación: Las vulnerabilidades críticas identificadas (ausencia de políticas formalizadas, contraseñas débiles, software desactualizado, equipos sin cifrado, ausencia de inventario) exponen a riesgos top como ransomware, robo de dispositivos, phishing, espionaje industrial y fraude interno. La madurez organizativa del 35% requiere controles técnicos completos y procedimientos formalizados para proteger activos críticos.
- Activos críticos relacionados: Equipos Dell Precision/Latitude 3440, Xiaomi Redmi Note 14, infraestructura (routers ID_0003-ID_0006), servicios cloud (ID_0018), datos financieros, información clasificada.
- Riesgos que mitiga: Accesos no autorizados, ransomware (top 1), robo de dispositivos (top 3), phishing (top 7), espionaje industrial (top 4), fraude interno (top 10), software no autorizado, pérdida de datos personales.
- Indicadores de éxito (KPI): 100% de equipos con controles técnicos implementados (auditoría mensual); 100% de empleados capacitados en procedimientos de seguridad (seguimiento HR); cumplimiento del 80% en auditorías internas; inventario CMDB completo con clasificación de activos.
- Plazo: 6 meses (controles técnicos urgentes 3 meses, sistema de clasificación 6 meses)
- Prioridad: Alta (controles técnicos), Media (clasificación información).
- Principios CIA afectados: Confidencialidad (bloqueo, cifrado, USB, contraseñas, clasificación), Integridad (actualizaciones, antivirus, DLP), Disponibilidad (gestión incidentes, MDM, backups cloud).​

### Objetivo 5: Implementar segmentación de red y firewall avanzado
- Descripción: Desplegar VLANs y firewalls por departamentos para aislar tráfico, cubriendo servidores y WiFi, con configuración completa en 5 meses y pruebas de penetración.
- Justificación: Cableado expuesto y falta de segmentación propagan ataques, agravados por firewall parcial y madurez tecnológica baja (32%) .
- Activos críticos relacionados: Routers (ID_0003-ID_0006), red infraestructura, servicios cloud (ID_0018) .
- Riesgos que mitiga: Fallo en red (top 8), ransomware propagación (top 1), phishing (top 7).​
- Indicadores de éxito (KPI): 100% de departamentos segmentados (mapa de red auditado); reducción del 60% en tráfico no autorizado (logs firewall mensuales) .
- Plazo: 9 meses 
- Prioridad: Alta.
- Principios CIA afectados: Disponibilidad (aislamiento de fallos), Confidencialidad (control de tráfico), Integridad (prevención de intrusiones).​

### Objetivo 6: Desarrollar plan de continuidad del negocio (BCP)
- Descripción: Crear y probar BCP para operaciones críticas, definiendo RTO/RPO <4 horas para servidores y datos, con simulacro anual completado en 6 meses.
- Justificación: Sin planes de continuidad expone a interrupciones por desastres y ransomware, con controles de continuidad no implementados .
- Activos críticos relacionados: Instalaciones físicas, servidores (ID_0001-ID_0002), datos (ID_0020-ID_0021) .
- Riesgos que mitiga: Desastre natural (top 9), caída de servicios cloud (top 6), ransomware (top 1).​
- Indicadores de éxito (KPI): BCP aprobado y documentado (100% cobertura activos críticos); éxito en 90% de simulacro (reporte post-ejercicio) .
- Plazo: 12 meses 
- Prioridad: Media.
- Principios CIA afectados: Disponibilidad (recuperación operativa), Integridad (preservación procesos), Confidencialidad (continuidad segura).​

Mapa de relación Objetivos-Activos-Riesgos:
| Objetivo                             | Activos Críticos                                                        | Riesgos Principales                                  | Prioridad | Plazo            |
| ------------------------------------ | ----------------------------------------------------------------------- | ---------------------------------------------------- | --------- | ---------------- |
| Objetivo 1: Implementar MFA          | Servidores (ID_0001, ID_0002), Datos clientes (ID_0020)                 | Acceso no autorizado, Fraude interno, Espionaje      | Alta      | Corto (6 meses)  |
| Objetivo 2: Programa de formación    | Dispositivos móviles (ID_0007, ID_0008), Ordenadores (ID_0009, ID_0010) | Phishing, Eliminación accidental, Robo dispositivos  | Alta      | Medio (12 meses) |
| Objetivo 3: Estrategia backups 3-2-1 | Servidores (ID_0001, ID_0002), Discos (ID_0013, ID_0014)                | Ransomware, Eliminación accidental, Desastre natural | Alta      | Corto (6 meses)  |
| Objetivo 4: Formalizar políticas     | Infraestructura (routers ID_0003-ID_0006), Servicios cloud (ID_0018)    | Espionaje, Fraude interno                            | Media     | Corto (6 meses)  |
| Objetivo 5: Segmentación de red      | Routers (ID_0003-ID_0006), Red                                          | Fallo en red, Ransomware, Phishing                   | Alta      | Medio (9 meses)  |
| Objetivo 6: Plan BCP                 | Instalaciones, Servidores (ID_0001-ID_0002), Datos (ID_0020-ID_0021)    | Desastre natural, Caída cloud, Ransomware            | Media     | Largo (12 meses) |

## Controles Integrados de Clasificación y Protección de Información

El PDS integra controles completos para gestión y protección de activos de información, implementados en coordinación con los objetivos estratégicos definidos:

**Sistema de clasificación y controles asociados:**
- Implementación de CMDB centralizado documentando propietario, localización, clasificación y criticidad de todos los activos (plazo: 30 días).
- Cinco niveles de clasificación: Público, Interno, Confidencial, Sensible, Restringido. Asignación por propietarios funcionales con aprobación del Responsable de Seguridad (plazo: 45 días).
- Etiquetado obligatorio: metadatos en documentos digitales, sellos en documentos físicos.
- Controles técnicos por nivel: cifrado AES-256 para Confidencial/Sensible, MFA para accesos sensibles (RRHH/Legal/Marketing), vault corporativo para credenciales con acceso individual y MFA, DLP en repositorios cloud, logging con retención según criticidad (6 meses para Confidencial).
- MDM en portátiles y móviles con cifrado BitLocker obligatorio y borrado remoto (plazo: 60 días).
- USB deshabilitado por defecto con excepciones registradas y autorización TIC formal.
- Prohibición estricta de Shadow IT (servicios personales no autorizados como Dropbox, Google Drive o WhatsApp personales).
- Gestión formal de accesos: altas/bajas por ticketing, revocación en 24h, revisión trimestral de permisos.
- Retención documental conforme obligaciones legales: facturación 6 años, nóminas 6 años, contratos 5 años. Eliminación segura registrada por TIC.
- Contratos con proveedores cloud incluyendo cláusulas de seguridad (SLA, notificación brechas, cifrado, localización), con revisión anual por TIC y Legal.
- Evidencias operativas: capturas de configuración, informes de restore, autorizaciones firmadas, registros vault, reportes DLP.

**Vinculación con objetivos estratégicos:**
- Objetivo 1 (MFA): Obligatorio para accesos a vault y sistemas con información Confidencial/Sensible.
- Objetivo 2 (Formación): Incluye módulos sobre clasificación, uso de vault, prohibición Shadow IT, retención/eliminación.
- Objetivo 3 (Backups): Cobertura prioritaria para información Confidencial y superiores con pruebas de restauración.
- Objetivo 4: Implementación completa del sistema de clasificación con todos los controles técnicos asociados.

Los responsables (TIC, RRHH, Legal, Responsable de Seguridad) se asignan en la Matriz RACI con entrega de evidencias en plazos establecidos.

## **3 Estrategia de la Empresa** {#3-estrategia-de-la-empresa}

- Digitalización  
  - Apostamos por realizar la mayoría de los trabajos por Internet, apoyandonos en la página web y RRSS para amplificar presencia y captar clientes  
  - Dependemos más de la nube, herramientas y proveedores externos, ampliando la superficie a riesgos  
  - Buscamos digitalizar procesos y relaciones con los clientes y los proveedores, mejorando la eficiencia  
- Protección y gestión de riesgos  
  - Implementaremos una gestión integral de seguridad de la información y la infraestructura TIC, que abarcaría medidas técnicas, organizativas y procedimentales para proteger el CID de datos y sistemas  
  - Se adoptarán controles como antivirus actualizados, segmentación de red, políticas de cifrado, 2FA y monitorización contínua  
  - Mantenemos planes de continuidad de negocio y recuperación para minimizar el impacto de incidentes  
- Gobierno y cumplimiento  
  - Se crearán políticas de seguridad aprobadas y formalizadas, con segregación de funciones y revisión periódica de accesos y privilegios  
- Se gestionan contratos con proveedores con acuerdos a nivel de servicio, y pruebas de vulnerabilidades  
- Se fomentará la formación y concienciación continua del personal en temas de ciberseguridad  
- Revisión y mejora  
  - El análisis de riesgos se realiza de manera periódica y tras incidentes, con informes a dirección para asegurar la mejora continua y la adaptación a cambios tecnológicos y/o del entorno  
  - Se incluirán auditorías de seguridad y tests de pentesting para identificar y corregir fallos  
  - Se contempla un ecosistema de seguridad, inteligencia de amenazas y gestión de incidentes para anticipar ataques y responder adecuadamente.

## **4 Definición de Proyectos e Iniciativas** {#4-definición-de-proyectos-e-iniciativas}

- Proyectos:  
  - Plan de continuidad del negocio y plan de recuperación ante incidentes: Garantizar la operación de la empresa ante incidentes. Define como mantener los servicios vitales y recuperar la normalidad lo más rápido posible  
  - Monitorización y gestión de incidentes: Implantar sistemas de vigilancia en tiempo real para detectar comportamientos anómalos y establecer procedimientos con equipos para respuesta rápida a incidentes  
  - Inteligencia de amenazas: Adoptar enfoques para anticiparse a las tácticas de ciberdelincuentes.  
  - Auditorías y pentesting periódicos: Revisar la eficacia de los controles y realizar pruebas de penetración simulando ataques para encontrar vulnerabilidades antes de que sean explotadas.  
  - Fortalecimiento de la seguridad del proveedor Web: Realizar un acuerdo a nivel de servicio para garantizar la seguridad de la información, definir responsabilidades y revisiones y actualizaciones periódicas  
- Iniciativas  
  - **Protección integral de estaciones de trabajo y equipos móviles**: Implementar controles técnicos de seguridad en todos los equipos Dell Precision, Dell Latitude 3440 y Xiaomi Redmi Note 14 en los próximos 3 meses. Responsable: Departamento TIC bajo supervisión de Hugo Flores Molina. Incluye: GPO para bloqueo automático tras 2 minutos y scripts de apagado fin de jornada; WSUS/Windows Update for Business para actualizaciones automáticas; adquisición e instalación de solución antivirus propia (evaluar Bitdefender/Kaspersky/ESET con capacidades anti-ransomware y alertas centralizadas); políticas de grupo para deshabilitar USB por defecto con proceso de autorización TIC; requisitos de contraseñas en Active Directory (12 caracteres, complejidad, renovación 90 días); creación de formulario y canal incidentes@empresa.com para notificación; despliegue masivo de BitLocker en portátiles Latitude y configuración de cifrado nativo en Xiaomi antes de entrega. Controles adicionales para portátiles: MFA con passkey física con huella dactilar, VPN OpenVPN en Ubuntu 24.04 LTS, MDM con borrado remoto, repositorio interno de software autorizado
  - **Sistema de clasificación y protección de información**: Implementar sistema completo de clasificación en todos los departamentos en los próximos 6 meses. Responsable: Departamento TIC bajo supervisión de Jose Luis Godoy. Incluye: crear CMDB con inventario completo (propietario, localización, clasificación, criticidad) en 30 días; definir y aprobar cinco niveles de clasificación (Público/Interno/Confidencial/Sensible/Restringido) con propietarios funcionales en 45 días; implementar etiquetado en documentos digitales mediante metadatos y sellos en documentos físicos en 60 días; desplegar controles por nivel incluyendo cifrado AES-256 para información Confidencial y Sensible, MFA para accesos de RRHH/Legal/Marketing a nóminas y expedientes, vault corporativo para gestión de credenciales, DLP en repositorios cloud, MDM en portátiles y móviles; formalizar proceso de gestión de accesos con altas/bajas por ticketing, revocación en 24h y revisión trimestral; establecer plazos de retención documental (facturación 6 años, nóminas 6 años, contratos 5 años) con eliminación segura registrada; prohibir Shadow IT y migrar servicios no autorizados a soluciones corporativas aprobadas con lista blanca de aplicaciones cloud autorizadas; incluir cláusulas de seguridad en contratos de proveedores cloud con revisión anual por TIC y Legal
  - Establecer calendarios de revisiones y tras incidentes para evaluación y actualización de riesgos y controles  
  - Reporte periódico a la dirección para toma de decisiones informativas, incluyendo cumplimiento de controles técnicos de protección mediante checklist y auditorías de clasificación con evidencias operativas (logs, NDAs, registros vault, informes DLP)
  - Gestión y formalización de políticas de seguridad complementarias (BYOD, acceso remoto, proveedores), procedimientos y responsabilidades

## **5 Clasificación y Priorización de los Proyectos** {#5-clasificación-y-priorización-de-los-proyectos}

Se establece según:

- Nivel de riesgo  
- Impacto en la continuidad  
- Coste-Beneficio  
- Requisitos legales

Prioridad alta

- Plan de continuidad de negocio y recuperación ante desastres: Esencial tras ataque de Ransomware, garantiza continuidad del negocio ante incidentes graves  
- Implementación de copias de seguridad al estilo 3-2-1 con pruebas periódicas.  
- Segmentación de red y firewall por departamentos: Reduce propagación de ataques y aisla incidentes.  
- Gestión de identidades y privilegios: Evitar accesos indebidos y abuso de cuentas privilegiadas, incluyendo MFA y revisión trimestral de permisos

Prioridad media

- Auditorías y pentesting periódicos  
- Inteligencias de amenazas  
- Políticas documentadas de seguridad

Se define por:

- Mitigar: Implementar controles y organizativos que reducen probabilidad y/o impacto  
- Transferir: Contratar seguros o externalizar servicios con acuerdos a nivel de servicio  
- Eliminar: Retirar aplicaciones o servicios innecesarios que sean difíciles de mitigar  
- Aceptar: Asumir riesgos menores donde el coste de arreglar sea más alto que el daño potencial.

## **6 Aprobación del PDS** {#6-aprobación-del-pds}

La aprobación del Plan Director de Seguridad (PDS) es un paso fundamental que garantiza el compromiso institucional, la asignación de recursos y la legitimidad para implementar los proyectos y controles de seguridad definidos.​

Requisitos para la aprobación

- El PDS debe ser conocido y aprobado formalmente por la dirección de la organización.  
- Presentación a la dirección: El Responsable de Seguridad prepara y presenta el PDS completo ante el Consejo de Administración o la Alta Dirección, incluyendo contexto, alcance, análisis de riesgos, objetivos, proyectos priorizados y recursos necesarios.​  
- Revisión del análisis de riesgos: La dirección valida el inventario de activos críticos, las amenazas identificadas, las vulnerabilidades detectadas y la evaluación cuantitativa del riesgo.  
- Aprobación de políticas y procedimientos: Las políticas de seguridad, procedimientos operativos y controles técnicos deben ser aprobados formalmente, asegurando su obligatoriedad y difusión en toda la organización.​

Documentación requerida

- Informe ejecutivo con resumen del estado actual de la seguridad, riesgos principales y estrategia propuesta.  
- Análisis detallado de activos críticos, amenazas, vulnerabilidades y riesgos calculados con probabilidad e impacto.  
- Portafolio de proyectos e iniciativas priorizados con responsables, plazos y presupuestos estimados.  
- Roles y responsabilidades definidos para la ejecución del PDS en cada departamento y sede.

Proceso de aprobación

- Revisión técnica: Se validan la viabilidad técnica y operativa de los controles propuestos.  
- Evaluación económica: Se analiza el coste-beneficio de las inversiones requeridas y prioriza según el presupuesto   
- Decisión de la dirección: La Alta Dirección aprueba el PDS, los umbrales de riesgo aceptable y las estrategias de tratamiento (mitigar, transferir, eliminar o aceptar).  
- Comunicación oficial: Se emite una resolución o comunicado interno firmado por la dirección que formaliza la aprobación, establece la obligatoriedad del cumplimiento y designa responsables principales.​

## **7 Puesta en Marcha del PDS** {#7-puesta-en-marcha-del-pds}

Es la fase de implementación que convierte la planificación en acciones concretas para mejorar la seguridad de la organización. Esta etapa se ejecuta después de obtener la aprobación formal de la dirección.

Se realizan las siguientes actividades:  
Actividades Principales  
Presentación y Comunicación: La primera acción consiste en realizar una presentación general del Plan Director de Seguridad a todas las personas involucradas en la ejecución de los diferentes proyectos. Esta presentación debe informar sobre los trabajos a realizar, los resultados esperados y la importancia del compromiso de cada participante. 

Asignación de Recursos y Responsables  
Cada proyecto definido en el PDS debe tener asignado un responsable o coordinador específico, con los recursos humanos y materiales necesarios para su ejecución

Gestión de Proyectos  
La implementación requiere aplicar una metodología de gestión de proyectos adecuada que permita ejecutar todas las actividades en tiempo y forma. Según los documentos de la empresa, las tareas asociadas deben especificar claramente los responsables de cada acción,

Consideraciones Específicas para la Empresa  
La puesta en marcha debe priorizar proyectos relacionados con las vulnerabilidades críticas identificadas.

Seguimiento y Mejora Continua

Una vez iniciada la implementación, el PDS debe contemplar mecanismos de seguimiento continuo que incluya revisiones del progreso, evaluación de la eficacia de las medidas implantadas y ajustes según cambios en el entorno de amenazas o en la estrategia empresarial. 

## **8 Tareas Asociadas y Responsables** {#8-tareas-asociadas-y-responsables}

Responsables

Responsable de Seguridad  
El Responsable de Seguridad coordina la ejecución, revisión y difusión de resultados del análisis de riesgos y de todo el PDS. Esta figura centraliza la coordinación de las subcontratas de seguridad en las distintas sedes y actúa como enlace con la dirección.

Equipos TIC y Seguridad  
Los equipos técnicos son responsables de la revisión periódica del análisis de riesgos (anualmente) y de la implementación de controles técnicos. 

Departamento de Administración/TIC  
Este departamento debe encargarse de la actualización del inventario de activos de forma semestral o anual.  
Incluye el inventario por sede de PCs, portátiles, móviles, impresoras, servidores y routers/WiFi.

Tareas  
Protección Integral de Estaciones de Trabajo y Equipos Móviles  
Responsable: Departamento TIC (bajo supervisión de Hugo Flores Molina).  
Tareas: Configurar GPO para bloqueo automático tras 2 minutos de inactividad en todos los Dell Precision y Latitude 3440. Implementar Windows Update for Business o WSUS para gestión centralizada de actualizaciones automáticas. Adquirir solución antivirus de gestión propia con capacidad anti-ransomware (evaluar Bitdefender GravityZone, Kaspersky Endpoint, ESET Protect), instalar en todos los equipos con consola centralizada de alertas TIC y actualización diaria de firmas. Deshabilitar puertos USB por defecto mediante GPO, establecer proceso de autorización explícita TIC con escaneo obligatorio previo. Configurar requisitos robustos de contraseñas en Active Directory (mínimo 12 caracteres, complejidad habilitada, caducidad 90 días, historial 12 contraseñas), difundir prohibición de compartir y anotar visiblemente. Crear canal de notificación de incidentes multi-formato (email incidentes@empresa.com, formulario web, extensión telefónica), capacitar a empleados para reportar alertas de malware, correos sospechosos, pérdida de equipos Dell Latitude o Xiaomi Redmi Note 14, borrado accidental, accesos no autorizados. Desplegar cifrado BitLocker en todos los Dell Latitude 3440 con gestión centralizada de claves de recuperación, activar cifrado nativo en Xiaomi Redmi Note 14 antes de entrega. Implementar controles adicionales para portátiles: MFA con passkey física con huella dactilar, VPN OpenVPN en servidor Ubuntu 24.04 LTS para conexiones remotas, MDM con capacidades de borrado remoto, repositorio interno de software autorizado. Auditoría mensual mediante checklist operativo.

Formalización de Políticas de Seguridad Complementarias  
Responsable: Responsable de Seguridad con apoyo del Departamento Legal.   
Tareas: Redactar, aprobar y difundir políticas complementarias de seguridad: acceso remoto, BYOD, gestión de proveedores, uso aceptable de recursos tecnológicos, teletrabajo. Incluir roles y responsabilidades por sede y departamento

Mejora del Control sobre la Página Web Externalizada  
Responsable: Departamento TIC en coordinación con el proveedor externo.   
Tareas: Establecer SLAs, realizar escaneos periódicos, coordinar parches con el proveedor, exigir informes de estado y auditorías de vulnerabilidades. Integrar alertas de seguridad web con el nuevo sistema centralizado de antivirus propio.

Sistema de Clasificación y Protección de Información  
Responsable: Departamento TIC (bajo supervisión de Jose Luis Godoy).  
Tareas: **Fase 1 - Inventario (30 días)**: Crear CMDB centralizado documentando todos los activos de información con propietario, localización, clasificación y criticidad. Incluir nóminas (RRHH), expedientes clientes (Legal), CMS web/tienda (Marketing), datos financieros, contratos, propiedad intelectual. **Fase 2 - Clasificación (45 días)**: Asignar niveles de clasificación (Público/Interno/Confidencial/Sensible/Restringido) con propietarios funcionales y aprobación del Responsable de Seguridad. Documentar justificación de impacto sobre Confidencialidad, Integridad y Disponibilidad. **Fase 3 - Etiquetado (60 días)**: Implementar etiquetado mediante metadatos en documentos digitales y sellos en documentos físicos. Capacitar a departamentos sobre uso correcto del sistema de clasificación. **Fase 4 - Controles técnicos (6 meses)**: Desplegar MFA para accesos a nóminas (RRHH), expedientes clientes (Legal) y CMS (Marketing); implementar vault corporativo con acceso individual y MFA para gestión de credenciales; activar cifrado AES-256 en reposo para información Confidencial y Sensible; configurar DLP en repositorios cloud con bloqueo o cifrado automático de transferencias; desplegar MDM en portátiles y móviles con cifrado BitLocker y borrado remoto; deshabilitar USB por defecto con registro formal de excepciones. **Fase 5 - Gestión de accesos**: Formalizar proceso de altas y bajas mediante ticketing con revocación en 24h; programar revisiones trimestrales de permisos; configurar logging con retención según criticidad (6 meses para Confidencial). **Fase 6 - Retención y Eliminación**: Implementar plazos de retención documental según obligaciones legales (facturación 6 años, nóminas 6 años, contratos 5 años); crear proceso de eliminación segura verificable con registro por TIC. **Fase 7 - Proveedores Cloud**: Revisar y actualizar contratos cloud incluyendo cláusulas de seguridad (SLA, notificación de brechas, cifrado, localización de datos); auditoría anual por TIC y Legal. **Fase 8 - Prohibición de Shadow IT**: Prohibir uso de servicios personales no autorizados (Dropbox personal, Google Drive personal, WhatsApp personal); migrar datos a soluciones corporativas aprobadas con lista blanca.

Formación y Concienciación en Ciberseguridad y Procedimientos de Protección  
Responsable: Departamento RRHH en colaboración con Responsables de Seguridad (Hugo Flores Molina y Jose Luis Godoy). 
Tareas: Desarrollar programa continuo de formación obligatoria que incluya: procedimientos de protección de estaciones de trabajo (bloqueo automático 2 min, apagado correcto fin de jornada, gestión robusta de contraseñas 12 caracteres sin compartir, prohibición de USB no autorizados, notificación inmediata de incidentes a TIC, protección física de equipos Dell y Xiaomi); sistema de clasificación de información (niveles y su uso, etiquetado correcto de documentos, uso de vault corporativo para credenciales, prohibición estricta de Shadow IT, procedimientos de retención y eliminación segura, gestión formal de accesos); identificación de ataques de phishing y técnicas de ingeniería social; políticas de teletrabajo y uso aceptable de recursos tecnológicos; manejo seguro de información confidencial; proceso disciplinario por incumplimiento. Reducir el riesgo humano mediante sensibilización periódica y simulacros de phishing. Módulos específicos: onboarding obligatorio sobre clasificación y procedimientos, reciclaje anual, simulacros trimestrales de phishing, formación avanzada para propietarios y administradores de activos clasificados.

Implementación de Copias de Seguridad Robustas  
Responsable: Empleados TIC bajo supervisión del Responsable de Seguridad. Tareas: Implementar estrategia 3-2-1 (tres copias, dos medios diferentes, una fuera del sitio), con backups periódicos priorizando información clasificada como Confidencial y superiores, incluyendo pruebas mensuales de restauración. 

## **9 Conclusiones** {#9-conclusiones}

Las conclusiones del Plan Director de Seguridad (PDS) y el Análisis de Riesgos (AR) urgen a fortalecer la seguridad tras un ataque de *ransomware* y la transformación digital.

Vulnerabilidades Críticas:

- Deficiencias significativas en madurez de seguridad (36% global).  
- **Controles técnicos de protección de equipos pendientes de despliegue completo**: Se requiere implementación urgente de bloqueo automático tras 2 minutos de inactividad, actualización de sistemas operativos mediante WSUS, migración a antivirus de gestión propia con capacidades anti-ransomware y alertas centralizadas, deshabilitación de puertos USB por defecto con autorización explícita TIC, requisitos robustos de contraseñas (mínimo 12 caracteres con complejidad y renovación cada 90 días), canal de notificación de incidentes, y cifrado BitLocker en portátiles Dell Latitude 3440 con cifrado nativo en dispositivos Xiaomi Redmi Note 14. Controles adicionales para portátiles incluyen MFA con passkey física, VPN OpenVPN y MDM con borrado remoto.
- **Sistema de clasificación de información pendiente de implementación**: Ausencia de inventario formal en CMDB, falta de clasificación y etiquetado de activos de información (nóminas, expedientes clientes, CMS web, datos financieros), Shadow IT sin control (servicios personales no autorizados), gestión de accesos sin proceso formal (sin MFA para accesos sensibles, sin revisión trimestral), retención y eliminación documental sin registro formal, contratos cloud sin cláusulas de seguridad. Requiere despliegue de cinco niveles de clasificación (Público/Interno/Confidencial/Sensible/Restringido) con controles específicos por nivel en 6 meses.
- Falta de control sobre la seguridad de la web externalizada, crítica para el negocio.

Riesgos Prioritarios:

- **Ransomware sobre servidor de archivos (Calificación 20)**: Requiere copias de seguridad robustas (estrategia 3-2-1), solución antivirus de gestión propia con capacidades anti-ransomware y alertas centralizadas al equipo TIC, y segmentación de red. Implementación urgente en todos los equipos Dell Precision, Dell Latitude 3440 y Xiaomi Redmi Note 14.  
- **Dispositivos móviles sin protección (Calificación 12)**: Portátiles Dell Latitude 3440 sin cifrado BitLocker y dispositivos Xiaomi Redmi Note 14 sin cifrado nativo activado. Se requiere cifrado obligatorio antes de entrega a empleados. Necesitan solución MDM complementaria con capacidades de borrado remoto.  
- **Accesos no autorizados por falta de bloqueo automático**: Se debe configurar bloqueo tras 2 minutos de inactividad y apagado correcto al final de jornada en todos los equipos Dell.  
- **USB como vector de infección**: Deshabilitar puertos USB por defecto, requiriendo autorización explícita del departamento TIC y escaneo obligatorio de malware previo a su uso. 

Controles Actuales:

- Salvaguardas básicas (copias realizadas por TIC, antivirus subcontratado en transición a gestión propia, firewall, cumplimiento RGPD) son insuficientes.  
- Se requiere migración urgente a solución antivirus propia con capacidades anti-ransomware y alertas centralizadas al equipo TIC.  
- Copias de seguridad actuales carecen de redundancia, pruebas periódicas de restauración y almacenamiento offsite.  
- Dispositivos Dell Latitude 3440 y Xiaomi Redmi Note 14 sin cifrado requieren activación inmediata de BitLocker y cifrado nativo respectivamente.  
- Control de puertos USB inexistente requiere deshabilitación por defecto con proceso de autorización explícita TIC y escaneo de malware.  
- Políticas de contraseñas débiles deben fortalecerse estableciendo mínimo 12 caracteres, complejidad habilitada y renovación cada 90 días.  
- Bloqueo de sesión inexistente debe configurarse a 2 minutos de inactividad en todos los equipos Dell.

- Estrategia de Tratamiento de Riesgos:

El PDS propone mitigación (controles técnicos/organizativos), transferencia (ciberseguros) y aceptación (riesgos bajos). Medidas clave: Plan de Continuidad de Negocio (BCP)/Recuperación ante Desastres (DRP), monitorización, inteligencia de amenazas, auditorías y *pentesting*.

- Necesidad de Responsable de Seguridad:

Es vital el compromiso formal de la dirección, aprobación del Consejo y comunicación a empleados. Se requiere un Responsable de Seguridad con roles claros, revisión anual y seguimiento continuo.

- Inversión:

La protección exige inversión significativa en RR.HH., tecnología y formación. **Proyectos prioritarios inmediatos**: 
(1) **Despliegue técnico completo de controles de protección** en todos los equipos Dell Precision, Dell Latitude 3440 y Xiaomi Redmi Note 14 (presupuesto estimado: antivirus propio €5.000-10.000/año, licencias BitLocker incluidas en Windows Pro, tiempo TIC 120 horas), 
(2) copias de seguridad 3-2-1, 
(3) formación obligatoria en procedimientos de seguridad incluyendo canal de notificación de incidentes y concienciación antiphishing, 
(4) control de seguridad web externalizada. **Auditoría mensual de cumplimiento mediante checklist operativo**.

## **10 Bibliografía** {#10-bibliografía}

DeltaProtect. (s. f.). *Seguridad de la información*. Recuperado de [https://www.deltaprotect.com/blog/seguridad-de-la-informacion\#:\~:text=y%20t%C3%A9cnicas%20preventivas.-,Confidencialidad,vea%20comprometida%20en%20ning%C3%BAn%20momento](https://www.deltaprotect.com/blog/seguridad-de-la-informacion#:~:text=y%20t%C3%A9cnicas%20preventivas.-,Confidencialidad,vea%20comprometida%20en%20ning%C3%BAn%20momento)  
INCIBE. (s.f.). \[PDF de\] **Plan Director de Seguridad**. Recuperado de [https://www.incibe.es/sites/default/files/contenidos/dosieres/metad\_plan-director-seguridad.pdf](https://www.incibe.es/sites/default/files/contenidos/dosieres/metad_plan-director-seguridad.pdf)  
Godoy, J. L., Flores, H., Maye, M., & Pérez, J. (s.f.). ***ANÁLISIS DE RIESGOS*** **(IS-1.a.02-G4)** \[Documento de Google Docs\]. Recuperado de  
[https://docs.google.com/document/d/17WbqCxKJtDcLVol34xQOQEWgQmWIIwEG/edit\#heading=h.n3yrf6nruwky](https://docs.google.com/document/d/17WbqCxKJtDcLVol34xQOQEWgQmWIIwEG/edit#heading=h.n3yrf6nruwky)

*Google Docs*. [https://docs.google.com/spreadsheets/d/1LooguRDXkUfdVyXu1uhncwL9-uWAt6wz/edit?gid=178148090\#gid=178148090](https://docs.google.com/spreadsheets/d/1LooguRDXkUfdVyXu1uhncwL9-uWAt6wz/edit?gid=178148090#gid=178148090)
