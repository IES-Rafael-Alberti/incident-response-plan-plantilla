## Playbook: Explotación de aplicación expuesta a Internet

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

Aplica siempre los pasos comunes de activación, llamada, chat, expediente, comunicaciones y AAR definidos en [`plan.md`](../plan.md). En una activación real, comienza por la guía operativa rápida y ejecuta el resto del playbook bajo la coordinación del `Incident Commander`.

### Finalidad y activación

Este playbook define la respuesta específica ante la explotación de aplicaciones o servicios expuestos a Internet. Su finalidad es contener el vector de ataque, evitar que el incidente escale a fuga de datos o compromiso persistente y devolver la aplicación a producción de forma segura.

Se activará ante cualquiera de estas señales:

1. Alertas o evidencias de explotación de una vulnerabilidad en web, tienda online o portal expuesto;
2. Aparición de errores anómalos, cargas de archivos no autorizadas o cambios no esperados en el comportamiento de la aplicación;
3. Hallazgo de accesos a paneles, bases de datos o recursos internos desde la aplicación pública;
4. Notificación del proveedor o de terceros sobre explotación activa del servicio expuesto.

### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar la explotación o el comportamiento anómalo. |
| 2 | Clasificar la severidad inicial. |
| 3 | Restringir el acceso o activar mantenimiento si el riesgo lo justifica. |
| 4 | Solicitar el bloqueo de IP, firmas o funciones explotadas, o aplicarlo internamente si ese control está bajo gestión directa. |
| 5 | Preservar logs, payloads y evidencias básicas. |
| 6 | Escalar a TIC, Seguridad y proveedor externo. |
| 7 | Valorar si existe exposición de datos, persistencia o afectación a la tienda online. |

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* [Incident Commander](../roles/role-1-commander.md), para coordinar la respuesta y aprobar el escalado operativo y de comunicación;
* [Adjunto del Incident Commander](../roles/role-2-deputy.md) o [Escriba](../roles/role-3-scribe.md), para seguimiento de tiempos, tareas y cronología;
* [SME](../roles/role-4-expert.md) de aplicación, base de datos y hosting, para análisis técnico, bloqueo y restauración;
* Proveedor de hosting o soporte web, al tratarse de un servicio expuesto y externalizado;
* Help desk, para registro y trazabilidad de avisos;
* [Enlace](../roles/role-5-liaison.md) y responsables de negocio, si la incidencia afecta a la web pública o a la tienda online;
* Asesoría jurídica o apoyo RGPD, si existen datos personales implicados.

#### Registro mínimo y herramientas prioritarias

* Abrir o actualizar el expediente del incidente en `https://ir.kiwiincidentes.es/incidents`.
* Priorizar evidencias de `https://siem.kiwiincidentes.es`, `https://logs.kiwiincidentes.es`, `https://ir.kiwiincidentes.es/assets`, `https://ir.kiwiincidentes.es/netmap` y del proveedor de hosting.
* Registrar payloads, errores, consultas, cambios en tablas o ficheros, y actuaciones propias o del proveedor.
* Aplicar cadena de custodia cuando las evidencias puedan ser relevantes para acciones legales, contractuales o periciales.

### Investigar

1. **Confirmar la explotación de la aplicación pública.**
    * Revisar alertas del proveedor de hosting, los logs o extractos que facilite el tercero, WAF si existe, IDS/IPS si está disponible y registros de la propia aplicación.
    * Verificar indicios como errores anómalos, subida de ficheros no autorizados, ejecución remota, cambios en contenido, consultas inusuales o cuentas creadas sin autorización.
    * Determinar si el incidente afecta a la web corporativa, a la tienda online o a otros portales expuestos.
2. **Determinar la vulnerabilidad o vector de ataque.**
    * Identificar si se trata de explotación de vulnerabilidad en CMS, plugin, tema, API, formulario, autenticación, carga de ficheros o mala configuración.
    * Revisar intentos de inyección SQL, XSS, RCE, traversal, abuso de credenciales o enumeración de usuarios.
    * Analizar IP, payloads, URL objetivo, agente de usuario y patrón temporal del ataque.
3. **Delimitar el alcance.**
    * Confirmar qué componentes de la aplicación han sido afectados.
    * Determinar si hubo acceso a bases de datos, paneles administrativos, repositorios, formularios o pasarelas de pago.
    * Verificar si se accedió a datos personales, credenciales o información comercial.
4. **Recopilar y preservar evidencias.**
    * Logs de aplicación, servidor, WAF, base de datos y proveedor externo, en la medida en que el proveedor los facilite o la empresa tenga acceso delegado.
    * Capturas de errores, muestras de payloads, archivos subidos, cambios en tablas o registros y cronología del incidente.
    * Configuración afectada, versiones del software y cambios recientes desplegados.
    * Registrar en el expediente el origen de cada evidencia y la persona responsable de su recogida.
5. **Evaluar el impacto.**
    * Afectación a confidencialidad, integridad y disponibilidad.
    * Riesgo para datos personales de clientes y proveedores.
    * Posible encadenamiento con defacement, fuga de datos o despliegue de malware.
    * Criterio orientativo de severidad:
        * **media**, si la explotación no supera un fallo puntual sin acceso confirmado;
        * **alta**, si hay acceso a paneles, ficheros, cuentas o datos internos;
        * **crítica**, si afecta a la tienda online, a datos personales, a ejecución remota o a persistencia confirmada.

#### Preguntas clave de investigación

* Qué vulnerabilidad concreta ha sido explotada y si sigue siendo explotable en este momento.
* Si el atacante solo ha ejecutado pruebas de explotación o ya ha logrado acceso persistente al entorno.
* Qué componentes adicionales comparten la misma versión, configuración o dependencia vulnerable.
* Si hubo acceso a datos de clientes, secretos de aplicación, credenciales, repositorios o paneles administrativos.
* Si la explotación afectó también a registros, colas, tareas programadas, almacenamiento de objetos o integraciones API.
* Qué evidencia necesitamos reunir antes de poner la aplicación en mantenimiento o restaurarla.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se ejecuten juntos, o de forma coordinada, con los equipos adecuados preparados para evitar nueva explotación.
* **Considerar el momento y las compensaciones** de las acciones de remediación: algunas medidas pueden requerir mantenimiento o indisponibilidad temporal.

#### Contención

* Pasar la aplicación afectada a modo mantenimiento o restringir el acceso si el riesgo lo justifica.
* Solicitar al proveedor que bloquee IP, firmas o patrones detectados en el WAF, reverse proxy o firewall, o aplicar la medida internamente solo si ese control está bajo gestión directa de la empresa.
* Deshabilitar temporalmente funciones explotadas: formularios, carga de archivos, plugins o endpoints concretos.
* Revocar credenciales comprometidas de administración, base de datos, API o integraciones.
* Aislar copias del entorno afectado para análisis si existe sospecha de ejecución remota o persistencia.
* Coordinar con el proveedor de hosting o desarrollo si la gestión técnica está externalizada.

#### Erradicar

* Aplicar parches, actualizar componentes vulnerables o retirar plugins, temas o módulos inseguros, directamente o a través del proveedor responsable del servicio.
* Eliminar puertas traseras, usuarios no autorizados, webshells, tareas programadas o archivos maliciosos.
* Corregir configuraciones inseguras:
    * Permisos excesivos;
    * Exposición de paneles;
    * Validación insuficiente de entradas;
    * Ausencia de protección WAF o MFA.
* Restaurar la aplicación desde una copia limpia si no puede garantizarse la integridad del entorno, coordinándolo con el proveedor cuando la infraestructura o el despliegue dependan de él.
* Revisar la base de datos y los registros en busca de cambios maliciosos o persistencia adicional.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, proveedor de hosting, desarrollador o soporte web, asesoría jurídica y responsables de negocio afectados.
* Técnicos: acceso a las evidencias que facilite el proveedor, logs web y de base de datos disponibles, WAF, panel de hosting si está delegado, backups, sistema de tickets y herramientas de análisis de vulnerabilidades.
* Logísticos: ventanas de mantenimiento, contactos urgentes con proveedor externo y mensajes preparados para usuarios o clientes.
* Financieros: soporte de proveedor, auditoría técnica, restauración desde backup y posibles costes de indisponibilidad o notificación.

### Comunicar

1. Elevar el incidente a Dirección y al responsable de seguridad indicando la aplicación afectada y el riesgo asociado.
    1. Escalar también a Comunicación y a negocio si la incidencia afecta a la web pública, formularios de contacto o procesos de compra.
2. Coordinar de inmediato con el proveedor de hosting o soporte web si la gestión es externa.
3. Documentar la vulnerabilidad, los indicadores observados, el alcance y las medidas aplicadas, diferenciando claramente entre acciones propias y acciones ejecutadas por el proveedor.
4. Informar a departamentos internos afectados sobre indisponibilidad, riesgos y cambios operativos.
5. Comunicar a clientes si la incidencia afecta a formularios, tienda online o tratamiento de sus datos, siempre con autorización del `Incident Commander` y coordinación con Comunicación.
6. Coordinar con asesoría jurídica y consultoría RGPD si hubo acceso a datos personales o información regulada.
7. Valorar notificación a INCIBE-CERT o a fuerzas y cuerpos de seguridad si el incidente es grave.

### Recuperación

1. Orden recomendado de recuperación:
    1. Cierre del vector de ataque y validación técnica del entorno;
    2. Restauración del panel, credenciales y componentes críticos;
    3. Validación funcional de la web o la tienda online;
    4. Reapertura pública gradual y monitorizada del servicio.
2. Restaurar la aplicación a producción solo después de validar que la vulnerabilidad ha sido corregida.
3. Realizar comprobaciones funcionales y de seguridad antes de reabrir el servicio.
4. Cambiar credenciales de administración, base de datos, API y cuentas relacionadas.
5. Mantener monitorización reforzada de logs, errores y accesos durante las semanas posteriores.
6. Revisar el ciclo de actualización y gestión de cambios de aplicaciones expuestas.
7. Implantar mejoras preventivas:
    * MFA en paneles;
    * WAF y reglas adaptadas;
    * Revisiones periódicas de vulnerabilidades;
    * Principio de mínimo privilegio.
8. Al cierre, completar el expediente, declarar el estado final por el `Incident Commander` y convocar la AAR según [`plan.md`](../plan.md).

### Recursos

#### Referencia: Acciones del usuario ante sospecha de explotación de aplicación pública

1. Mantener la calma y no interactuar con funciones anómalas de la web o la tienda.
2. Hacer capturas del error o comportamiento sospechoso y anotar la URL exacta.
3. Informar de inmediato al help desk o a TIC.
4. No publicar cambios ni utilizar paneles administrativos hasta nueva indicación.

#### Referencia: Acciones del Help Desk ante una posible explotación de aplicación pública

1. Abrir un ticket prioritario y recoger:
    1. URL afectada;
    2. Hora de detección;
    3. Comportamiento observado;
    4. Usuario que detecta la incidencia.
2. Escalar de inmediato a TIC, al responsable de seguridad y al proveedor web externo si procede.
3. Registrar capturas, logs disponibles y cualquier cambio reciente comunicado por negocio o proveedor.
4. Coordinar la activación del modo mantenimiento o la restricción de acceso si así se indica.
5. Documentar todas las comunicaciones y decisiones.

#### Información adicional

1. [MITRE ATT&CK - Exploit Public-Facing Application (T1190)](https://attack.mitre.org/techniques/T1190/)
2. [OWASP - SQL Injection Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html)
3. [OWASP - Path Traversal](https://owasp.org/www-community/attacks/Path_Traversal)
4. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)

