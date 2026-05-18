## Playbook: Desaparición de sitios web

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna los pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

### Aplicación del plan general

Este playbook desarrolla el escenario técnico, pero deberá ejecutarse siempre bajo el modelo operativo de [`plan.md`](../plan.md). En particular:

1. El `Incident Commander` dirigirá la respuesta, designará adjunto y escriba cuando corresponda y autorizará las decisiones de escalado relevantes.
2. Se abrirán la llamada, el chat y el expediente del incidente conforme al plan general.
3. La documentación, la cronología, los IOC, las evidencias y la cadena de custodia se mantendrán en el expediente del incidente.
4. Las actualizaciones de estado seguirán la cadencia definida en el plan general, con referencia de dos horas mientras el incidente permanezca activo, salvo ajuste expreso del `Incident Commander`.
5. Ninguna comunicación externa o ampliación de la difusión interna fuera del equipo de respuesta se realizará sin autorización del `Incident Commander`.

### Finalidad y activación

Este playbook define la respuesta específica ante incidentes de desfiguración o alteración no autorizada de contenidos web públicos. Su finalidad es retirar rápidamente el contenido malicioso, contener el acceso del atacante, preservar evidencias y recuperar la presencia pública de la empresa con seguridad.

Se activará ante cualquiera de estas señales:

1. Aparición de contenido web alterado, ofensivo, fraudulento o no autorizado;
2. Avisos de clientes, usuarios o proveedores sobre cambios anómalos en la web o tienda online;
3. Alertas del proveedor de hosting, WAF o monitorización web sobre alteraciones de ficheros o paneles;
4. Detección de accesos administrativos sospechosos o cambios inesperados en contenidos públicos.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* `Incident Commander`, para coordinar la respuesta y aprobar el escalado operativo y de comunicación;
* Adjunto del `Incident Commander` o escriba, para seguimiento de tiempos, tareas y cronología;
* Equipo TIC, para análisis técnico, bloqueo de accesos y restauración;
* Proveedor de hosting o soporte web, por tratarse de un servicio externalizado;
* Help desk, para recepción de avisos y trazabilidad;
* Responsables de Comunicación o RR. SS., por el impacto reputacional;
* Asesoría jurídica o apoyo RGPD, si existe riesgo sobre formularios o datos personales.

### Documentación y evidencias

1. Crear o actualizar el expediente del incidente con el nombre definido en el plan general.
2. Registrar desde el inicio:
   * Resumen inicial del incidente;
   * URL o activos afectados;
   * Impacto reputacional y operativo;
   * Línea temporal de eventos;
   * Responsables asignados;
   * Decisiones de contención y restauración.
3. Conservar capturas, ficheros, logs, copias, cambios de contenido y actuaciones del proveedor con fecha, hora, origen y responsable de la recogida.
4. Aplicar cadena de custodia cuando las evidencias puedan ser relevantes para acciones legales, contractuales o periciales.

### Investigar

1. Confirmar la alteración y, si puede hacerse en segundos sin retrasar la contención, recoger evidencias mínimas antes de retirar la exposición pública.
    * Esto es especialmente importante si la desfiguración es ofensiva, fraudulenta o contiene enlaces maliciosos.
    * En esta empresa la página web y la tienda online están alojadas en proveedor externo, por lo que la retirada de la exposición debe coordinarse con dicho proveedor y con Comunicación.
2. Determinar el origen de la vulnerabilidad o del acceso no autorizado utilizado por el atacante. Los vectores más comunes son:
    * Credenciales robadas del panel de administración;
    * Vulnerabilidades en CMS, plugins o temas;
    * Inyección SQL u otras vulnerabilidades de aplicación;
    * Webshells o ficheros subidos de forma maliciosa;
    * Inclusión remota de archivos o carga insegura de contenido;
    * Mala configuración del hosting, FTP, panel o integraciones con terceros.
    * Para detectarlo, revisar:
        * Logs de acceso y error del servidor web;
        * Logs del firewall, WAF o CDN, si existen;
        * Cambios en ficheros, base de datos y configuración;
        * Cuentas administrativas y su actividad reciente;
        * Integraciones con formularios, tienda online y scripts de terceros;
        * Enlaces presentes en la página alterada, código fuente y recursos cargados desde dominios externos.
3. Recoger cualquier pista sobre el atacante y su motivación.
    * Mensajes dejados en la web, pseudónimos, firmas o canales de contacto.
    * Posible objetivo: vandalismo, protesta, fraude, SEO malicioso, distribución de malware o pantalla de acceso a datos.
    * Valorar si el defacement parece casual, ideológico, oportunista o parte de una intrusión más profesional.
    * Valorar si el defacement es un hecho aislado o un síntoma de compromiso mayor.
4. Recoger otra información importante de la página afectada.
    * Capturas de pantalla completas del contenido alterado.
    * Dominio, subdominio, IP o proveedor afectados.
    * Fecha y hora de detección.
    * Cambios visibles en código fuente, enlaces, formularios o pasarelas de pago.
    * Identificación del servidor, CMS o plataforma afectada, si se conoce.
    * Relación con otros sistemas internos o bases de datos de clientes.
    * Registrar en el expediente el origen de cada evidencia y la persona responsable de su recogida.
5. Ampliar la investigación al posible compromiso lateral.
    * Comprobar si el atacante accedió también al panel de tienda, base de datos, correo asociado o repositorios de código.
    * Verificar si se insertaron scripts para robo de credenciales o datos de pago.
    * Revisar si existen usuarios administrativos nuevos, cambios de permisos o puertas traseras persistentes.

### Remediar

**Planificar eventos de reparación** en los que estos pasos se pongan en marcha juntos, o de forma coordinada, con los equipos adecuados listos para responder a cualquier interrupción.  
* **Considerar el momento y las compensaciones** de las acciones de remediación: la respuesta tiene consecuencias.

#### Contención

1. Hacer una copia forense o backup del contenido afectado antes de restaurar, incluyendo ficheros web, base de datos, logs y configuraciones.
2. Mantener fuera de servicio la página afectada o bajo página de mantenimiento mientras dure la investigación inicial.
    * Si es posible, publicar una página temporal neutra indicando mantenimiento técnico.
3. Revocar accesos administrativos, contraseñas y claves asociadas al CMS, FTP/SFTP, panel de hosting, base de datos y cuentas relacionadas.
4. Bloquear IP, cuentas o mecanismos de acceso identificados como maliciosos.
5. Si se detecta que el problema proviene de otro sistema integrado, aislar también ese sistema hasta verificarlo.

#### Erradicación

1. Eliminar el contenido malicioso, scripts, webshells, usuarios no autorizados, tareas programadas o puertas traseras detectadas.
2. Corregir la causa raíz del incidente:
    1. Vulnerabilidades en CMS, plugins, temas o formularios;
    2. Credenciales comprometidas;
    3. Configuraciones inseguras de hosting, panel o base de datos;
    4. Integraciones de terceros inseguras.
3. Aplicar parches, retirar componentes inseguros y revisar permisos sobre ficheros, paneles y cuentas de administración.
4. Verificar con el proveedor externo que el entorno ha sido revisado y saneado antes de proceder a la restauración pública.

### Recuperación

1. Orden recomendado de recuperación:
    1. Control del panel, credenciales y accesos administrativos;
    2. Restauración del contenido web legítimo y validación técnica;
    3. Revisión de formularios, bases de datos e integraciones sensibles;
    4. Reapertura pública de la web y, después, de la tienda online si estuvo afectada.
2. Eliminar el contenido del atacante y reemplazarlo por el contenido legítimo restaurado desde una copia limpia y verificada.
    * Comprobar las copias de seguridad en busca de indicadores de compromiso antes de restaurar.
    * Valorar la restauración parcial si solo algunos componentes estaban comprometidos.
3. Cambiar las credenciales de administración del sitio, de la tienda online y de cualquier cuenta asociada.
4. Rehabilitar la web solo después de corregir la vulnerabilidad, validar integridad y confirmar con el proveedor externo que el entorno es seguro.
5. Si procede, preparar una explicación breve para usuarios o clientes aclarando que el contenido alterado no representaba a la empresa.

#### Evitar riesgos

1. Minimizar plugins, módulos y componentes no necesarios, y mantener actualizaciones regulares del CMS o plataforma de tienda.
2. Limitar estrictamente los accesos administrativos y separar cuentas nominales de cuentas compartidas.
3. Activar MFA en paneles de administración, hosting y cuentas de correo vinculadas a la web.
4. Implementar monitorización de integridad de ficheros, revisión de logs y alertas de cambios administrativos.
5. Reforzar la defensa frente a vulnerabilidades web comunes, como SQLi, subida insegura de archivos y mala validación de entradas.
6. Revisar periódicamente con el proveedor externo el estado de parches, backups, WAF y controles de seguridad.
7. Formar a los empleados que gestionan web, tienda y contenidos sobre contraseñas, phishing y buenas prácticas de publicación.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, proveedor de hosting o web, Comunicación o RRSS, Legal si hay datos afectados y help desk.
* Técnicos: acceso al panel del proveedor, backups, logs web, base de datos, sistema de tickets y herramientas de escaneo o integridad.
* Logísticos: página de mantenimiento preparada, canales de contacto con proveedor externo y procedimiento de comunicación pública.
* Financieros: soporte urgente del proveedor, auditoría web, restauración de servicio y posibles costes de reputación o notificación.

### Comunicar

1. Elevar el incidente y comunicarlo a Dirección, al responsable de seguridad y a los responsables de Comunicación.
    1. Escalado inmediato si la página alterada contiene contenido ofensivo, fraudulento, enlaces maliciosos o afecta a la tienda online.
2. Documentar el incidente y conservar capturas, logs, cambios de contenido y actuaciones del proveedor externo.
3. Comunicarse con asesoría jurídica y consultoría RGPD si existe sospecha de acceso a datos personales o formularios de clientes.
4. Comunicar a usuarios internos el estado del servicio y las restricciones temporales.
5. Comunicar a clientes, si procede, que la web o la tienda han sido intervenidas temporalmente por seguridad, siempre con autorización del `Incident Commander` y coordinación con Comunicación.
6. Contactar con proveedores de seguros o soporte externo si existen.
7. Considerar notificación a organismos o fuerzas de seguridad si el incidente es grave, persistente o con posible delito asociado.
8. Coordinar toda comunicación externa para evitar mensajes contradictorios o alarmistas.

### Cierre y AAR

1. El `Incident Commander` declarará el cierre operativo del incidente cuando el entorno se haya saneado y la publicación sea estable.
2. Completar el expediente con cronología final, impacto, evidencias, acciones del proveedor y resultado de la restauración.
3. Programar la revisión posterior a la acción (AAR) dentro del plazo definido en el plan general.
4. Registrar acciones de mejora sobre hardening web, control de cambios, accesos administrativos y supervisión del proveedor.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar la alteración y capturar evidencias básicas. |
| 2 | Retirar la web de exposición pública o pasarla a mantenimiento. |
| 3 | Bloquear accesos y credenciales administrativas sospechosas. |
| 4 | Avisar al proveedor externo y al responsable de seguridad. |
| 5 | Valorar si existe acceso a base de datos, formularios o tienda online. |
| 6 | Clasificar la severidad inicial. |
| 7 | Preparar la restauración desde copia limpia solo después de preservar evidencias mínimas. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de defacement

1. Mantener la calma.
2. Hacer capturas de pantalla de la página alterada y anotar la URL exacta.
3. No interactuar con enlaces extraños ni introducir credenciales en la web afectada.
4. Anotar:
    1. Qué cambio se ha observado exactamente;
    2. Cuándo se vio por primera vez;
    3. Si el problema afecta a una página concreta o a varias;
    4. Si se estaba accediendo como usuario normal o con cuenta de gestión;
    5. Con quién más se ha comentado el incidente.
5. Informar de inmediato al help desk o al equipo TIC.
6. Si se gestionaban contenidos en la web, no publicar nuevos cambios hasta recibir instrucciones.

#### Referencia: Acciones del Help Desk ante un presunto ataque de defacement

1. Abrir un ticket prioritario y recoger URL, hora de detección, capturas y usuario que reporta.
2. Verificar si la alteración afecta solo a una página o a la web o tienda completa.
3. Formular preguntas de triage detalladas:
    1. Qué ha observado exactamente el usuario;
    2. Cuándo apareció por primera vez y si persiste;
    3. Si el usuario estaba autenticado o gestionando contenidos;
    4. Qué URL, subdominio, formulario o funcionalidad concreta estaba usando;
    5. Si alguien más ha informado del mismo comportamiento;
    6. Con quién ha compartido ya la incidencia.
4. Escalar inmediatamente a TIC, al responsable de seguridad y al proveedor web externo.
5. Documentar accesos administrativos recientes, si esa información está disponible.
6. Coordinar la activación de la página de mantenimiento y el bloqueo de cuentas si procede.
7. Registrar todas las comunicaciones con proveedores y usuarios.

#### Información adicional
1. [MITRE ATT&CK - Defacement: External Defacement (T1491.002)](https://attack.mitre.org/techniques/T1491/002/)
2. [MITRE ATT&CK - Defacement: Internal Defacement (T1491.001)](https://attack.mitre.org/techniques/T1491/001/)
3. [OWASP - SQL Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
4. [OWASP - Path Traversal](https://owasp.org/www-community/attacks/Path_Traversal)
5. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)
