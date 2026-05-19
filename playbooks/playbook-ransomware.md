
## Playbook: Ransomware

**Investigar, remediar (contener, erradicar) y comunicar en paralelo. En ransomware, la contención es prioritaria: actúe rápido para frenar propagación y proteger copias de seguridad.**

Asigne pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utilice su mejor criterio.

### Diagrama de Flujo del Proceso

[![RANSOMWARE](https://mermaid.ink/img/pako:eNqNVNtu4zYQ_RWCTxusY1m-xBcUWziOtzCQpoYc7EPjfRhTY5lYiRSGVOI0yCf1YbEfUKD5sQ4lO123AVo_0OZY5_DM0Rk-SWVTlBO5ze2D2gF5cXu1NoI_C6OVtu_u1nKaI3mYCKW3BKkVkTDWg0hREDoFHrkyv0rW8vOZOD__IJZAkGNunxiqmMOgE2hEeSiv5fPaNGccn6xhC3P_RjXB4o3qzBZHDldtMoJyF_Dijhd0XmdAn5u_wyfVhMqzEHF7-Xd1EXNvcVvckoYMRee81yl-2NCHmTVbTQWQIDDOFg9AyL01GruM6bbFkjtHuudn8F6naJSGAL1hX1piB26HriW8LjDXJoC_O7XbEPWYqNcW01yBURjAc5OWVhvvokCtU8tnRKba_APfa_B9dvfPP-b7rc49gdIv34ywIrWbHAXuvSUXSj_WZr9i-4wVq5ffG4oBS-hDW6zw5Stb68IbxUBYuzBdXUZLsvvH6CPb9wB5fqqj5ro5vLqLQLU5pSrJlpA10gLj6ufLKLlaRj8tfzllGjQcQ-YYtMUnflWWhA7xg1rKcqfdTpusRn9a3kTzfZlb7aNVVZb54ynZxYGsKaFJ_5UTTpS44wVT_T9SkoSUcCQ8GiTxriRtSaeQivgsaJtql3MK3gtleUZIgFLorDvmJQl5YRc9ZozegPpSlS7gFqaoPGx0HrgiCCyFRuPtSTdJE5YkhGVOPHxaAQV4grrg0JpWmCpVp40POcTAoSL0tYjvqJrcJH2mSlBVJdKRynmoeCPq2PG8OlHyC3jt9JXmLTN5EMUdL5UJ0v7TzVlwc8r1MDoFmNQGCVfh2Ub7e3GNGeRH_2bBv4VxnqrjTcITgmSgdrFyFVAQ_MjiUzzteNaYNwvm8WDqLStsOAJU5cFunjDCrMr5WiMeu6wiG13P3-p4MTz412xnvZNt0q-3H7UJFyZ_8ZV4jUfJUBIzsZdB4JlsyYyNlRNuCluyQL5rwlY-Ba619DvO5lpO-GcK9GUt1-aZMSWYX60tjjCyVbaTky3kjndVmfI9fMUXGUHxWg2nIs1sZbyc9ONeTSInT3IvJ93BqN3v9HvdYW_cHQxHcUs-ysl5N75ojwad7sWAl3F3PHxuyd_qY-N2HMejYb_XGcedUTweD57_AstD9r8?type=png)](https://mermaid.live/edit#pako:eNqNVNtu4zYQ_RWCTxusY1m-xBcUWziOtzCQpoYc7EPjfRhTY5lYiRSGVOI0yCf1YbEfUKD5sQ4lO123AVo_0OZY5_DM0Rk-SWVTlBO5ze2D2gF5cXu1NoI_C6OVtu_u1nKaI3mYCKW3BKkVkTDWg0hREDoFHrkyv0rW8vOZOD__IJZAkGNunxiqmMOgE2hEeSiv5fPaNGccn6xhC3P_RjXB4o3qzBZHDldtMoJyF_Dijhd0XmdAn5u_wyfVhMqzEHF7-Xd1EXNvcVvckoYMRee81yl-2NCHmTVbTQWQIDDOFg9AyL01GruM6bbFkjtHuudn8F6naJSGAL1hX1piB26HriW8LjDXJoC_O7XbEPWYqNcW01yBURjAc5OWVhvvokCtU8tnRKba_APfa_B9dvfPP-b7rc49gdIv34ywIrWbHAXuvSUXSj_WZr9i-4wVq5ffG4oBS-hDW6zw5Stb68IbxUBYuzBdXUZLsvvH6CPb9wB5fqqj5ro5vLqLQLU5pSrJlpA10gLj6ufLKLlaRj8tfzllGjQcQ-YYtMUnflWWhA7xg1rKcqfdTpusRn9a3kTzfZlb7aNVVZb54ynZxYGsKaFJ_5UTTpS44wVT_T9SkoSUcCQ8GiTxriRtSaeQivgsaJtql3MK3gtleUZIgFLorDvmJQl5YRc9ZozegPpSlS7gFqaoPGx0HrgiCCyFRuPtSTdJE5YkhGVOPHxaAQV4grrg0JpWmCpVp40POcTAoSL0tYjvqJrcJH2mSlBVJdKRynmoeCPq2PG8OlHyC3jt9JXmLTN5EMUdL5UJ0v7TzVlwc8r1MDoFmNQGCVfh2Ub7e3GNGeRH_2bBv4VxnqrjTcITgmSgdrFyFVAQ_MjiUzzteNaYNwvm8WDqLStsOAJU5cFunjDCrMr5WiMeu6wiG13P3-p4MTz412xnvZNt0q-3H7UJFyZ_8ZV4jUfJUBIzsZdB4JlsyYyNlRNuCluyQL5rwlY-Ba619DvO5lpO-GcK9GUt1-aZMSWYX60tjjCyVbaTky3kjndVmfI9fMUXGUHxWg2nIs1sZbyc9ONeTSInT3IvJ93BqN3v9HvdYW_cHQxHcUs-ysl5N75ojwad7sWAl3F3PHxuyd_qY-N2HMejYb_XGcedUTweD57_AstD9r8)

### Investigar

`OBJETIVO: Confirmar ransomware, frenar propagación, dimensionar alcance (2 sedes + nube + servidores), y estimar impacto (operativo, datos, legal).`


1. **Triage rápido (primeros 0–30 min)**
    * Confirmar que es ransomware (no corrupción/backup defectuoso): nota de rescate, extensión, comportamiento EDR.
    * Identificar **sede**, usuario y equipo(s) iniciales reportados.
    * Preservar evidencia mínima (sin “limpiar” todavía):
        * Nota de rescate (archivo/imagen), nombre/extensión de ficheros, rutas afectadas.
        * Hashes de binarios/artefactos si el EDR lo permite.
        * Hora aproximada del primer síntoma; capturas de pantalla.
    * Abrir/actualizar ticket y asignar responsable de investigación + responsable de contención.

1. **Determinar alcance técnico (rápido y ampliable)**
    * Endpoints: puestos, portátiles, servidores, y terminales en ambas sedes.
    * Servicios críticos: servidores de archivos, correo, CRM/ERP, aplicaciones internas, almacenamiento cloud.
    * Web/tienda externa: validar si hay impacto colateral (credenciales, paneles, integraciones), aunque el cifrado sea interno.
    * Fuentes típicas:
        * EDR/AV: detecciones, aislamiento, árbol de procesos, persistencia.
        * Logs Windows/Linux: eventos de seguridad, servicios, tareas programadas.
        * Red (firewall/VPN/IDS/DNS/proxy): conexiones C2, escaneo, picos SMB/RDP.
        * Nube/SaaS: auditoría (descargas masivas, tokens, apps autorizadas, accesos anómalos).

1. **Confirmar si hay exfiltración / doble extorsión (no esperar al final)**
    * Señales: tooling de compresión/archivado, transferencia saliente sostenida, uso de servicios de subida, exports desde CRM/ERP.
    * Prioridad especial a datos: PII de clientes/proveedores, documentación laboral/fiscal, propiedad intelectual, procesos internos.

1. **Identificar vector de acceso inicial (para cortar reinfección)**
    * Hipótesis típicas:
        * Phishing y robo de credenciales.
        * Exposición de RDP/VPN/portales o credenciales reutilizadas.
        * Vulnerabilidad en sistemas expuestos (correo, VPN, web, RMM).
        * Cadena de suministro (software/RMM/proveedor).
    * Recolectar evidencias: logs VPN, autenticación, correo, cambios de cuentas privilegiadas, creación de nuevos usuarios.

1. **Clasificar gravedad y priorizar**
    * Número de sistemas/servidores cifrados; si hay Domain Controllers/servidores de archivos afectados.
    * Si hay backups comprometidos o repositorios de backup accesibles.
    * Impacto en facturación/ventas/compras/delivery/mantenimiento; dependencia del CRM/ERP.
    * Obligaciones de notificación si hay indicios de acceso a datos personales (coordinar con Legal).

### Remediar

* **Planificar eventos de remediación** en los que contención/erradicación/recuperación se coordinen con TIC, negocio y sedes.
* **Considere el momento y las compensaciones**: la contención agresiva puede causar caída de servicios, pero reduce propagación.

#### Contener (prioridad 1)

`OBJETIVO: Frenar propagación y proteger backups/activos críticos sin destruir evidencia.`

* **Aislar sistemas comprometidos**
    * Aislar por EDR o desconexión de red (si no hay EDR): quitar cable/Wi‑Fi.
    * Si el cifrado afecta a shares, **cortar accesos SMB** temporalmente (por VLAN/ACL) según criticidad.

* **Cortar accesos y tokens**
    * Deshabilitar cuentas sospechosas; reset de credenciales y **revocación de sesiones/tokens**.
    * Rotar credenciales privilegiadas y cuentas de servicio si hay indicios.

* **Proteger copias de seguridad**
    * Aislar repositorios de backup/snapshots (inmutables/offline donde sea posible).
    * Pausar jobs que puedan sobrescribir backups limpios.

* **Reducir daño por sincronización cloud**
    * Si hay clientes de sincronización (almacenamiento en la nube), pausar/deshabilitar temporalmente en equipos sospechosos para evitar que el cifrado se propague a carpetas sincronizadas.
    * Revisar auditoría del servicio cloud: borrados masivos, renombrados y descargas/exports.

* **Bloquear indicadores y activar detección**
    * Bloquear dominios/IPs/hashes conocidos (EDR/SWG/DNS/firewall).
    * Añadir reglas temporales en SIEM para: ejecución desde shares, borrado VSS, cambios GPO, picos SMB/RDP.

* **Contención organizativa (2 sedes)**
    * Instrucciones a usuarios: no conectar USBs/discos, no reiniciar equipos cifrados si se necesita forense.
    * Coordinar con seguridad física para facilitar acceso controlado a salas técnicas y registrar visitas (sin interferir con evidencia).

* **Proteger la operación financiera (si aplica)**
    * Coordinar con Facturación/Compras para pausar pagos urgentes y reforzar verificación fuera de banda (doble aprobación / llamada a contacto conocido).

#### Erradicar

`OBJETIVO: Eliminar el malware y cerrar el vector para evitar reinfección.`

* **Eliminar persistencia y artefactos**
    * Identificar y eliminar: servicios, tareas programadas, claves de arranque, scripts, herramientas remotas no autorizadas.
    * Revisar Active Directory: cuentas nuevas, cambios en GPO, delegaciones y privilegios.

* **Reimagen/limpieza**
    * Reimaginar endpoints/servidores afectados desde imágenes “golden” conocidas.
    * Aplicar parches críticos (SO y software expuesto), endurecer RDP/VPN y paneles de administración.

* **Rotación de secretos**
    * Rotar credenciales privilegiadas, secretos de aplicaciones, claves API, y credenciales de integraciones (incluye nube/tienda).

* **Validación post-erradicación**
    * Confirmar ausencia de reinfección: telemetría EDR estable, no hay borrado VSS, no hay lateral SMB/RDP.

#### Referencia: Recursos de remediación

`OBJETIVO: Especifique recursos financieros, de personal y logísticos (IR externo/forense, ventanas de mantenimiento, soporte de proveedor).`

### Comunicar

`OBJETIVO: Coordinar comunicación interna/externa minimizando especulación y cumpliendo obligaciones.`

> **No se recomienda pagar el rescate:** no garantiza recuperación y puede aumentar el riesgo y la recurrencia.[<sup>[2]</sup>](#ransomware-playbook-ref-2)

1. Activar cadena de mando: Dirección/Consejo, Legal, TIC/Seguridad, y responsables de áreas críticas.
1. Comunicación interna (2 sedes): instrucciones claras (qué hacer/no hacer), canales oficiales, y estado de servicios (correo, ficheros, CRM/ERP).
1. Coordinar con Legal:
    * Evaluar notificación a clientes/proveedores/reguladores y aseguradora (si aplica), especialmente por datos personales.
    * Preservación de evidencias y requisitos contractuales.
1. Considerar notificar e implicar fuerzas del orden / CERT según procedimiento.
1. Comunicación externa (si aplica): mensaje breve y verificable; canal oficial web/RRSS si hay impacto público.

### Recuperación

`OBJETIVO: Restaurar operación de forma segura, priorizando servicios críticos, y evitar reinfección.`

1. Definir orden de restauración por criticidad (ejemplo): identidades/AD → correo → ficheros → CRM/ERP → almacenamiento cloud → resto.
1. Restaurar desde backups limpios:
    * Verificar integridad y ausencia de IOCs antes de restaurar.
    * Preferir restauraciones parciales y por oleadas; monitorizar durante la vuelta.
1. Probar desencriptadores (si existen) según variante con recursos como No More Ransom.[<sup>[2]</sup>](#ransomware-playbook-ref-2)
1. Reforzar controles post-incidente:
    * MFA resistente a phishing para cuentas privilegiadas y acceso remoto.
    * Segmentación entre sedes y zonas (usuarios/servidores/backups).
    * Backups 3-2-1, inmutabilidad/offline y pruebas periódicas de restauración.
    * Hardening de RDP/VPN, gestión de parches, EDR en endpoints y servidores.


## Técnicas MITRE ATT&CK Relevantes en Este Playbook

### Cadena de Ataque: Visualización Completa

[![DIAGRAMAMERMAID](https://mermaid.ink/img/pako:eNpVkEtu2zAQhq9CzNov2rItaVHAluU0QJMaCZBFpCxYkramlUiBolKnhk_VI_RiHcl5tFwQQ873__M4gbRKQwz70v6UhXCefbnLDaOzylZS6sYyNChRlE9sOPzE1ln6XctW4p_f5ukCrvtEkt3YZ6xQG29ZKbx2JLkASQ9s3vwEk04rbTpT3bwym55Js2tT4Dd0zFGRmjz-LZT2zDZLcO-EsmzMrqtaSG__87jK0uMeS_-hfZ2HDUeUXvFsV2BToDnkubnb7MYPu1uK0mNdWvQU3bd1Xb4w2gaajwk6bcKz-5v1mESEXe2-0v1ZOyf6qUXDhKreJduLZMuz1EiHte86rkSDz5Zkt7bjlaY5G0nL6ruEARwcKoi9a_UAKu0q0T3h1Fnm4Atd6RxiCpVwP3LIzZk0tTCP1lZvMmfbQwHxXpQNvdpakf0GxYHafEe0UdoltjUe4qh3gPgER4hnwWwUBbPJPOBRNOXhcj6AF4j5ko8iPp1G0yCcBAv6Pg_gV190MlqEM_pbBgsehTycn_8CdaC8nA?type=png)](https://mermaid.live/edit#pako:eNpVkEtu2zAQhq9CzNov2rItaVHAluU0QJMaCZBFpCxYkramlUiBolKnhk_VI_RiHcl5tFwQQ873__M4gbRKQwz70v6UhXCefbnLDaOzylZS6sYyNChRlE9sOPzE1ln6XctW4p_f5ukCrvtEkt3YZ6xQG29ZKbx2JLkASQ9s3vwEk04rbTpT3bwym55Js2tT4Dd0zFGRmjz-LZT2zDZLcO-EsmzMrqtaSG__87jK0uMeS_-hfZ2HDUeUXvFsV2BToDnkubnb7MYPu1uK0mNdWvQU3bd1Xb4w2gaajwk6bcKz-5v1mESEXe2-0v1ZOyf6qUXDhKreJduLZMuz1EiHte86rkSDz5Zkt7bjlaY5G0nL6ruEARwcKoi9a_UAKu0q0T3h1Fnm4Atd6RxiCpVwP3LIzZk0tTCP1lZvMmfbQwHxXpQNvdpakf0GxYHafEe0UdoltjUe4qh3gPgER4hnwWwUBbPJPOBRNOXhcj6AF4j5ko8iPp1G0yCcBAv6Pg_gV190MlqEM_pbBgsehTycn_8CdaC8nA)

| Fase | Técnica MITRE | Descripción | Cómo la Detectamos |
|------|--------------|-------------|--------------------|
| **Acceso inicial** | [T1566: Phishing](https://attack.mitre.org/techniques/T1566/) | Correo con adjunto/enlace o robo de credenciales previo para entrar. | Gateway de correo + proxy/SWG: campañas, URLs nuevas, adjuntos; correlación “correo → login anómalo → ejecución”. |
| **Acceso inicial** | [T1133: External Remote Services](https://attack.mitre.org/techniques/T1133/) | Acceso por VPN/RDP/portales expuestos (a menudo con credenciales robadas). | Firewall/VPN: logins fuera de horario, IP/ASN inusual, nuevos dispositivos; escaneo previo y picos de intentos. |
| **Acceso inicial** | [T1190: Exploit Public-Facing Application](https://attack.mitre.org/techniques/T1190/) | Explotación de servicios expuestos (web, VPN, RMM, correo). | Logs de acceso/app + WAF/IDS: patrones de explotación, errores 500/200 sospechosos, llamadas a endpoints raros. |
| **Ejecución** | [T1059: Command and Scripting Interpreter](https://attack.mitre.org/techniques/T1059/) | Uso de PowerShell/cmd/bash/python para desplegar payload y moverse. | EDR: árboles de procesos, scripts ofuscados, ejecución desde `%TEMP%`/shares, y conexiones de red post-ejecución. |
| **Movimiento lateral** | [T1021: Remote Services](https://attack.mitre.org/techniques/T1021/) | Movimiento por RDP/SMB/WinRM/SSH hacia servidores y puestos. | Autenticación + red: picos de SMB/RDP, accesos a múltiples hosts, lateral en 2 sedes, y nuevas rutas admin. |
| **Credenciales** | [T1003: OS Credential Dumping](https://attack.mitre.org/techniques/T1003/) | Volcado de credenciales (LSASS, SAM) para expansión. | EDR: acceso a LSASS, herramientas conocidas, eventos de seguridad; aparición de credenciales privilegiadas en uso. |
| **Defensa evadida** | [T1562: Impair Defenses](https://attack.mitre.org/techniques/T1562/) | Desactivar AV/EDR, logging o tamper protections. | Alertas EDR/SIEM: servicios detenidos, exclusiones nuevas, caída de telemetría, cambios de políticas. |
| **Inhibir recuperación** | [T1490: Inhibit System Recovery](https://attack.mitre.org/techniques/T1490/) | Borrado de copias sombra, sabotaje de backups y snapshots. | EDR + logs Windows: eliminación de VSS, cambios en jobs de backup, accesos al repositorio de backup. |
| **Impacto** | [T1486: Data Encrypted for Impact](https://attack.mitre.org/techniques/T1486/) | Cifrado masivo de endpoints/servidores y shares; interrupción operativa. | Detección EDR: I/O masivo, renombrado/extensiones, notas de rescate; alertas de integridad en ficheros. |
| **Exfiltración** | [T1041: Exfiltration Over C2 Channel](https://attack.mitre.org/techniques/T1041/) | Robo de datos para doble extorsión (por HTTPS/APIs). | Proxy/CASB/Firewall: picos de subida, destinos nuevos, descargas/exports inusuales en nube/CRM/ERP. |



### Recursos

#### Referencia: Acciones del usuario ante sospecha de ransomware

`OBJETIVO: Pasos claros para usuarios (puestos, portátiles y móviles).`

1. Mantenga la calma y respire profundamente.
1. Si ve cifrado o nota de rescate: **desconecte el equipo de la red** (cable/Wi‑Fi). No conecte USBs/discos externos.
1. Haga fotos/capturas: nota de rescate, extensión de archivos, mensajes de error.
1. Repórtelo al service desk y siga instrucciones. **No intente “limpiar”** por su cuenta.

#### Referencia: Acciones del service desk ante sospecha de ransomware

`OBJETIVO: Recoger datos útiles y activar contención rápida.`

1. Abra ticket con prioridad alta y escale a Seguridad/TIC.
1. Recoja: usuario, sede, equipo, hora, rutas afectadas, si hay nota de rescate, si hay shares implicados.
1. Indique al usuario desconectar red y no reiniciar (salvo instrucción).
1. Coordine aislamiento por EDR/IT y documente todas las acciones.

#### Información adicional

1. <a name="ransomware-playbook-ref-1"></a>["Ransomware Identification for the Judicious Analyst"](https://www.gdatasoftware.com/blog/2019/06/31666-ransomware-identification-for-the-judicious-analyst), Hahn (12 Jun 2019)
1. <a name="ransomware-playbook-ref-2"></a>[No More Ransom!](https://www.nomoreransom.org) (Crypto Sheriff, Q&A y herramientas de descifrado)
1. <a name="ransomware-playbook-ref-3"></a>[ID Ransomware](https://id-ransomware.malwarehunterteam.com/)
1. <a name="ransomware-playbook-ref-4"></a>[MITRE ATT&CK](https://attack.mitre.org) (tácticas de [Initial Access](https://attack.mitre.org/tactics/TA0001/) e [Impact](https://attack.mitre.org/tactics/TA0040/))
