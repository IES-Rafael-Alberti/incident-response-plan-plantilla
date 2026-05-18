## Playbook: Compromiso de la cadena de suministro

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook cubre incidentes originados en proveedores, software de terceros, integraciones, actualizaciones comprometidas, servicios gestionados o accesos externos usados para prestar servicios a Nexo Lebrija.

### Relación con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-supply-chain-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | Acción del playbook |
|---|---|---|---|
| Identificación | T1195 Supply Chain Compromise; T1199 Trusted Relationship | RS0002 Identification; Contact external company; Collect logs | Confirmar proveedor afectado, vector, alcance y evidencias disponibles. |
| Contención | T1078 Valid Accounts; T1098 Account Manipulation | RS0003 Containment; RA3601 Lock user account; Block external IP/domain | Suspender accesos de proveedor, integraciones y cuentas relacionadas. |
| Erradicación | T1505 Server Software Component; T1554 Compromise Client Software Binary | RS0004 Eradication; Remove file; Patch vulnerability | Eliminar componentes, actualizaciones o credenciales comprometidas. |
| Recuperación | T1489 Service Stop; T1531 Account Access Removal | RS0005 Recovery; Restore data from backup; Switch to alternate service | Restaurar servicio con proveedor limpio, alternativa temporal o copia propia. |

### Investigar

1. Identificar el proveedor, producto, integración o servicio gestionado implicado.
2. Revisar contratos, SLA, responsables, canal de notificación de incidentes y obligaciones de colaboración.
3. Solicitar al proveedor:
   * Línea de tiempo del incidente.
   * Sistemas, cuentas o datos de Nexo Lebrija potencialmente afectados.
   * Logs disponibles y medidas de contención aplicadas.
   * Indicadores de compromiso y recomendaciones técnicas.
4. Revisar localmente:
   * Cuentas de proveedor, VPN, API keys, tokens OAuth, certificados y usuarios técnicos.
   * Cambios en CRM/ERP, web/tienda, cloud, correo, firewall y servidores.
   * Instalaciones o actualizaciones recientes procedentes del proveedor.
   * Transferencias de datos, conexiones anómalas o cambios de permisos.
5. Determinar si hay afectación de datos personales, continuidad de negocio o integridad de servicios.
6. Clasificar severidad como S1 si el proveedor compromete datos personales, CRM/ERP, web/tienda, backups o disponibilidad crítica.

### Falso positivo y escalado

La alerta puede cerrarse como falso positivo si el aviso del proveedor no afecta a los productos, versiones, integraciones, cuentas o datos usados por Nexo Lebrija, y las comprobaciones locales no muestran accesos, cambios ni indicadores relacionados.

Comprobaciones minimas:

* Confirmar producto, version, servicio, integracion y periodo afectado por el proveedor.
* Revisar si Nexo Lebrija usa el componente vulnerable o comprometido.
* Comprobar cuentas de proveedor, VPN, API keys, tokens, certificados y accesos tecnicos.
* Revisar cambios recientes, actualizaciones instaladas y conexiones desde infraestructura del proveedor.
* Solicitar al proveedor confirmacion escrita de alcance, IOCs y medidas aplicadas.
* Revisar logs locales en CRM/ERP, cloud, web/tienda, correo, firewall y servidores.

Debe escalarse si el proveedor confirma afectacion, hay acceso a datos personales, impacto en CRM/ERP, web/tienda, backups o correo, uso de cuentas de proveedor, actualizacion comprometida, integracion con permisos elevados, falta de informacion suficiente del proveedor o riesgo de interrupcion del servicio.

### Remediar

* **Planificar eventos de remediación** con TIC/CISO, Legal, Compras, propietario del servicio y proveedor.
* **Considerar el momento**: cortar un proveedor puede afectar operaciones, pero mantener acceso puede ampliar el daño.

#### Contención

1. Suspender temporalmente cuentas, VPN, API keys y accesos privilegiados del proveedor afectado.
2. Bloquear IPs, dominios, certificados o endpoints vinculados al compromiso.
3. Deshabilitar integraciones automáticas o sincronizaciones hasta validar su integridad.
4. Congelar actualizaciones del producto afectado si se sospecha de software comprometido.
5. Activar controles compensatorios: revisión manual, doble aprobación, segmentación y monitorización reforzada.
6. Preservar evidencias contractuales, comunicaciones, logs y cambios de configuración.

#### Erradicar

1. Eliminar componentes, agentes, scripts o binarios proporcionados por el proveedor si se confirma compromiso.
2. Reinstalar desde fuentes verificadas y comprobar hashes/firmas cuando sea posible.
3. Rotar credenciales compartidas, claves API, certificados y secretos usados por la integración.
4. Revisar permisos concedidos al proveedor y aplicar mínimo privilegio.
5. Validar que el proveedor ha corregido la causa raíz antes de restablecer acceso.
6. Documentar excepciones aceptadas por Dirección y Legal.

#### Referencia: Recursos de remediación

* TIC/CISO para accesos, integraciones, logs y segmentación.
* Compras/Legal para SLA, contratos, notificaciones y responsabilidades.
* Propietario del servicio para impacto operativo.
* Proveedor afectado y proveedor alternativo si se activa continuidad.

### Comunicar

1. Informar a Dirección, Legal y Comunicación si la severidad es S1 o S2.
2. Mantener comunicación formal con el proveedor por canal trazable y registrar todas las respuestas.
3. Coordinar notificaciones a clientes si hay impacto en servicios, web/tienda o datos personales.
4. Evaluar notificación a AEPD si el proveedor trata datos personales y existe brecha.
5. Informar internamente de limitaciones temporales del servicio y procedimientos alternativos.
6. No atribuir públicamente responsabilidad al proveedor hasta tener hechos confirmados y validación legal.

### Recuperación

1. Restablecer integraciones solo tras validar limpieza, credenciales rotadas y causa raíz corregida.
2. Restaurar datos desde copias limpias si hubo manipulación o pérdida.
3. Validar funcionamiento con el propietario del servicio y registrar pruebas.
4. Mantener monitorización reforzada durante al menos 72 horas.
5. Revisar el riesgo residual del proveedor y decidir si se mantiene, se limita o se sustituye.
6. Incorporar mejoras: cláusulas de seguridad, evidencias de auditoría, canal de incidentes, pruebas periódicas y revisión de permisos.

### Recursos

#### Información adicional

1. <a name="supply-chain-playbook-ref-1"></a>[MITRE ATT&CK - Supply Chain Compromise](https://attack.mitre.org/techniques/T1195/)
2. <a name="supply-chain-playbook-ref-2"></a>[MITRE ATT&CK - Trusted Relationship](https://attack.mitre.org/techniques/T1199/)
3. <a name="supply-chain-playbook-ref-3"></a>[RE&CT Framework](https://atc-project.github.io/atc-react/)
