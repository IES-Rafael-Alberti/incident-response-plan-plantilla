## Playbook: Fuga de Datos / Brecha de Información

**Investigar, remediar (contener, erradicar) y comunicar en paralelo. La notificación a reguladores tiene plazos legales (AEPD: 72h).**

### Investigación

1. **Determinar qué datos están comprometidos:**
   - Categorizar los datos: personales (RGPD), financieros, propiedad intelectual, contractuales, información de clientes/proveedores.
   - Identificar el volumen: número de registros, archivos, bases de datos afectadas.
   - Evaluar la sensibilidad: ¿hay datos bancarios, sanitarios, credenciales?

2. **Determinar el vector de fuga:**
   - Error de configuración (almacenamiento cloud público, base de datos expuesta, S3 bucket abierto).
   - Acceso no autorizado (cuenta comprometida, insider, atacante externo).
   - Exfiltración activa (transferencia de datos a servidor externo).
   - Pérdida/robo de dispositivo (portátil, móvil, USB).
   - Aplicación vulnerable (inyección SQL, path traversal).

3. **Determinar el alcance:**
   - ¿Qué sistemas y fuentes de datos están implicados?
   - ¿Cuánto tiempo estuvo expuesta la información?
   - ¿Quién pudo haber accedido a los datos? (logs de acceso, IPs, geolocalización).
   - ¿Hay evidencias de descarga/exfiltración?

4. **Evaluar el impacto:**
   - **Funcional:** Pérdida de competitividad (propiedad intelectual), sanciones regulatorias, daño reputacional.
   - **Legal:** ¿Aplica RGPD? ¿Hay obligación de notificar a la AEPD? ¿Posibles reclamaciones?
   - **Económico:** Multas AEPD (hasta 20M€ o 4% facturación), costes de notificación, defensa legal.

### Contención

| Acción | Herramienta | Prioridad |
|--------|-------------|-----------|
| Bloquear acceso público al recurso expuesto | Consola cloud, firewall, WAF | Inmediato |
| Revocar accesos no autorizados | IAM, Active Directory | Inmediato |
| Poner en cuarentena sistemas afectados | EDR, segmentación de red | < 1 h |
| Preservar evidencias (logs, snapshots, volcados) | SIEM, backups, almacenamiento seguro | < 1 h |
| Bloquear IP/dominio de exfiltración | Firewall, proxy | Inmediato |
| Cambiar credenciales expuestas | IAM, Active Directory | < 30 min |

### Erradicación

1. **Cerrar la brecha:**
   - Corregir configuración insegura (permisos S3, autenticación en APIs).
   - Parchear vulnerabilidad explotada.
   - Eliminar cuentas de acceso no autorizadas.
2. **Rotar credenciales:** Cambiar todas las contraseñas, tokens y certificados que pudieron estar expuestos.
3. **Recuperar datos:** Si la fuga fue por error de configuración, eliminar datos de ubicaciones no autorizadas (si es posible legal y técnicamente).
4. **Reforzar controles:** Implementar DLP, cifrado en reposo y tránsito, monitoreo de accesos anómalos.

### Comunicación

1. **Interna:**
   - Notificar a Dirección General, Legal y Compliance inmediatamente.
   - Informar al equipo CSIRT completo para coordinar la respuesta.
2. **AEPD (si aplica):**
   - Notificar en ≤ 72 horas desde conocimiento del incidente.
   - Contenido: naturaleza del incidente, categorías y volumen de datos, medidas tomadas, recomendaciones a afectados.
3. **Clientes afectados:**
   - Notificación individual con detalle de qué datos fueron expuestos.
   - Recomendaciones (cambio de contraseñas, monitorización de cuentas).
   - Coordinar con Legal y Comunicación.
4. **Registro:** Documentar todo el proceso para posibles reclamaciones y auditorías.
5. **Fuerzas de seguridad:** Si hay evidencias de delito (robo de datos, extorsión), contactar con BIT (Policía Nacional).

### Recursos

- **Guía AEPD:** Notificación de brechas de datos personales.
- **Herramientas DLP:** Por determinar (implementación en PDS).
- **Checklist de notificación:** Disponible en archivo de incidentes.
