## Playbook: Fuga de datos personales / brecha RGPD

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook se activa cuando existe acceso, exfiltración, pérdida, modificación o divulgación no autorizada de datos personales de clientes, proveedores o empleados.

### Relación con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-data-breach-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | Acción del playbook |
|---|---|---|---|
| Identificación | T1213 Data from Information Repositories | RS0002 Identification; Identify transferred data; Collect evidence | Identificar repositorios, ficheros, tablas y personas afectadas. |
| Contención | T1567 Exfiltration Over Web Service; T1041 Exfiltration Over C2 Channel | RS0003 Containment; Block external IP address; Block external domain | Cortar canales de salida, bloquear destinos y preservar logs. |
| Erradicación | T1070.001 Clear Windows Event Logs; T1222 File and Directory Permissions Modification | RS0004 Eradication; Restore permissions; Remove malicious changes | Restaurar permisos, eliminar cambios maliciosos y revisar auditoría. |
| Recuperación | T1565 Data Manipulation | RS0005 Recovery; Restore data from backup; Validate restored data | Restaurar datos alterados y validar integridad con negocio. |

### Investigar

1. Confirmar tipo de incidente:
   * Acceso no autorizado.
   * Exfiltración.
   * Envío erróneo.
   * Pérdida de dispositivo o soporte.
   * Publicación accidental.
   * Modificación o borrado de datos.
2. Identificar datos afectados:
   * Nombre, DNI, datos fiscales, datos de contacto, documentación contable, contratos, nóminas o datos de proveedores.
   * Ubicación: CRM/ERP, servidor de archivos, correo, cloud, backups, web/tienda o proveedor.
3. Delimitar alcance:
   * Número aproximado de personas afectadas.
   * Categorías de datos.
   * Fecha/hora de acceso o exposición.
   * Usuarios, cuentas, dispositivos o proveedores implicados.
4. Recoger evidencias:
   * Logs de acceso, descarga, modificación y borrado.
   * Registros de correo, proxy, VPN, cloud, CRM/ERP y servidores.
   * Copias de mensajes, enlaces, archivos publicados o transferencias.
5. Determinar si hay exfiltración confirmada o solo exposición potencial.
6. Notificar inmediatamente a Legal/Cumplimiento para evaluar obligaciones RGPD/LOPDGDD.

### Falso positivo y escalado

La alerta puede cerrarse como falso positivo solo si se confirma que no hubo acceso no autorizado, envio indebido, publicacion, descarga anomala, perdida, modificacion ni exposicion de datos personales. Debe existir una explicacion legitima y documentada.

Comprobaciones minimas:

* Identificar el conjunto de datos, ubicacion, propietario y permisos aplicados.
* Revisar logs de acceso, descarga, comparticion, envio, borrado y modificacion.
* Confirmar destinatarios, enlaces publicos, permisos externos y caducidad de comparticiones.
* Validar con el propietario si la transferencia o acceso estaba autorizado.
* Comprobar si hay datos personales, fiscales, contables, laborales o contractuales.
* Revisar si el origen esta relacionado con phishing, identidad, cloud o proveedor.

Debe escalarse siempre a Legal/Cumplimiento si hay duda razonable sobre datos personales. Tambien debe escalarse si hay destinatario externo no autorizado, enlace publico, descarga masiva, cuenta comprometida, proveedor implicado, datos sensibles, muchas personas afectadas, exfiltracion probable o imposibilidad de reconstruir el alcance.

### Remediar

* **Planificar eventos de remediación** con TIC/CISO, Legal, Comunicación y propietarios de datos.
* **Considerar el momento**: preservar evidencias y cortar exposición sin destruir pruebas.

#### Contención

1. Retirar o restringir acceso al repositorio, enlace, carpeta, tabla o buzón afectado.
2. Bloquear destinos externos, IPs, dominios o cuentas usadas para exfiltración.
3. Revocar enlaces compartidos públicamente y permisos excesivos.
4. Bloquear cuentas comprometidas y rotar credenciales relacionadas.
5. Pausar sincronizaciones cloud o integraciones si están filtrando datos.
6. Activar retención legal de evidencias y evitar borrados automáticos.

#### Erradicar

1. Corregir permisos y aplicar mínimo privilegio.
2. Eliminar copias no autorizadas internas si no son evidencia.
3. Solicitar retirada de datos a terceros si fueron enviados o publicados por error.
4. Corregir reglas de correo, automatizaciones, formularios o configuraciones cloud que expusieron datos.
5. Revisar si la brecha deriva de phishing, identidad, cloud o proveedor y activar playbook correspondiente.
6. Documentar causa raíz y controles fallidos.

#### Referencia: Recursos de remediación

* Legal/Cumplimiento para evaluación RGPD/LOPDGDD.
* TIC/CISO para permisos, logs, bloqueo y recuperación.
* Propietarios de datos para validar impacto.
* Comunicación para mensajes internos/externos.
* Proveedores si trataron o alojaron datos afectados.

### Comunicar

1. Escalar a Dirección, Legal y Comunicación desde el inicio.
2. Preparar informe preliminar con qué ocurrió, datos afectados, personas afectadas, medidas tomadas y riesgo para derechos y libertades.
3. Evaluar notificación a la Agencia Española de Protección de Datos dentro del plazo aplicable si procede.
4. Evaluar comunicación a personas afectadas si el riesgo lo requiere.
5. Coordinar mensajes a clientes/proveedores con lenguaje claro, factual y sin especulación.
6. Registrar todas las decisiones de notificación, incluida la justificación si no se notifica.

### Recuperación

1. Restaurar datos modificados o borrados desde copias limpias si procede.
2. Validar integridad con propietarios de negocio.
3. Reabrir accesos con permisos revisados y MFA cuando aplique.
4. Monitorizar accesos a los datos afectados durante al menos 72 horas.
5. Revisar controles: clasificación de información, DLP, cifrado, permisos, formación y procedimientos de brechas.
6. Incorporar acciones correctivas al AAR.

### Recursos

#### Información adicional

1. <a name="data-breach-playbook-ref-1"></a>[MITRE ATT&CK - Data from Information Repositories](https://attack.mitre.org/techniques/T1213/)
2. <a name="data-breach-playbook-ref-2"></a>[MITRE ATT&CK - Exfiltration Over Web Service](https://attack.mitre.org/techniques/T1567/)
3. <a name="data-breach-playbook-ref-3"></a>[MITRE ATT&CK - Data Manipulation](https://attack.mitre.org/techniques/T1565/)
4. <a name="data-breach-playbook-ref-4"></a>[RE&CT Framework](https://atc-project.github.io/atc-react/)
