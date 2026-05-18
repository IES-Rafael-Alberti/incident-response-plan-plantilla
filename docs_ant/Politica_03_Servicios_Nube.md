# Política 03: Seguridad en Servicios en la Nube y Aplicaciones

**Política asociada**: Política 03 - Seguridad en Servicios en la Nube y Aplicaciones
**Versión**: 1.0  
**Fecha de auditoría**: 22/11/2025  
**Auditor**: Juan Pérez Ortega  
**Empresa**: Security S.L. (ambas sedes)
**Responsable**: Responsable de Seguridad

---

## Índice de Contenidos

1. [Propósito](#1-propósito)
2. [Alcance](#2-alcance)
3. [Medidas Propuestas](#3-medidas-propuestas)
    - 3.1. [Uso exclusivo de aplicaciones autorizadas](#31-uso-exclusivo-de-aplicaciones-autorizadas)
    - 3.2. [Control de acceso (MFA)](#32-control-de-acceso-mfa)
4. [Notificación de incidentes de seguridad](#4-notificación-de-incidentes-de-seguridad)
5. [Cifrado de la información](#5-cifrado-de-la-información)
6. [Copias de seguridad](#6-copias-de-seguridad)
7. [Sanciones](#7-sanciones)

---

## 1. Propósito

El propósito de esta política es establecer las directrices para el uso seguro de los servicios en la nube (**SaaS, PaaS, IaaS**(Software as a Service, Platform as a Service, Infrastructure as a Service)) en **Security S.L.**, garantizando la protección de los activos críticos identificados en el PDS (ID_0018, ID_0017, ID_0020) frente a riesgos de acceso no autorizado, fugas de información (_Shadow IT_) y pérdida de datos por _ransomware_.

## 2. Alcance  

Esta política aplica a:

- **Personal**: Todos los empleados, directivos y colaboradores externos con acceso a sistemas.
- **Servicios**: Todas las aplicaciones y servicios en la nube contratados por la empresa.
- **Dispositivos**: Equipos corporativos y personales autorizados para acceder a datos en la nube.

### 2.1. Escenarios de Riesgo (PDS)

Esta política mitiga los siguientes riesgos críticos identificados en el Análisis de Riesgos del Plan Director de Seguridad:

| Riesgo | Activo Afectado | Nivel |

| :--- | :--- | :--- |

| **1. Acceso no autorizado** | Datos Clientes | **CRÍTICO** |

| **2. Fuga de información** | Servicios Cloud | **ALTO** |

| **3. Pérdida de datos** | Información Corporativa | **CRÍTICO** |

| **4. Caída de servicio** | Web| **ALTO** |


## 3. Medidas Propuestas

### 3.1. Uso exclusivo de aplicaciones autorizadas

Se prohíbe el uso de cualquier aplicación en la nube que no esté incluida en el **Inventario de Software Autorizado** ("Lista Blanca"). Todo empleado debe consultar dicha lista en la Intranet antes de usar una herramienta. Si se requiere una nueva, se debe solicitar validación técnica al Departamento TIC.

### 3.2. Control de acceso (MFA)

Es obligatorio activar el **Doble Factor de Autenticación (MFA)** para acceder a cualquier servicio corporativo en la nube (Correo, CRM, Almacenamiento). Está prohibido compartir credenciales o reutilizar contraseñas personales.

## 4. Notificación de incidentes de seguridad

Cualquier anomalía detectada (archivos desaparecidos, correos de inicio de sesión sospechosos, etc.) debe ser comunicada de inmediato al **CAU** o al **Responsable de Seguridad**. El Departamento TIC procederá al bloqueo preventivo de la cuenta y al cambio forzoso de credenciales.

## 5. Cifrado de la información

Toda información clasificada como **Confidencial** o que contenga **Datos Personales** (clientes/empleados) debe ser cifrada **antes** de subirse a la nube, salvo que el proveedor garantice contractualmente un cifrado gestionado por el cliente que asegure la confidencialidad incluso en caso de brecha del proveedor.

## 6. Copias de seguridad

Para mitigar el riesgo de _ransomware_ sincronizado o fallos del proveedor, el Departamento TIC realizará **copias de seguridad periódicas** (estrategia 3-2-1) de todos los datos alojados en la nube hacia un repositorio externo e independiente (local u otra nube).

## 7. Sanciones

El incumplimiento de esta política, especialmente el uso deliberado de aplicaciones no autorizadas para tratar datos sensibles o la desactivación de las medidas de seguridad (MFA), será considerado falta grave y podrá conllevar medidas disciplinarias conforme a la normativa laboral vigente.

---


