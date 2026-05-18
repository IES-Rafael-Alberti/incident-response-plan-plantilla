## Playbook: Desfiguración o compromiso web

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook se activa cuando la web corporativa o tienda online muestra contenido no autorizado, se sospecha de web shell, explotación de aplicación pública, caída de servicio o compromiso del proveedor web.

### Relación con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-web-provider-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | Acción del playbook |
|---|---|---|---|
| Identificación | T1190 Exploit Public-Facing Application | RS0002 Identification; List host vulnerabilities; Collect web logs | Revisar vulnerabilidades, logs web, WAF, CMS, panel de proveedor y cambios de código. |
| Contención | T1505.003 Web Shell; T1505 Server Software Component | RS0003 Containment; Block external IP/domain; Quarantine file by path | Aislar web, bloquear origen y evitar ejecución de ficheros maliciosos. |
| Erradicación | T1491 Defacement | RS0004 Eradication; Remove file; Patch vulnerability | Eliminar web shell, restaurar contenido, parchear CMS/plugins y rotar credenciales. |
| Recuperación | T1489 Service Stop; Exfiltration Over Web Service | RS0005 Recovery; Restore data from backup; Restore service | Recuperar web limpia, validar tienda/formularios y monitorizar. |

### Investigar

1. Capturar evidencia pública antes de retirar contenido:
   * Captura de pantalla.
   * URL, hora, IP, dominio, contenido mostrado y navegador.
   * Código fuente visible si procede.
2. Determinar si el incidente es solo defacement o incluye acceso a datos, tienda, formularios o panel de administración.
3. Revisar con el proveedor web:
   * Logs de acceso y error.
   * WAF/CDN.
   * Panel de hosting.
   * Cambios de ficheros, plugins, temas, CMS y base de datos.
   * Usuarios administrativos y sesiones recientes.
4. Buscar causas probables:
   * CMS o plugin vulnerable.
   * Credenciales de administrador comprometidas.
   * Web shell o fichero malicioso.
   * Inyección SQL, XSS, RFI/LFI o subida insegura de archivos.
   * Compromiso del proveedor.
5. Comprobar si hubo exfiltración de formularios, datos de clientes o pedidos.
6. Clasificar severidad como S1/S2 si hay tienda parada, datos personales, alteración de pagos o compromiso del proveedor.

#### Preguntas clave de la investigación

* ¿Qué URL, dominio, subdominio o formulario muestra comportamiento anómalo?
* ¿El incidente es solo desfiguración visible o hay web shell, malware, redirecciones, robo de formularios o caída de servicio?
* ¿Cuándo se produjo el primer cambio no autorizado y qué usuario, IP o proceso lo realizó?
* ¿Qué CMS, plugin, tema, librería, panel de hosting o componente público pudo ser explotado?
* ¿Existen ficheros nuevos, modificados o sospechosos en rutas web, uploads, plugins, temas o temporales?
* ¿Se han creado usuarios administradores, claves API, cuentas FTP/SFTP o accesos de proveedor no autorizados?
* ¿Hay evidencias de exfiltración de formularios, datos de clientes, pedidos, pagos o credenciales?
* ¿El proveedor web/hosting dispone de logs, snapshots y línea de tiempo suficientes?
* ¿Qué impacto tiene en reputación, continuidad, clientes y obligaciones RGPD?
* ¿Qué dominios, IPs, rutas, hashes o patrones deben bloquearse o compartirse en MISP si procede?
* ¿Es necesario activar también los playbooks de fuga de datos, identidad, cloud o cadena de suministro?

### Remediar

* **Planificar eventos de remediación** con TIC/CISO, proveedor web, Legal y Comunicación.
* **Considerar el momento**: si el contenido es dañino o puede captar datos, retirar o aislar inmediatamente.

#### Contención

1. Activar página de mantenimiento o redirigir tráfico a un sitio seguro temporal.
2. Bloquear IPs, dominios, usuarios o rutas maliciosas identificadas.
3. Deshabilitar temporalmente formularios, pagos o administración si hay riesgo para clientes.
4. Revocar sesiones y credenciales de administradores web, FTP/SFTP, panel de hosting y API.
5. Congelar despliegues y cambios hasta preservar evidencias.
6. Solicitar al proveedor copia de logs y snapshot del estado comprometido.

#### Erradicar

1. Eliminar web shells, ficheros maliciosos, usuarios desconocidos y plugins no autorizados.
2. Actualizar CMS, plugins, temas, librerías y servidor web.
3. Corregir vulnerabilidades de subida de archivos, permisos, inyección o configuración.
4. Rotar credenciales de administración, base de datos, hosting, DNS, CDN y certificados si procede.
5. Revisar integridad de ficheros y base de datos contra versión limpia.
6. Añadir reglas WAF o controles de endurecimiento según el vector.

#### Referencia: Recursos de remediación

* Proveedor web/hosting y propietario de la web/tienda.
* TIC/CISO para logs, DNS, WAF, credenciales y coordinación técnica.
* Legal y Comunicación si hay clientes, datos personales o impacto público.
* Backups limpios de web, base de datos y configuración.

### Comunicar

1. Informar a Dirección, Legal y Comunicación si el contenido fue público, dañino o afectó a clientes.
2. Coordinar con proveedor web un informe técnico con línea de tiempo, causa, alcance y acciones aplicadas.
3. Preparar comunicación externa si hubo indisponibilidad, alteración de contenido o posible captura de datos.
4. Evaluar notificación a AEPD si hay datos personales afectados.
5. Informar internamente de canales alternativos para atención a clientes si la web/tienda queda fuera de servicio.
6. Evitar especulación pública hasta confirmar hechos.

### Recuperación

1. Restaurar contenido desde backup limpio o repositorio verificado.
2. Validar funcionamiento de páginas, formularios, tienda, pagos, certificados y DNS.
3. Verificar que no existen ficheros modificados, usuarios no autorizados ni puertas traseras.
4. Mantener monitorización de integridad, WAF y logs durante al menos 72 horas.
5. Reabrir el sitio solo con aprobación del Incident Commander y propietario del servicio.
6. Documentar mejoras: escaneo periódico, SLA de proveedor, MFA en paneles, backups y pruebas trimestrales.

### Recursos

#### Referencia: Acciones del usuario ante sospecha de compromiso web

1. No interactuar con formularios ni enlaces sospechosos.
2. Tomar captura de pantalla y anotar URL, hora y mensaje observado.
3. Avisar al help desk o equipo de seguridad.
4. No publicar capturas en redes ni reenviar fuera del equipo de respuesta.

#### Referencia: Acciones del help desk

1. Abrir ticket y escalar a seguridad si la web muestra contenido anómalo o está caída.
2. Recoger URL, captura, hora, usuario reportador y navegador.
3. No intentar corregir contenido directamente sin coordinación.
4. Avisar a Comunicación si el contenido es público o reputacionalmente sensible.

#### Información adicional

1. <a name="defacement-playbook-ref-1"></a>[MITRE ATT&CK - Exploit Public-Facing Application](https://attack.mitre.org/techniques/T1190/)
2. <a name="defacement-playbook-ref-2"></a>[MITRE ATT&CK - Web Shell](https://attack.mitre.org/techniques/T1505/003/)
3. <a name="defacement-playbook-ref-3"></a>[MITRE ATT&CK - Defacement](https://attack.mitre.org/techniques/T1491/)
4. <a name="defacement-playbook-ref-4"></a>[RE&CT Framework](https://atc-project.github.io/atc-react/)
