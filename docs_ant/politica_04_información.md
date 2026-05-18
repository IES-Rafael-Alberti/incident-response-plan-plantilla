**Versión**: 1.0  
**Fecha de aprobación**: 24/11/2025  
**Fecha de última revisión**: 24/11/2025  
**Responsable**: Jose Luis Godoy  

# Política 04 — Clasificación y Manejo de la Información

## Índice de Contenidos

1. [Clasificación de la información](#1-clasificación-de-la-información)
    - 1.1. [Antecedentes](#11-antecedentes)
    - 1.2. [Objetivos](#12-objetivos)
    - 1.3. [Ejemplos operativos (detallados)](#13-ejemplos-operativos-detallados)
    - 1.4. [Reglas operativas y controles mínimos](#14-reglas-operativas-y-controles-mínimos)
2. [Roles y responsabilidades](#2-roles-y-responsabilidades)
3. [Procedimiento de clasificación y ciclo de vida](#3-procedimiento-de-clasificación-y-ciclo-de-vida)
4. [Retención, eliminación y evidencias](#4-retención-eliminación-y-evidencias)
5. [Accesos, auditoría y métricas para Dirección](#5-accesos-auditoría-y-métricas-para-dirección)
6. [Gestión de incidentes (específico)](#6-gestión-de-incidentes-específico)
7. [Proveedores y transferencias externas](#7-proveedores-y-transferencias-externas)
8. [Formación y cumplimiento](#8-formación-y-cumplimiento)
9. [Revisión y vigencia](#9-revisión-y-vigencia)
10. [Referencias](#10-referencias)

---

## 1. CLASIFICACIÓN DE LA INFORMACIÓN

### 1.1. Antecedentes
Esta política concreta cómo gestionamos la información en **Security SL** (150 empleados, 2 sedes, trabajo híbrido). Se aplica a servidores locales (correo, archivos, aplicaciones), servicios cloud contratados, CMS de la web/tienda, CRM/ERP y dispositivos corporativos. La clasificación se implanta tras incidentes de seguridad recientes y en el marco del PDS.

### 1.2. Objetivos
* Implantar clasificación práctica y verificable en todos los activos críticos.
* Asignar propietarios funcionales y plazos de implementación de controles técnicos.
* Definir evidencias verificables que Dirección puede solicitar.
* Reducir riesgo de fuga, pérdida o indisponibilidad conforme a RGPD.

### 1.3. Ejemplos operativos (detallados)

A continuación se detallan los controles específicos para los activos críticos identificados:

#### A. Nóminas (Confidencial)

| Componentes | Responsable | Controles Mínimos | Plazo | Evidencias para Dirección |
| :--- | :--- | :--- | :--- | :--- |
| • Aplicación nóminas<br>• PDFs de nóminas<br>• Históricos | **RRHH**<br>**TIC** | • MFA<br>• Logging de accesos (6 meses) | **30 días** | • Lista firmada de usuarios<br>• Captura configuración MFA<br>• Informe mensual de accesos<br>• Comprobante backup y test restore |

#### B. Gestor CMS Web (Interno → Confidencial)

| Componentes | Responsable | Controles Mínimos | Plazo | Evidencias para Dirección |
| :--- | :--- | :--- | :--- | :--- |
| • Panel administración<br>• Base de datos clientes | **Marketing**<br>**TIC** | • Cuentas en vault corporativo<br>• MFA<br>• Admin solo vía VPN o IPs autorizadas<br>• Firewall activo<br>• Backups | **15–30 días** | • Registro en vault<br>• Logs firewall<br>• Logs de acceso<br>• Informe de backups |

#### C. Expedientes Clientes (Confidencial / Sensible)

| Componentes | Responsable | Controles Mínimos | Plazo | Evidencias para Dirección |
| :--- | :--- | :--- | :--- | :--- |
| • Datos de salud<br>• Datos bancarios<br>• Datos fiscales | **Legal**<br>**Resp. Seguridad** | • Repositorio cloud aprobado<br>• DLP (Prevención Pérdida Datos)<br>• Cifrado TLS<br>• Transferencias en plataforma cifrada | **45 días** | • Inventario de datasets<br>• Alertas DLP<br>• Logs de transferencias |

### 1.4. Reglas operativas y controles mínimos
* **Clasificación obligatoria:** Todo activo debe tener etiqueta (*Público, Interno, Confidencial, Sensible/Restringido*). Etiqueta aprobada por propietario y Responsable de Seguridad.
* **Almacenamiento autorizado:** Sólo en recursos corporativos aprobados por TIC. **Prohibido** uso de cuentas personales para información corporativa.
* **Cifrado:** Confidencial (recomendado) / Sensible (obligatorio). Herramienta corporativa certificada.
* **Backups:** Plan por clasificación (definido por propietario): frecuencia, retención y ubicación offsite cifrada. Pruebas documentadas.
* **Acceso:** Principio de mínimos privilegios, MFA para acceso remoto y cuentas privilegiadas, revisiones trimestrales de permisos.
* **Soportes físicos:** Inventario obligatorio, cifrado y custodia, destrucción física con registro, portátiles corporativos cifrados y gestionados por MDM.
* **Metadatos:** Eliminar metadatos antes de publicación externa.

---

## 2. ROLES Y RESPONSABILIDADES

* **Dirección:** Aprobar política, asignar recursos, revisar informes mensuales.
* **Responsable de Seguridad:** Gobernanza, aprobación de clasificaciones excepcionales, reporte mensual a Dirección.
* **Responsable de Protección de Datos:** Supervisión RGPD, validación de transferencias y DPIAs.
* **Responsable TIC:** Implementación técnica, backups, MDM, logs, pruebas de restore.
* **Propietarios funcionales** (RRHH, Finanzas, Marketing, Legal, etc.): Asignación de clasificación, aprobación de accesos y revisión trimestral.
* **Usuarios:** Cumplir política y reportar incidentes en canal definido.

---

## 3. PROCEDIMIENTO DE CLASIFICACIÓN Y CICLO DE VIDA


1.  **Inventario inicial:** TIC registra el activo en CMDB (campos: nombre, propietario, localización, clasificación propuesta, criticidad, RTO/RPO). *Plazo piloto: 30 días.*
2.  **Asignación:** Propietario evalúa impacto y asigna clasificación; Responsable Seguridad aprueba. *Plazo: 15 días tras inventario.*
3.  **Implementación controles:** TIC aplica cifrado, ACLs, backup y DLP según nivel. *Plazo: 30 días por activo crítico.*
4.  **Revisión:** Propietarios revisan clasificación y accesos cada 12 meses o tras cambio significativo.
5.  **Eliminación:** Aplicar calendario de retención y borrar con procedimiento seguro; registrar evidencia.

---

## 4. RETENCIÓN, ELIMINACIÓN Y EVIDENCIAS

* **Calendario propuesto:**
    * Facturación: 6 años.
    * Nóminas: 6 años.
    * Contratos: 5 años tras fin de relación (salvo obligación legal superior).
* **Eliminación segura:** Borrado lógico verificable y destrucción física con certificado. TIC genera registro de eliminación (activo, responsable, método, fecha).
* **Evidencias:** Registros de backup, logs de acceso, capturas de configuración, listas firmadas de accesos, resultados de tests de restore, registros NDAs y reportes DLP.

---

## 5. ACCESOS, AUDITORÍA Y MÉTRICAS PARA DIRECCIÓN

* **Altas/bajas:** Solicitud por ticket (RRHH→TIC) con revocación efectiva <24 h tras baja.
* **Revisiones:** Listas de accesos firmadas por propietario cada trimestre.
* **Logs:** Conservar accesos a recursos *Confidencial/Sensible* durante 12 meses mínimo.
* **Métricas mensuales a Dirección:**
    * % cuentas con MFA.
    * % endpoints con EDR y cifrado.
    * Tiempo medio revocación accesos.
    * Nº restores probados/exitosos por semestre.
    * Alertas DLP críticas y NDAs vigentes.
* **Informes:** Paquete mensual con métricas y anexos de evidencias; incidentes críticos con entrega de informe preliminar en 24 h.

---

## 6. GESTIÓN DE INCIDENTES (ESPECÍFICO)

* **Notificación:** Cualquier incidente que afecte confidencialidad/integridad/disponibilidad se notifica al Responsable de Seguridad y al Responsable de Protección de Datos en **2 h**.
* **Respuesta:** TIC aplica playbook correspondiente (ransomware, fuga de datos, pérdida de dispositivo).
* **Informes a Dirección:**
    * *Preliminar (24 h):* Cronología, activos afectados, contención, plan de restauración.
    * *Final (15 días):* Lecciones aprendidas y medidas correctoras.
* **Notificación RGPD:** El Responsable de Protección de Datos coordina la notificación a la AEPD y a las personas afectadas si procede, dentro de los plazos legales.

---

## 7. PROVEEDORES Y TRANSFERENCIAS EXTERNAS

* **Requisitos contractuales:** NDA, cláusulas de seguridad (SLA, subcontratación, notificación de brechas), acuerdo de tratamiento de datos si aplica.
* **Comprobaciones técnicas:** Cifrado en tránsito y en reposo, control de accesos, localización de datos (evitar transferencias fuera de la UE sin garantías).
* **Verificación:** Pen‑test o certificado anual del proveedor y revisión por Legal/TIC antes de producción.

---

## 8. FORMACIÓN Y CUMPLIMIENTO

* **Formación obligatoria:** Onboarding + reciclaje anual (clasificación y manejo de información).
* **Simulacros:** Phishing trimestral y ejercicios de restauración anual.
* **Sanciones:** Incumplimientos se gestionan según normativa interna disciplinaria; incidencias repetidas revisadas por RRHH y Dirección.

---

## 9. REVISIÓN Y VIGENCIA

* **Revisión:** Anual o tras incidente significativo o cambio legal/tecnológico.
* **Responsable de revisión:** Jose Luis Godoy.
* **Versión y control documental:** Encabezado con versión, fecha y responsable; registro de cambios en el repositorio de políticas.

---

## 10. REFERENCIAS

* INCIBE — Políticas de seguridad para la pyme (clasificación).
* Reglamento (UE) 2016/679 (RGPD).
* Ley Orgánica 3/2018 (LOPDGDD).
* ISO/IEC 27001:2013 / 2022.
