## Playbook: Website Defacement

**Investiga, remedia (contén y erradica), recupera y comunica en paralelo.**

Asigna acciones a personas o equipos distintos cuando sea posible. La prioridad inicial es retirar contenido dañino de la vista pública sin destruir evidencias necesarias para entender el alcance.

### Investigate

`TODO: Ampliar los pasos de investigación, preguntas clave y estrategias para defacement web según el sector, activos expuestos y análisis de riesgos previo.`

1. Preserva evidencias antes de modificar el sitio:
    * capturas de pantalla del defacement;
    * URL, dominio, IP y hora de observación;
    * código fuente servido al navegador;
    * logs de acceso, error, WAF, CDN, proxy y autenticación;
    * artefactos de despliegue, CMS, plugins y repositorios asociados.
1. Determina si el contenido alterado está en infraestructura propia, proveedor, CDN, gestor de contenidos, repositorio o servicio de hosting.
1. Identifica el vector probable:
    * inyección SQL o XSS;
    * Remote File Inclusion (RFI) o carga de ficheros no autorizada;
    * web shell;
    * credenciales administrativas comprometidas;
    * plugin, tema o componente vulnerable;
    * error de despliegue o modificación no autorizada en repositorio.
1. Busca señales de compromiso más amplio: acceso a bases de datos, servidores de aplicación, almacenamiento, credenciales, secretos, pipelines CI/CD o paneles de administración.
1. Estima impacto funcional y reputacional, y si existe posible exposición de datos personales, credenciales o información sensible.
1. Documenta IOCs, línea temporal, sistemas afectados, cuentas usadas y nivel de confianza de cada hipótesis.

### Remediate

* **Planifica acciones coordinadas** para retirar contenido dañino, preservar evidencias y evitar que el atacante recupere el acceso.
* **Valora el impacto de negocio** antes de apagar servicios, pero prioriza la retirada de contenido ofensivo, fraudulento o peligroso.

#### Contain

`TODO: Personalizar las medidas tácticas y estratégicas de contención para defacement web.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

1. Retira temporalmente de publicación la página afectada o muestra una página de mantenimiento controlada.
1. Aísla el servidor, contenedor, aplicación, CMS o cuenta administrativa afectada si hay indicios de compromiso activo.
1. Bloquea cuentas, tokens, claves API o accesos de administración sospechosos.
1. Congela despliegues automáticos relacionados hasta validar repositorios, artefactos y credenciales.
1. Aplica reglas temporales en WAF, CDN, proxy o firewall para bloquear IOCs y rutas explotadas.

#### Eradicate

`TODO: Personalizar pasos de erradicación para defacement web.`

1. Elimina web shells, scripts maliciosos, usuarios no autorizados, reglas de redirección y modificaciones persistentes.
1. Parchea CMS, framework, plugins, temas, librerías y sistema operativo afectados.
1. Corrige validación de entradas, permisos de escritura, configuración de despliegue y gestión de secretos.
1. Rota credenciales administrativas, claves de despliegue, tokens de CI/CD y secretos de base de datos si pudieron quedar expuestos.
1. Valida que el repositorio y los artefactos de despliegue no contienen cambios maliciosos.

### Recover

`TODO: Personalizar pasos de recuperación para defacement.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

1. Restaura contenido legítimo desde una fuente conocida como buena.
1. Comprueba la integridad de backups y artefactos antes de usarlos.
1. Realiza pruebas funcionales y de seguridad antes de volver a publicar.
1. Monitoriza accesos administrativos, cambios de ficheros, alertas WAF/CDN y tráfico anómalo tras la recuperación.
1. Si el sitio tiene autenticación de usuarios, evalúa reset de credenciales y comunicación específica.

#### Risk Avoidance

`TODO: Comunicar estas medidas a los equipos responsables para que se integren en prevención y mejora continua.`

1. Mantén CMS, plugins, frameworks y dependencias actualizados.
1. Reduce plugins y componentes a los estrictamente necesarios.
1. Limita accesos administrativos mediante mínimo privilegio, MFA y revisión periódica.
1. Usa control de integridad de ficheros, revisión de cambios y despliegues reproducibles.
1. Protege formularios y entradas frente a SQL injection, XSS, RFI y carga insegura de ficheros.
1. Implementa monitorización de defacement, WAF y alertas de cambios no autorizados.

#### Reference: Remediation Resources

`TODO: Especificar recursos financieros, humanos y logísticos necesarios para completar la remediación.`

### Communicate

`TODO: Personalizar los pasos de comunicación para defacement.`

`TODO: Especificar herramientas, procedimientos y personas implicadas para cada paso, o referenciar el plan general.`

1. Escala el incidente a dirección y comunica el impacto reputacional y operativo.
1. Documenta el incidente conforme al procedimiento.
1. Coordina con asesoría legal si el contenido publicado, la posible exposición de datos o las obligaciones regulatorias lo requieren.
1. Comunica internamente el estado del servicio, las medidas de contención y lo que usuarios o empleados deben hacer.
1. Comunica a clientes si el sitio público fue alterado, si hubo riesgo de engaño o si existen datos afectados.
1. Contacta con aseguradora, proveedor de hosting, CDN, WAF, CMS gestionado o consultores de respuesta cuando aplique.
1. Considera notificar a fuerzas y cuerpos de seguridad si existe extorsión, suplantación, daño a terceros o compromiso significativo.

### Resources

#### Reference: User Actions for Suspected Defacement Attack

`TODO: Personalizar pasos para usuarios que detecten un posible defacement.`

1. Mantén la calma y no interactúes con enlaces, formularios o descargas de la página afectada.
1. Toma capturas de pantalla con fecha y hora visibles si es posible.
1. Anota qué viste, URL, hora aproximada y si realizaste alguna acción.
1. Contacta con el [help desk](#TODO-link-to-actual-resource) o canal de reporte definido.
1. No difundas capturas fuera de los canales autorizados.

#### Reference: Help Desk Actions for Suspected Defacement Attack

`TODO: Personalizar pasos para help desk ante sospecha de defacement.`

1. Abre un ticket conforme al procedimiento.
1. Recoge URL, hora, capturas, usuario reportante y acciones realizadas.
1. Escala al equipo de seguridad y al propietario del sitio.
1. Solicita preservación de logs y evita cambios no autorizados hasta que el IC defina la estrategia.
1. Registra toda la información en el ticket y mantente disponible para la respuesta.

#### Additional Information

1. <a name="defacement-playbook-ref-1"></a>[MITRE ATT&CK: Defacement](https://attack.mitre.org/techniques/T1491/)
1. <a name="defacement-playbook-ref-2"></a>[MITRE ATT&CK: Web Shell](https://attack.mitre.org/techniques/T1505/003/)
1. <a name="defacement-playbook-ref-3"></a>[OWASP Top 10](https://owasp.org/www-project-top-ten/)
