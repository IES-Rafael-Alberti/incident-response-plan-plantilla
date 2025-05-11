### Playbook: Compromiso en la Cadena de Suministro

**Objetivo:** Detectar, investigar, contener y remediar incidentes por el compromiso de un proveedor de software, hardware o servicios (incluyendo cloud como Azure o herramientas de pentesting) que utiliza **Secure Shield Pentesting S.L.**

#### Investigar

1.  **Detección y Alerta Temprana:**
    *   **Notificaciones del Proveedor Comprometido:** El proveedor puede informar sobre una brecha o producto comprometido.
    *   **Alertas de Inteligencia de Amenazas:** Fuentes de inteligencia pueden reportar el compromiso de un software/servicio usado por **Secure Shield Pentesting S.L.**
    *   **Detección Interna (Anomalías):**
        *   Alertas de EDR/SIEM/Azure Sentinel que indiquen comportamiento malicioso originado por software de proveedor legítimo (ej. herramienta de pentesting actualizada que exfiltra datos).
        *   Tráfico de red inusual desde/hacia IPs del proveedor o infraestructura maliciosa.
        *   Comportamiento inesperado de software/hardware de terceros (ej. actualizaciones automáticas que instalan malware).
        *   Logs de auditoría de Azure mostrando cambios no autorizados por una aplicación de terceros integrada.

2.  **Validación y Evaluación del Impacto en Secure Shield Pentesting S.L.:**
    *   **Confirmar Uso del Producto/Servicio Comprometido:** Verificar si **Secure Shield Pentesting S.L.** usa la versión o componente específico reportado.
    *   **Identificar Sistemas/Datos Expuestos:** ¿Qué sistemas internos (on-prem, Azure, endpoints de pentesters) o datos (de clientes, internos) podrían afectarse por el proveedor comprometido?
    *   **Alcance de la Integración:** ¿Qué nivel de acceso o permisos tiene el software/servicio del proveedor en el entorno de **Secure Shield Pentesting S.L.**?
    *   **Análisis de Logs y Actividad:**
        *   Buscar IOCs proporcionados por el proveedor o la comunidad de seguridad en logs de **Secure Shield Pentesting S.L.**
        *   Revisar actividad de red, procesos y logs de autenticación en sistemas que usan el producto/servicio comprometido.
        *   En Azure, revisar logs de actividad para acciones sospechosas realizadas por principales de servicio o aplicaciones asociadas al proveedor.

3.  **Análisis del Vector de Compromiso del Proveedor (si hay información):**
    *   Entender cómo se comprometió el proveedor para evaluar mejor el riesgo para **Secure Shield Pentesting S.L.**

#### Remediar

**Objetivo:** Limitar el daño del proveedor comprometido, eliminar acceso o malware introducido y re-evaluar la relación con el proveedor.

##### Contener

1.  **Aislar/Deshabilitar el Producto/Servicio Comprometido:**
    *   Deshabilitar o desinstalar temporalmente el software comprometido de los sistemas de **Secure Shield Pentesting S.L.** si es posible.
    *   Revocar accesos de red del software/servicio comprometido (bloquear IPs/dominios del proveedor en firewalls/NSGs si es necesario).
    *   En Azure, deshabilitar o restringir permisos de principales de servicio o aplicaciones empresariales asociadas al proveedor.
2.  **Aislar Sistemas Afectados Internamente:**
    *   Si se sospecha que sistemas internos de **Secure Shield Pentesting S.L.** fueron comprometidos vía el proveedor, aislarlos de la red.
3.  **Rotación de Credenciales:**
    *   Cambiar credenciales (contraseñas, claves API, certificados) que el proveedor comprometido pudiera tener o que interactuaran con sus sistemas.
4.  **Bloqueo de IOCs:** Implementar bloqueo de IOCs conocidos asociados al compromiso del proveedor.

##### Erradicar

1.  **Eliminar Malware o Componentes Maliciosos:**
    *   Si el compromiso del proveedor instaló malware en sistemas de **Secure Shield Pentesting S.L.**, eliminarlo con EDR/Antivirus o reconstruyendo sistemas afectados.
2.  **Restaurar Configuraciones Seguras:**
    *   Revertir cambios no autorizados en sistemas o configuración de Azure resultado del compromiso del proveedor.
3.  **Validación de Integridad del Sistema:**
    *   Asegurar que no queden backdoors o persistencia dejada por el atacante a través del vector del proveedor.
4.  **Aplicar Parches/Actualizaciones del Proveedor (si ofrecen versión limpia):**
    *   Una vez el proveedor remedie el problema y libere una versión segura y verificada, planificar su despliegue. **Validar la actualización en un entorno de prueba primero.**

##### Recuperar

1.  **Restauración de Datos/Sistemas (si fueron dañados):**
    *   Restaurar desde backups limpios si es necesario.
2.  **Re-evaluación del Proveedor:**
    *   Realizar revisión de seguridad de la postura del proveedor.
    *   Evaluar si se continúa la relación comercial o se busca alternativa, según gravedad y respuesta del proveedor.
    *   Revisar contratos y SLAs con el proveedor sobre seguridad.
3.  **Implementación de Controles Adicionales:**
    *   Fortalecer monitorización de software y servicios de terceros.
    *   Implementar controles más estrictos sobre actualizaciones de software (ej. probar en sandbox).
    *   Reforzar segmentación de red para limitar impacto de futuro compromiso de proveedor.
    *   Mejorar proceso de selección y evaluación de seguridad de nuevos proveedores.
4.  **Validación y Monitorización:**
    *   Tras la remediación, monitorizar sistemas y tráfico de red para cualquier signo de actividad recurrente.

#### Comunicar

1.  **Comunicación Interna (Secure Shield Pentesting S.L.):**
    *   **IC, Equipo de Seguridad, SMEs, Dirección, Legal:** Informar sobre proveedor comprometido, impacto en **Secure Shield Pentesting S.L.**, datos de clientes afectados (si los hay) y acciones de remediación.
    *   **Equipos Técnicos:** Instrucciones claras sobre cómo aislar/deshabilitar/parchear el producto afectado.
    *   **Todos los Empleados (si el producto es de uso generalizado):** Advertir sobre riesgo y acciones a tomar.
2.  **Comunicación Externa:**
    *   **Proveedor Comprometido:** Mantener comunicación para obtener actualizaciones, IOCs y detalles sobre su remediación.
    *   **Clientes (Si sus datos o la seguridad de servicios provistos por Secure Shield se afectan por el compromiso del proveedor):**
        *   Si una herramienta de pentesting de un tercero usada por **Secure Shield Pentesting S.L.** se compromete y expone datos de clientes de Secure Shield, la notificación es crítica.
        *   Coordinar con Legal y Dirección. Ser transparente sobre el riesgo heredado y medidas de **Secure Shield Pentesting S.L.** para protegerlos.
    *   **Reguladores (AEPD):** Si el incidente resulta en brecha de datos personales de clientes de **Secure Shield Pentesting S.L.**
    *   **Comunidad de Seguridad/ISACs:** Compartir IOCs e inteligencia de manera responsable si ayuda a otras organizaciones.
    *   **Aseguradora de Ciberriesgos.**

#### Recursos

*   **Inventario de Software y Proveedores de Terceros de Secure Shield Pentesting S.L.**
*   **Azure Sentinel / SIEM, EDR, Logs de Firewall/Red.**
*   **Canales de Comunicación del Proveedor.**
*   **Fuentes de Inteligencia de Amenazas.**
*   **Procedimiento de Gestión de Riesgos de Terceros de Secure Shield Pentesting S.L.**
*   **Equipo Legal y de Adquisiciones de Secure Shield Pentesting S.L.**