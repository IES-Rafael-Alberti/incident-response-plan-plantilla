## Playbook: Ransomware

**Investiga, remedia (contén y erradica), recupera y comunica en paralelo. En ransomware, la contención es prioritaria.**

Asigna acciones a personas o equipos distintos cuando sea posible. Este playbook aplica a cifrado de sistemas, extorsión por robo de datos, destrucción de información y actividad previa asociada a ransomware.

### Investigate

`TODO: Ampliar pasos de investigación, preguntas clave y estrategias para ransomware según activos críticos, continuidad de negocio, backups y análisis de riesgos previo.`

1. **Identifica la variante o familia** si es posible.
    * Revisa notas de rescate, extensiones de ficheros, fondos de pantalla, ventanas emergentes, direcciones de contacto y wallets.
    * Analiza nombres de ficheros cifrados, marcadores, procesos, servicios y artefactos creados.
    * Usa servicios como No More Ransom, ID Ransomware o herramientas internas para categorizar la muestra.
1. **Determina el alcance.**
    * Sistemas cifrados, degradados o inaccesibles.
    * Usuarios, grupos y cuentas de servicio implicadas.
    * Shares, bases de datos, backups, repositorios y almacenamiento cloud afectados.
    * Conexiones C2, movimiento lateral, ejecución remota y herramientas usadas.
1. **Evalúa impacto funcional y de información.**
    * Servicios detenidos o en riesgo.
    * Datos críticos, personales, regulados o confidenciales afectados.
    * Indicios de exfiltración previa o doble extorsión.
1. **Busca el vector inicial** usando MITRE ATT&CK como guía: phishing, RDP expuesto, VPN comprometida, explotación de vulnerabilidad, credenciales robadas, proveedor o malware precursor.
1. Documenta IOCs, línea temporal, sistemas afectados, datos comprometidos, acciones de atacante y nivel de confianza de cada hipótesis.

### Remediate

* **Planifica eventos de remediación coordinados** con seguridad, infraestructura, propietarios de servicio, continuidad de negocio, legal y dirección.
* **Prioriza contención** para impedir propagación, destrucción de backups o cifrado adicional.

#### Contain

`TODO: Personalizar medidas tácticas y estratégicas de contención para ransomware.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

* Aísla sistemas infectados de red, VPN, Wi-Fi, cloud y herramientas de gestión.
* Deshabilita cuentas comprometidas y reduce privilegios de grupos afectados.
* Protege shares, bases de datos y backups aún no afectados; desconéctalos si es necesario.
* Bloquea dominios, IPs, hashes, procesos y herramientas asociadas.
* Detén tareas programadas, despliegues o herramientas de administración usadas para propagación.
* Retira correos o artefactos de entrega si el vector fue phishing.
* Aumenta nivel de alerta en EDR, SIEM, DNS, proxy y firewall.

`TODO: Considerar automatización de contención mediante herramientas de orquestación.`

#### Eradicate

`TODO: Personalizar pasos de erradicación para ransomware.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

* Reconstruye sistemas infectados desde medios conocidos como buenos.
* Elimina malware precursor, persistencia, cuentas no autorizadas y herramientas del atacante.
* Parchea vulnerabilidades explotadas y corrige configuraciones débiles.
* Rota credenciales, secretos, claves y certificados potencialmente expuestos.
* Despliega detecciones y bloqueos basados en IOCs confirmados.
* Vigila reinfección antes de iniciar recuperación masiva.

#### Reference: Remediation Resources

`TODO: Especificar recursos financieros, humanos y logísticos necesarios para completar la remediación.`

### Communicate

`TODO: Personalizar los pasos de comunicación para ransomware.`

`TODO: Especificar herramientas, procedimientos y personas implicadas para cada paso, o referenciar el plan general.`

1. Escala de inmediato a dirección, legal, cumplimiento, continuidad de negocio y responsables de servicios críticos.
1. Documenta el incidente conforme al procedimiento.
1. Coordina con asesoría legal antes de contactar con atacante, aseguradora, reguladores o fuerzas y cuerpos de seguridad.
1. Comunica internamente impacto operativo, servicios no disponibles, medidas de contención y comportamiento esperado de usuarios.
1. Comunica a clientes si hay impacto en servicio, datos afectados o riesgo de fraude.
1. Contacta con aseguradora, proveedor de respuesta, proveedores cloud/hosting y fabricantes de seguridad si aplica.
1. Considera notificar a fuerzas y cuerpos de seguridad y organismos competentes.

### Recover

`TODO: Personalizar pasos de recuperación para ransomware.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

> **No se recomienda pagar el rescate por defecto.** El pago no garantiza recuperación, puede incumplir obligaciones legales o sancionadoras y refuerza el modelo delictivo. Cualquier excepción debe aprobarse con dirección, legal, aseguradora y autoridades competentes cuando proceda.

1. Activa planes de continuidad de negocio y recuperación ante desastres.
1. Restaura datos desde backups conocidos como limpios hacia sistemas reconstruidos, parcheados y monitorizados.
1. Verifica integridad de backups antes de restaurar a escala.
1. Busca descifradores conocidos para la variante identificada.
1. Prioriza recuperación según criticidad de negocio y dependencias técnicas.
1. Mantén monitorización reforzada hasta confirmar estabilidad y ausencia de reinfección.

### Resources

#### Reference: User Actions for Suspected Ransomware

`TODO: Personalizar pasos para usuarios ante sospecha de ransomware.`

1. Mantén la calma.
1. Desconecta el equipo de la red si el procedimiento local lo permite. `TODO: incluir pasos detallados, capturas o herramienta de emergencia.`
1. No apagues el equipo salvo indicación del equipo de respuesta.
1. Toma fotos de mensajes de rescate, ficheros cifrados o errores.
1. Anota qué estabas haciendo, cuándo empezó y qué recursos estaban abiertos.
1. Contacta con el [help desk](#TODO-link-to-actual-resource).

#### Reference: Help Desk Actions for Suspected Ransomware

`TODO: Personalizar pasos para help desk ante sospecha de ransomware.`

1. Abre un ticket conforme al procedimiento.
1. Recoge usuario, equipo, ubicación, red, hora, capturas y síntomas observados.
1. Pregunta por shares, aplicaciones, bases de datos o unidades conectadas en el momento del incidente.
1. Escala inmediatamente al equipo de seguridad y al Incident Commander.
1. Solicita contención de sistema, cuenta y accesos según procedimiento.
1. Registra todas las acciones realizadas y evita borrar evidencias.

#### Additional Information

1. <a name="ransomware-playbook-ref-1"></a>[No More Ransom](https://www.nomoreransom.org)
1. <a name="ransomware-playbook-ref-2"></a>[ID Ransomware](https://id-ransomware.malwarehunterteam.com/)
1. <a name="ransomware-playbook-ref-3"></a>[MITRE ATT&CK: Data Encrypted for Impact](https://attack.mitre.org/techniques/T1486/)
1. <a name="ransomware-playbook-ref-4"></a>[MITRE ATT&CK: Inhibit System Recovery](https://attack.mitre.org/techniques/T1490/)
