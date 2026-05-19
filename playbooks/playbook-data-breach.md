## Playbook: Fuga de datos personales / brecha RGPD

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook se activa cuando existe acceso, exfiltraciÃ³n, pÃ©rdida, modificaciÃ³n o divulgaciÃ³n no autorizada de datos personales de clientes, proveedores o empleados.

### RelaciÃ³n con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-data-breach-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | AcciÃ³n del playbook |
|---|---|---|---|
| IdentificaciÃ³n | T1213 Data from Information Repositories | RS0002 Identification; Identify transferred data; Collect evidence | Identificar repositorios, ficheros, tablas y personas afectadas. |
| ContenciÃ³n | T1567 Exfiltration Over Web Service; T1041 Exfiltration Over C2 Channel | RS0003 Containment; Block external IP address; Block external domain | Cortar canales de salida, bloquear destinos y preservar logs. |
| ErradicaciÃ³n | T1070.001 Clear Windows Event Logs; T1222 File and Directory Permissions Modification | RS0004 Eradication; Restore permissions; Remove malicious changes | Restaurar permisos, eliminar cambios maliciosos y revisar auditorÃ­a. |
| RecuperaciÃ³n | T1565 Data Manipulation | RS0005 Recovery; Restore data from backup; Validate restored data | Restaurar datos alterados y validar integridad con negocio. |

### Investigar

1. Confirmar tipo de incidente:
   * Acceso no autorizado.
   * ExfiltraciÃ³n.
   * EnvÃ­o errÃ³neo.
   * PÃ©rdida de dispositivo o soporte.
   * PublicaciÃ³n accidental.
   * ModificaciÃ³n o borrado de datos.
2. Identificar datos afectados:
   * Nombre, DNI, datos fiscales, datos de contacto, documentaciÃ³n contable, contratos, nÃ³minas o datos de proveedores.
   * UbicaciÃ³n: CRM/ERP, servidor de archivos, correo, cloud, backups, web/tienda o proveedor.
3. Delimitar alcance:
   * NÃºmero aproximado de personas afectadas.
   * CategorÃ­as de datos.
   * Fecha/hora de acceso o exposiciÃ³n.
   * Usuarios, cuentas, dispositivos o proveedores implicados.
4. Recoger evidencias:
   * Logs de acceso, descarga, modificaciÃ³n y borrado.
   * Registros de correo, proxy, VPN, cloud, CRM/ERP y servidores.
   * Copias de mensajes, enlaces, archivos publicados o transferencias.
5. Determinar si hay exfiltraciÃ³n confirmada o solo exposiciÃ³n potencial.
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

#### Preguntas clave de la investigaciÃ³n

* Â¿QuÃ© tipo de brecha se ha producido: acceso no autorizado, exfiltraciÃ³n, envÃ­o errÃ³neo, pÃ©rdida, publicaciÃ³n accidental, modificaciÃ³n o borrado?
* Â¿QuÃ© datos personales estÃ¡n afectados: identificaciÃ³n, contacto, fiscales, contables, laborales, contratos, nÃ³minas o datos de proveedores?
* Â¿DÃ³nde estaban los datos: CRM/ERP, correo, servidor de archivos, cloud, web/tienda, backup o proveedor?
* Â¿CuÃ¡ntas personas estÃ¡n afectadas o potencialmente afectadas?
* Â¿Desde cuÃ¡ndo estuvieron accesibles, expuestos o manipulados los datos?
* Â¿QuiÃ©n accediÃ³, descargÃ³, enviÃ³, modificÃ³ o borrÃ³ la informaciÃ³n?
* Â¿La exfiltraciÃ³n estÃ¡ confirmada o solo existe exposiciÃ³n potencial?
* Â¿QuÃ© logs, mensajes, enlaces, transferencias o capturas prueban el alcance?
* Â¿Hay riesgo alto para derechos y libertades de las personas afectadas?
* Â¿Debe notificarse a la AEPD dentro del plazo aplicable o comunicarse a personas afectadas?
* Â¿QuÃ© IOCs o patrones pueden compartirse en MISP sin incluir datos personales ni informaciÃ³n sensible?
* Â¿Es necesario activar tambiÃ©n los playbooks de phishing, identidad, cloud, web o cadena de suministro?

### Remediar

* **Planificar eventos de remediaciÃ³n** con TIC/CISO, Legal, ComunicaciÃ³n y propietarios de datos.
* **Considerar el momento**: preservar evidencias y cortar exposiciÃ³n sin destruir pruebas.

#### ContenciÃ³n

1. Retirar o restringir acceso al repositorio, enlace, carpeta, tabla o buzÃ³n afectado.
2. Bloquear destinos externos, IPs, dominios o cuentas usadas para exfiltraciÃ³n.
3. Revocar enlaces compartidos pÃºblicamente y permisos excesivos.
4. Bloquear cuentas comprometidas y rotar credenciales relacionadas.
5. Pausar sincronizaciones cloud o integraciones si estÃ¡n filtrando datos.
6. Activar retenciÃ³n legal de evidencias y evitar borrados automÃ¡ticos.

#### Erradicar

1. Corregir permisos y aplicar mÃ­nimo privilegio.
2. Eliminar copias no autorizadas internas si no son evidencia.
3. Solicitar retirada de datos a terceros si fueron enviados o publicados por error.
4. Corregir reglas de correo, automatizaciones, formularios o configuraciones cloud que expusieron datos.
5. Revisar si la brecha deriva de phishing, identidad, cloud o proveedor y activar playbook correspondiente.
6. Documentar causa raÃ­z y controles fallidos.

#### Referencia: Recursos de remediaciÃ³n

* Legal/Cumplimiento para evaluaciÃ³n RGPD/LOPDGDD.
* TIC/CISO para permisos, logs, bloqueo y recuperaciÃ³n.
* Propietarios de datos para validar impacto.
* ComunicaciÃ³n para mensajes internos/externos.
* Proveedores si trataron o alojaron datos afectados.

### Comunicar

1. Escalar a DirecciÃ³n, Legal y ComunicaciÃ³n desde el inicio.
2. Preparar informe preliminar con quÃ© ocurriÃ³, datos afectados, personas afectadas, medidas tomadas y riesgo para derechos y libertades.
3. Evaluar notificaciÃ³n a la Agencia EspaÃ±ola de ProtecciÃ³n de Datos dentro del plazo aplicable si procede.
4. Evaluar comunicaciÃ³n a personas afectadas si el riesgo lo requiere.
5. Coordinar mensajes a clientes/proveedores con lenguaje claro, factual y sin especulaciÃ³n.
6. Registrar todas las decisiones de notificaciÃ³n, incluida la justificaciÃ³n si no se notifica.

### RecuperaciÃ³n

1. Restaurar datos modificados o borrados desde copias limpias si procede.
2. Validar integridad con propietarios de negocio.
3. Reabrir accesos con permisos revisados y MFA cuando aplique.
4. Monitorizar accesos a los datos afectados durante al menos 72 horas.
5. Revisar controles: clasificaciÃ³n de informaciÃ³n, DLP, cifrado, permisos, formaciÃ³n y procedimientos de brechas.
6. Incorporar acciones correctivas al AAR.

### Recursos

#### InformaciÃ³n adicional

1. <a name="data-breach-playbook-ref-1"></a>[MITRE ATT&CK - Data from Information Repositories](https://attack.mitre.org/techniques/T1213/)
2. <a name="data-breach-playbook-ref-2"></a>[MITRE ATT&CK - Exfiltration Over Web Service](https://attack.mitre.org/techniques/T1567/)
3. <a name="data-breach-playbook-ref-3"></a>[MITRE ATT&CK - Data Manipulation](https://attack.mitre.org/techniques/T1565/)
4. <a name="data-breach-playbook-ref-4"></a>[RE&CT Framework](https://atc-project.github.io/atc-react/)
