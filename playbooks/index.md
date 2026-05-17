# Playbooks

Los siguientes playbooks capturan los pasos comunes de [investigación](#investigar), [remediación](#remediar), [comunicación](#comunicar) y [recuperación](#recuperación) para los incidentes más probables o de mayor impacto en Nexo Lebrija.

La selección se basa en el Plan Director de Seguridad, la matriz de riesgos de activos críticos y la trazabilidad con MITRE ATT&CK y RE&CT documentada en `evidencias-mitre/matriz-trazabilidad-mitre-react.md`.

| Playbook | Riesgos PDS | Activos principales | Motivo de prioridad |
|---|---|---|---|
| Ransomware | R01, R02, R06, R08 | CRM/ERP, servidores, backups, puestos | Máximo impacto sobre continuidad del negocio y disponibilidad. |
| Phishing | R03, R05, R08 | Correo, puestos, credenciales, datos personales | Vector de entrada más probable para malware, fraude y robo de credenciales. |
| Compromiso de identidad y acceso | R01, R03, R05, R08 | CRM/ERP, correo, VPN, cloud | Permite acceso no autorizado a información crítica y movimiento lateral. |
| Desfiguración o compromiso web | R04, R11, R03 | Web, tienda online, proveedor externo | Impacto reputacional, posible fuga de datos y dependencia de terceros. |
| Compromiso de cadena de suministro | R11, R04, R03 | Proveedores, integraciones, servicios externalizados | Riesgo elevado por dependencia de proveedores y bajo control directo. |
| Fuga de datos personales / brecha RGPD | R03, R01, R02, R11 | Datos personales, CRM/ERP, servidores, proveedores | Impacto legal, reputacional y operativo. |
| Compromiso de servicios cloud | R11, R03, R01, R04 | Cloud, almacenamiento, cuentas, integraciones | Escenario probable por uso de servicios cloud y errores de configuración. |
