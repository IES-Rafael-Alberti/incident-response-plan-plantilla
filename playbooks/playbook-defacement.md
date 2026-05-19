## Playbook: DesfiguraciÃ³n o compromiso web

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook se activa cuando la web corporativa o tienda online muestra contenido no autorizado, se sospecha de web shell, explotaciÃ³n de aplicaciÃ³n pÃºblica, caÃ­da de servicio o compromiso del proveedor web.

### RelaciÃ³n con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-web-provider-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | AcciÃ³n del playbook |
|---|---|---|---|
| IdentificaciÃ³n | T1190 Exploit Public-Facing Application | RS0002 Identification; List host vulnerabilities; Collect web logs | Revisar vulnerabilidades, logs web, WAF, CMS, panel de proveedor y cambios de cÃ³digo. |
| ContenciÃ³n | T1505.003 Web Shell; T1505 Server Software Component | RS0003 Containment; Block external IP/domain; Quarantine file by path | Aislar web, bloquear origen y evitar ejecuciÃ³n de ficheros maliciosos. |
| ErradicaciÃ³n | T1491 Defacement | RS0004 Eradication; Remove file; Patch vulnerability | Eliminar web shell, restaurar contenido, parchear CMS/plugins y rotar credenciales. |
| RecuperaciÃ³n | T1489 Service Stop; Exfiltration Over Web Service | RS0005 Recovery; Restore data from backup; Restore service | Recuperar web limpia, validar tienda/formularios y monitorizar. |

### Investigar

1. Capturar evidencia pÃºblica antes de retirar contenido:
   * Captura de pantalla.
   * URL, hora, IP, dominio, contenido mostrado y navegador.
   * CÃ³digo fuente visible si procede.
2. Determinar si el incidente es solo defacement o incluye acceso a datos, tienda, formularios o panel de administraciÃ³n.
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
   * InyecciÃ³n SQL, XSS, RFI/LFI o subida insegura de archivos.
   * Compromiso del proveedor.
5. Comprobar si hubo exfiltraciÃ³n de formularios, datos de clientes o pedidos.
6. Clasificar severidad como S1/S2 si hay tienda parada, datos personales, alteraciÃ³n de pagos o compromiso del proveedor.

### Falso positivo y escalado

La alerta puede cerrarse como falso positivo si el cambio en la web corresponde a una publicacion autorizada, mantenimiento, caida conocida del proveedor, error de monitorizacion, cache de CDN o despliegue planificado, y no hay cambios no autorizados en codigo, usuarios, ficheros o base de datos.

Comprobaciones minimas:

* Confirmar con el propietario de la web y el proveedor si habia mantenimiento o despliegue.
* Revisar logs web, WAF/CDN, panel de hosting y cambios recientes.
* Comparar ficheros, plugins, temas y base de datos con una version limpia.
* Verificar si existen usuarios administrativos nuevos, sesiones raras o cambios de permisos.
* Comprobar formularios, pagos, redirecciones y contenido publico.
* Revisar si hay web shell, subida de archivos o intentos de explotacion.

Debe escalarse si hay contenido no autorizado visible, redireccion maliciosa, web shell, alteracion de pagos, formularios capturando datos, cuenta administradora comprometida, datos personales afectados, proveedor implicado, caida de tienda/web o repeticion tras restaurar.

#### Preguntas clave de la investigaciÃ³n

* Â¿QuÃ© URL, dominio, subdominio o formulario muestra comportamiento anÃ³malo?
* Â¿El incidente es solo desfiguraciÃ³n visible o hay web shell, malware, redirecciones, robo de formularios o caÃ­da de servicio?
* Â¿CuÃ¡ndo se produjo el primer cambio no autorizado y quÃ© usuario, IP o proceso lo realizÃ³?
* Â¿QuÃ© CMS, plugin, tema, librerÃ­a, panel de hosting o componente pÃºblico pudo ser explotado?
* Â¿Existen ficheros nuevos, modificados o sospechosos en rutas web, uploads, plugins, temas o temporales?
* Â¿Se han creado usuarios administradores, claves API, cuentas FTP/SFTP o accesos de proveedor no autorizados?
* Â¿Hay evidencias de exfiltraciÃ³n de formularios, datos de clientes, pedidos, pagos o credenciales?
* Â¿El proveedor web/hosting dispone de logs, snapshots y lÃ­nea de tiempo suficientes?
* Â¿QuÃ© impacto tiene en reputaciÃ³n, continuidad, clientes y obligaciones RGPD?
* Â¿QuÃ© dominios, IPs, rutas, hashes o patrones deben bloquearse o compartirse en MISP si procede?
* Â¿Es necesario activar tambiÃ©n los playbooks de fuga de datos, identidad, cloud o cadena de suministro?

### Remediar

* **Planificar eventos de remediaciÃ³n** con TIC/CISO, proveedor web, Legal y ComunicaciÃ³n.
* **Considerar el momento**: si el contenido es daÃ±ino o puede captar datos, retirar o aislar inmediatamente.

#### ContenciÃ³n

1. Activar pÃ¡gina de mantenimiento o redirigir trÃ¡fico a un sitio seguro temporal.
2. Bloquear IPs, dominios, usuarios o rutas maliciosas identificadas.
3. Deshabilitar temporalmente formularios, pagos o administraciÃ³n si hay riesgo para clientes.
4. Revocar sesiones y credenciales de administradores web, FTP/SFTP, panel de hosting y API.
5. Congelar despliegues y cambios hasta preservar evidencias.
6. Solicitar al proveedor copia de logs y snapshot del estado comprometido.

#### Erradicar

1. Eliminar web shells, ficheros maliciosos, usuarios desconocidos y plugins no autorizados.
2. Actualizar CMS, plugins, temas, librerÃ­as y servidor web.
3. Corregir vulnerabilidades de subida de archivos, permisos, inyecciÃ³n o configuraciÃ³n.
4. Rotar credenciales de administraciÃ³n, base de datos, hosting, DNS, CDN y certificados si procede.
5. Revisar integridad de ficheros y base de datos contra versiÃ³n limpia.
6. AÃ±adir reglas WAF o controles de endurecimiento segÃºn el vector.

#### Referencia: Recursos de remediaciÃ³n

* Proveedor web/hosting y propietario de la web/tienda.
* TIC/CISO para logs, DNS, WAF, credenciales y coordinaciÃ³n tÃ©cnica.
* Legal y ComunicaciÃ³n si hay clientes, datos personales o impacto pÃºblico.
* Backups limpios de web, base de datos y configuraciÃ³n.

### Comunicar

1. Informar a DirecciÃ³n, Legal y ComunicaciÃ³n si el contenido fue pÃºblico, daÃ±ino o afectÃ³ a clientes.
2. Coordinar con proveedor web un informe tÃ©cnico con lÃ­nea de tiempo, causa, alcance y acciones aplicadas.
3. Preparar comunicaciÃ³n externa si hubo indisponibilidad, alteraciÃ³n de contenido o posible captura de datos.
4. Evaluar notificaciÃ³n a AEPD si hay datos personales afectados.
5. Informar internamente de canales alternativos para atenciÃ³n a clientes si la web/tienda queda fuera de servicio.
6. Evitar especulaciÃ³n pÃºblica hasta confirmar hechos.

### RecuperaciÃ³n

1. Restaurar contenido desde backup limpio o repositorio verificado.
2. Validar funcionamiento de pÃ¡ginas, formularios, tienda, pagos, certificados y DNS.
3. Verificar que no existen ficheros modificados, usuarios no autorizados ni puertas traseras.
4. Mantener monitorizaciÃ³n de integridad, WAF y logs durante al menos 72 horas.
5. Reabrir el sitio solo con aprobaciÃ³n del Incident Commander y propietario del servicio.
6. Documentar mejoras: escaneo periÃ³dico, SLA de proveedor, MFA en paneles, backups y pruebas trimestrales.

### Recursos

#### Referencia: Acciones del usuario ante sospecha de compromiso web

1. No interactuar con formularios ni enlaces sospechosos.
2. Tomar captura de pantalla y anotar URL, hora y mensaje observado.
3. Avisar al help desk o equipo de seguridad.
4. No publicar capturas en redes ni reenviar fuera del equipo de respuesta.

#### Referencia: Acciones del help desk

1. Abrir ticket y escalar a seguridad si la web muestra contenido anÃ³malo o estÃ¡ caÃ­da.
2. Recoger URL, captura, hora, usuario reportador y navegador.
3. No intentar corregir contenido directamente sin coordinaciÃ³n.
4. Avisar a ComunicaciÃ³n si el contenido es pÃºblico o reputacionalmente sensible.

#### InformaciÃ³n adicional

1. <a name="defacement-playbook-ref-1"></a>[MITRE ATT&CK - Exploit Public-Facing Application](https://attack.mitre.org/techniques/T1190/)
2. <a name="defacement-playbook-ref-2"></a>[MITRE ATT&CK - Web Shell](https://attack.mitre.org/techniques/T1505/003/)
3. <a name="defacement-playbook-ref-3"></a>[MITRE ATT&CK - Defacement](https://attack.mitre.org/techniques/T1491/)
4. <a name="defacement-playbook-ref-4"></a>[RE&CT Framework](https://atc-project.github.io/atc-react/)
