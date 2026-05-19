## Playbook: Compromiso de la cadena de suministro

**Investigar, remediar, comunicar y recuperar en paralelo.** Este playbook cubre incidentes originados en proveedores, software de terceros, integraciones, actualizaciones comprometidas, servicios gestionados o accesos externos usados para prestar servicios a Nexo Lebrija.

### RelaciÃ³n con MITRE ATT&CK y RE&CT

Evidencias asociadas: `evidencias-mitre/attack-supply-chain-layer.json` y `evidencias-mitre/react-response-layer.json`.

| Fase | MITRE ATT&CK | RE&CT | AcciÃ³n del playbook |
|---|---|---|---|
| IdentificaciÃ³n | T1195 Supply Chain Compromise; T1199 Trusted Relationship | RS0002 Identification; Contact external company; Collect logs | Confirmar proveedor afectado, vector, alcance y evidencias disponibles. |
| ContenciÃ³n | T1078 Valid Accounts; T1098 Account Manipulation | RS0003 Containment; RA3601 Lock user account; Block external IP/domain | Suspender accesos de proveedor, integraciones y cuentas relacionadas. |
| ErradicaciÃ³n | T1505 Server Software Component; T1554 Compromise Client Software Binary | RS0004 Eradication; Remove file; Patch vulnerability | Eliminar componentes, actualizaciones o credenciales comprometidas. |
| RecuperaciÃ³n | T1489 Service Stop; T1531 Account Access Removal | RS0005 Recovery; Restore data from backup; Switch to alternate service | Restaurar servicio con proveedor limpio, alternativa temporal o copia propia. |

### Investigar

1. Identificar el proveedor, producto, integraciÃ³n o servicio gestionado implicado.
2. Revisar contratos, SLA, responsables, canal de notificaciÃ³n de incidentes y obligaciones de colaboraciÃ³n.
3. Solicitar al proveedor:
   * LÃ­nea de tiempo del incidente.
   * Sistemas, cuentas o datos de Nexo Lebrija potencialmente afectados.
   * Logs disponibles y medidas de contenciÃ³n aplicadas.
   * Indicadores de compromiso y recomendaciones tÃ©cnicas.
4. Revisar localmente:
   * Cuentas de proveedor, VPN, API keys, tokens OAuth, certificados y usuarios tÃ©cnicos.
   * Cambios en CRM/ERP, web/tienda, cloud, correo, firewall y servidores.
   * Instalaciones o actualizaciones recientes procedentes del proveedor.
   * Transferencias de datos, conexiones anÃ³malas o cambios de permisos.
5. Determinar si hay afectaciÃ³n de datos personales, continuidad de negocio o integridad de servicios.
6. Clasificar severidad como S1 si el proveedor compromete datos personales, CRM/ERP, web/tienda, backups o disponibilidad crÃ­tica.

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

#### Preguntas clave de la investigaciÃ³n

* Â¿QuÃ© proveedor, producto, integraciÃ³n, actualizaciÃ³n o servicio gestionado estÃ¡ implicado?
* Â¿QuÃ© relaciÃ³n mantiene con Nexo Lebrija: tratamiento de datos, acceso remoto, soporte, alojamiento, software o integraciÃ³n?
* Â¿CuÃ¡ndo notificÃ³ el proveedor el incidente y quÃ© evidencias tÃ©cnicas ha entregado?
* Â¿QuÃ© cuentas, VPN, API keys, tokens, certificados o usuarios tÃ©cnicos del proveedor tienen acceso activo?
* Â¿QuÃ© sistemas internos pudieron verse afectados: CRM/ERP, web/tienda, correo, cloud, servidores o backups?
* Â¿Se instalaron actualizaciones, agentes, scripts o binarios del proveedor durante la ventana de compromiso?
* Â¿Hay conexiones anÃ³malas, transferencias de datos, cambios de permisos o actividad administrativa atribuible al proveedor?
* Â¿El proveedor ha contenido la causa raÃ­z y puede demostrarlo con evidencias?
* Â¿Existe alternativa operativa o proveedor secundario para mantener continuidad?
* Â¿QuÃ© IOCs, recomendaciones o TTPs del proveedor deben incorporarse a detecciones o MISP?
* Â¿Es necesario activar tambiÃ©n los playbooks de cloud, web, identidad, ransomware o fuga de datos?

### Remediar

* **Planificar eventos de remediaciÃ³n** con TIC/CISO, Legal, Compras, propietario del servicio y proveedor.
* **Considerar el momento**: cortar un proveedor puede afectar operaciones, pero mantener acceso puede ampliar el daÃ±o.

#### ContenciÃ³n

1. Suspender temporalmente cuentas, VPN, API keys y accesos privilegiados del proveedor afectado.
2. Bloquear IPs, dominios, certificados o endpoints vinculados al compromiso.
3. Deshabilitar integraciones automÃ¡ticas o sincronizaciones hasta validar su integridad.
4. Congelar actualizaciones del producto afectado si se sospecha de software comprometido.
5. Activar controles compensatorios: revisiÃ³n manual, doble aprobaciÃ³n, segmentaciÃ³n y monitorizaciÃ³n reforzada.
6. Preservar evidencias contractuales, comunicaciones, logs y cambios de configuraciÃ³n.

#### Erradicar

1. Eliminar componentes, agentes, scripts o binarios proporcionados por el proveedor si se confirma compromiso.
2. Reinstalar desde fuentes verificadas y comprobar hashes/firmas cuando sea posible.
3. Rotar credenciales compartidas, claves API, certificados y secretos usados por la integraciÃ³n.
4. Revisar permisos concedidos al proveedor y aplicar mÃ­nimo privilegio.
5. Validar que el proveedor ha corregido la causa raÃ­z antes de restablecer acceso.
6. Documentar excepciones aceptadas por DirecciÃ³n y Legal.

#### Referencia: Recursos de remediaciÃ³n

* TIC/CISO para accesos, integraciones, logs y segmentaciÃ³n.
* Compras/Legal para SLA, contratos, notificaciones y responsabilidades.
* Propietario del servicio para impacto operativo.
* Proveedor afectado y proveedor alternativo si se activa continuidad.

### Comunicar

1. Informar a DirecciÃ³n, Legal y ComunicaciÃ³n si la severidad es S1 o S2.
2. Mantener comunicaciÃ³n formal con el proveedor por canal trazable y registrar todas las respuestas.
3. Coordinar notificaciones a clientes si hay impacto en servicios, web/tienda o datos personales.
4. Evaluar notificaciÃ³n a AEPD si el proveedor trata datos personales y existe brecha.
5. Informar internamente de limitaciones temporales del servicio y procedimientos alternativos.
6. No atribuir pÃºblicamente responsabilidad al proveedor hasta tener hechos confirmados y validaciÃ³n legal.

### RecuperaciÃ³n

1. Restablecer integraciones solo tras validar limpieza, credenciales rotadas y causa raÃ­z corregida.
2. Restaurar datos desde copias limpias si hubo manipulaciÃ³n o pÃ©rdida.
3. Validar funcionamiento con el propietario del servicio y registrar pruebas.
4. Mantener monitorizaciÃ³n reforzada durante al menos 72 horas.
5. Revisar el riesgo residual del proveedor y decidir si se mantiene, se limita o se sustituye.
6. Incorporar mejoras: clÃ¡usulas de seguridad, evidencias de auditorÃ­a, canal de incidentes, pruebas periÃ³dicas y revisiÃ³n de permisos.

### Recursos

#### InformaciÃ³n adicional

1. <a name="supply-chain-playbook-ref-1"></a>[MITRE ATT&CK - Supply Chain Compromise](https://attack.mitre.org/techniques/T1195/)
2. <a name="supply-chain-playbook-ref-2"></a>[MITRE ATT&CK - Trusted Relationship](https://attack.mitre.org/techniques/T1199/)
3. <a name="supply-chain-playbook-ref-3"></a>[RE&CT Framework](https://atc-project.github.io/atc-react/)
