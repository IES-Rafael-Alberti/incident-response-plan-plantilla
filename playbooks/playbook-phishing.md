## Playbook: Phishing

**Investiga, remedia (contén y erradica), recupera y comunica en paralelo.**

Asigna acciones a personas o equipos distintos cuando sea posible. Este playbook aplica a campañas de phishing, spear phishing, robo de credenciales, entrega de malware por correo y fraude iniciado mediante mensajería.

### Investigate

`TODO: Ampliar pasos de investigación, preguntas clave y estrategias para phishing según el sector, controles de correo, identidad y análisis de riesgos previo.`

1. **Delimita el alcance inicial.**
    * Número de destinatarios internos y externos.
    * Usuarios que abrieron el mensaje, pulsaron enlaces, descargaron adjuntos o introdujeron credenciales.
    * Cuentas, dispositivos, buzones y aplicaciones potencialmente afectados.
1. **Analiza el mensaje en un entorno seguro.** No abras adjuntos ni enlaces desde un equipo con credenciales o acceso a datos sensibles. Determina:
    * remitente visible y remitente real;
    * destinatarios y colectivos objetivo;
    * asunto, cuerpo y marcas de ingeniería social;
    * adjuntos, hashes, tipos de fichero y macros;
    * enlaces, dominios, URLs y redirecciones;
    * cabeceras de correo, IPs de origen y resultados SPF/DKIM/DMARC.
1. **Analiza enlaces y adjuntos** con herramientas controladas:
    * consulta DNS, WHOIS y reputación de dominios;
    * búsqueda OSINT de dominios relacionados;
    * análisis en sandbox o repositorio de malware;
    * correlación con SIEM, EDR, proxy, DNS y gateway de correo.
1. Clasifica el ataque: robo de credenciales, malware, BEC/fraude, suplantación de proveedor, campaña masiva o ataque dirigido.
1. Determina severidad considerando datos afectados, privilegios de las cuentas, impacto en servicios, número de usuarios, indicios de compromiso posterior y obligaciones regulatorias.
1. Documenta IOCs, línea temporal, usuarios afectados, acciones realizadas por usuarios y nivel de confianza de cada hipótesis.

### Remediate

* **Planifica acciones coordinadas** sobre correo, identidad, endpoints y perímetro.
* **Valora efectos colaterales**: purgar mensajes, bloquear dominios o revocar sesiones puede afectar comunicaciones legítimas.

#### Contain

`TODO: Personalizar medidas de contención tácticas y estratégicas para phishing.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

* Contén cuentas afectadas:
    * revoca sesiones y tokens;
    * cambia credenciales;
    * refuerza o reinscribe MFA;
    * reduce temporalmente acceso a servicios críticos.
* Bloquea actividad basada en IOCs:
    * dominios, URLs e IPs en DNS, proxy, firewall o EDR;
    * remitentes, asuntos, cuerpos, adjuntos y hashes en gateway de correo;
    * aplicaciones OAuth, reglas de buzón o consentimientos sospechosos.
* Retén copias forenses de mensajes y cabeceras.
* Purga mensajes relacionados de buzones o hazlos inaccesibles.
* Aumenta monitorización de cuentas, dispositivos, dominios e IPs relacionados.
* Escala a playbooks de identidad, malware o ransomware si aparecen evidencias de compromiso adicional.

#### Eradicate

`TODO: Personalizar pasos de erradicación para phishing.`

* Elimina reglas maliciosas de correo, reenvíos, aplicaciones autorizadas y persistencia asociada.
* Limpia o reinstala endpoints si hubo ejecución de adjuntos o descarga de malware.
* Rota secretos, claves y credenciales que hayan podido quedar expuestos.
* Ajusta controles de correo, autenticación y navegación que fallaron o fueron insuficientes.

#### Reference: Remediation Resources

`TODO: Especificar recursos financieros, humanos y logísticos necesarios para completar la remediación.`

### Communicate

`TODO: Personalizar los pasos de comunicación para phishing.`

`TODO: Especificar herramientas, procedimientos y personas implicadas para cada paso, o referenciar el plan general.`

1. Escala el incidente y comunica con dirección según el procedimiento.
1. Documenta el incidente y repórtalo a los organismos correspondientes si aplica.
1. Coordina con asesoría legal y cumplimiento si hay posible exposición de datos, fraude o suplantación.
1. Comunica a usuarios internos qué deben hacer: no reenviar el correo, no pulsar enlaces, reportar mensajes similares y avisar si introdujeron credenciales.
1. Comunica a clientes o terceros si se usó la marca de la organización o si pudieron recibir mensajes fraudulentos.
1. Contacta con proveedores de correo, identidad, seguridad gestionada o respuesta a incidentes si necesitas apoyo.

### Recover

`TODO: Personalizar pasos de recuperación para phishing.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

1. Restablece accesos solo tras validar credenciales, MFA, dispositivos y actividad posterior.
1. Revisa transacciones, cambios de datos, reglas de correo y accesos a aplicaciones realizadas durante la ventana de compromiso.
1. Refuerza formación específica con indicadores observados en el incidente.
1. Actualiza reglas de detección, simulaciones de phishing y controles de correo según las lecciones aprendidas.

### Resources

#### Reference: User Actions for Suspected Phishing Attack

`TODO: Personalizar pasos para usuarios ante sospecha de phishing.`

1. Mantén la calma.
1. No pulses enlaces, no abras adjuntos y no respondas al mensaje.
1. Si ya interactuaste con el mensaje, anota qué hiciste y cuándo.
1. Reporta el mensaje mediante el [canal de phishing](#TODO-link-to-actual-resource) o contacta con el [help desk](#TODO-link-to-actual-resource).
1. No borres el mensaje salvo indicación del equipo de seguridad.

#### Reference: Help Desk Actions for Suspected Phishing Attack

`TODO: Personalizar pasos para help desk ante sospecha de phishing.`

1. Abre un ticket conforme al procedimiento.
1. Recoge remitente, destinatario, asunto, hora de recepción, cabeceras, adjuntos y URLs.
1. Pregunta si el usuario abrió adjuntos, pulsó enlaces, introdujo credenciales o observó actividad anómala.
1. Escala al equipo de seguridad y conserva evidencias.
1. Si hay credenciales introducidas o malware ejecutado, solicita contención inmediata de cuenta y dispositivo.

#### Additional Information

1. <a name="phishing-playbook-ref-1"></a>[MITRE ATT&CK: Phishing](https://attack.mitre.org/techniques/T1566/)
1. <a name="phishing-playbook-ref-2"></a>[CISA: Report Phishing](https://www.cisa.gov/report)
1. <a name="phishing-playbook-ref-3"></a>[MITRE ATT&CK: Valid Accounts](https://attack.mitre.org/techniques/T1078/)
