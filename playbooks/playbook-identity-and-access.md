## Playbook: Compromiso de identidad y acceso

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utiliza tu mejor criterio.

Aplica siempre los pasos comunes de activación, llamada, chat, expediente, comunicaciones y AAR definidos en [`plan.md`](../plan.md). En una activación real, comienza por la guía operativa rápida y ejecuta el resto del playbook bajo la coordinación del `Incident Commander`.

### Finalidad y activación

Este playbook define la respuesta específica ante el compromiso de identidades, cuentas y accesos corporativos. Su finalidad es detectar accesos no autorizados, contener rápidamente el abuso de credenciales, proteger la información sensible y restablecer el acceso legítimo con garantías.

Se activará ante cualquiera de estas señales:

1. Alertas de inicios de sesión anómalos o imposibles;
2. Cambios de contraseña, MFA o sesiones no reconocidos por el usuario;
3. Accesos desde IP, ubicaciones o dispositivos inusuales;
4. Sospecha de robo de credenciales por phishing, malware o proveedor externo.

### Roles mínimos implicados

Como mínimo, en este playbook deben intervenir estas funciones:

* [Incident Commander](../roles/role-1-commander.md), para coordinar la respuesta y aprobar el escalado operativo y de comunicación;
* [Adjunto del Incident Commander](../roles/role-2-deputy.md) o [Escriba](../roles/role-3-scribe.md), para seguimiento de tiempos, tareas y cronología;
* [SME](../roles/role-4-expert.md) de identidad, correo, cloud o endpoints, para revisar autenticación, cuentas, permisos y endpoints;
* Help desk, para validar usuarios, abrir incidentes y asistir en cambios de credenciales;
* Responsables del área afectada, si se trata de cuentas con acceso a procesos críticos;
* [Enlace](../roles/role-5-liaison.md) interno, junto con asesoría jurídica o apoyo RGPD, si se accedió a datos personales o información regulada.

#### Registro mínimo y herramientas prioritarias

* Abrir o actualizar el expediente del incidente en `https://ir.kiwiincidentes.es/incidents`.
* Priorizar evidencias de `https://siem.kiwiincidentes.es`, `https://logs.kiwiincidentes.es` y `https://ir.kiwiincidentes.es/assets`.
* Registrar cuentas afectadas, privilegios, sesiones, tokens, cambios administrativos y decisiones de contención.
* Aplicar cadena de custodia cuando las evidencias puedan ser relevantes para acciones legales, contractuales o periciales.

### Investigar

1. Confirmar si existe un **compromiso real de credenciales** o un falso positivo.
    * Validar la alerta con el usuario afectado y con los registros de autenticación.
    * Determinar si el compromiso afecta a cuentas de usuario, administración, servicio, correo, cloud, VPN o tienda online.
2. Determinar **cómo se produjo el compromiso**.
    * Revisar si hubo phishing, reutilización de contraseñas, credential stuffing, malware, fuga en proveedor externo o acceso remoto inseguro.
    * Revisar correos sospechosos, alertas del antivirus, eventos de acceso remoto y actividad anómala en navegadores o endpoints.
3. Delimitar **el alcance y el impacto**.
    * Identificar qué sistemas o servicios fueron accedidos con las credenciales comprometidas.
    * Verificar si hubo cambios en contraseñas, reglas de correo, MFA, datos de perfil, altas de usuarios o escalado de privilegios.
    * Revisar si se accedió a datos personales, documentación interna sensible, CRM, ERP, almacenamiento cloud o paneles del proveedor web.
4. Revisar **la cronología de accesos**.
    * Ubicaciones geográficas, IP, dispositivos y horarios anómalos.
    * Inicios de sesión simultáneos o imposibles.
    * Intentos de acceso fallidos previos y posteriores.
5. Recopilar evidencia relevante.
    * Logs de autenticación, exportación de alertas, mensajes de phishing asociados, sesiones abiertas, tokens, claves API y cambios administrativos.
    * Registrar en el expediente el origen de cada evidencia y la persona responsable de su recogida.
#### Preguntas clave de investigación

* Si MFA estaba activado y funcionó correctamente.
* Si se usaron las credenciales para movimiento lateral o acceso a otros sistemas.
* Si existen más cuentas afectadas por la misma campaña o proveedor comprometido.
* Si el atacante creó persistencia mediante reglas de correo, aplicaciones autorizadas o cuentas nuevas.
* Qué privilegios efectivos tenía la cuenta comprometida en el momento del acceso.
* Si hubo cambios en grupos, permisos, direcciones de recuperación, métodos MFA o dispositivos de confianza.
* Si la cuenta se utilizó para acceder a correo, VPN, paneles cloud, ERP/CRM, integraciones o datos regulados.
* Si el compromiso procede de phishing, malware local, fuga de proveedor o reutilización de contraseñas en otros servicios.
* Qué otras identidades relacionadas deben revisarse de inmediato: cuentas de servicio, compartidas, delegadas o administrativas.
7. **Clasificar la severidad del incidente.**
    * **baja**, si solo hubo intentos fallidos sin acceso confirmado.
    * **media**, si hubo acceso a una cuenta de usuario sin privilegios y sin impacto aparente.
    * **alta**, si hubo acceso a varias cuentas, datos sensibles o servicios corporativos relevantes.
    * **crítica**, si la cuenta es privilegiada, afecta a paneles cloud, a la tienda online o a información regulada.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se lancen juntos, o de forma coordinada, con los equipos apropiados listos para responder a cualquier interrupción.
* **Considerar el tiempo y las compensaciones** de las acciones de remediación: la respuesta tiene consecuencias.

#### Contención

* Restablecer o deshabilitar inmediatamente las credenciales comprometidas.
* Forzar cierre de sesiones activas en correo, VPN, aplicaciones cloud y servicios empresariales.
* Revocar tokens, claves API, certificados o aplicaciones autorizadas vinculadas a la cuenta.
* Bloquear accesos desde IP, dispositivos o ubicaciones sospechosas.
* Reforzar MFA y, si no existe, implantarlo con prioridad en cuentas críticas.
* Reducir temporalmente privilegios o retirar roles administrativos mientras termina la investigación.
* Aislar equipos asociados si existe sospecha de malware roba-credenciales.
* Aumentar la monitorización sobre:
    * Cuentas con privilegios;
    * Paneles cloud;
    * Cambios en grupos o permisos;
    * Restablecimientos de contraseña y altas de usuarios.

#### Erradicar

* Eliminar mecanismos de persistencia o abuso detectados:
    * Reglas de correo;
    * Aplicaciones OAuth no autorizadas;
    * Cuentas ocultas o nuevas;
    * Claves API no aprobadas;
    * Dispositivos marcados como de confianza sin autorización.
* Corregir la causa raíz del incidente:
    * Phishing no detectado;
    * Contraseñas reutilizadas;
    * Falta de MFA;
    * Controles insuficientes en acceso remoto o proveedores.
* Escanear equipos implicados en busca de malware, keyloggers o herramientas de acceso remoto no autorizadas.
* Rotar contraseñas de cuentas relacionadas, especialmente cuentas privilegiadas o de servicio.
* Revisar y endurecer políticas de acceso, bloqueos por intentos fallidos y alertas de comportamiento.

#### Referencia: Recursos de remediación

* Personal: equipo TIC, responsable de seguridad, help desk, RR. HH. si la cuenta pertenece a personal con cambio de rol o baja, subcontrata del antivirus y asesoría RGPD.
* Técnicos: directorio corporativo, paneles cloud, registros de autenticación, firewall o VPN, sistema de tickets y herramientas de gestión de identidades.
* Logísticos: canal interno de avisos urgentes, soporte a usuarios para cambio de contraseña y equipos alternativos si se aísla el endpoint.
* Financieros: soporte externo especializado, despliegue o ampliación de MFA y posibles costes de revisión forense.

### Comunicar

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Informar a Dirección y al responsable de seguridad del tipo de cuenta comprometida y del impacto potencial.
    1. Escalar de inmediato al responsable del área afectada si la cuenta pertenece a Facturación, RR. HH., TIC, Dirección o proveedores externos con acceso.
2. Documentar todas las acciones sobre la identidad afectada: reseteos, revocaciones, cambios de privilegios y evidencias.
3. Coordinar con asesoría legal y consultoría RGPD si la cuenta permitió acceso a datos personales o información regulada.
4. Informar a usuarios y responsables afectados.
    1. Explicar cambios de contraseña, cierres de sesión y pasos de verificación.
    2. Aclarar que no deben reutilizar claves ni aprobar notificaciones MFA no iniciadas por ellos.
5. Comunicar a proveedores externos si el acceso comprometido afecta a integraciones, hosting, nube o tienda online, siempre con autorización del `Incident Commander`.
6. Valorar la notificación a organismos o fuerzas de seguridad si se aprecia acceso delictivo relevante o fraude.

### Recuperación

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Orden recomendado de recuperación:
    1. Cuentas privilegiadas o con acceso a sistemas críticos;
    2. Cuentas de servicio o integraciones;
    3. Cuentas de usuarios de departamentos sensibles;
    4. Resto de cuentas afectadas o potencialmente afectadas.
2. Restaurar de forma controlada el acceso de los usuarios tras confirmar que la cuenta está limpia y con nuevas credenciales.
3. Forzar MFA en cuentas sensibles y, en la medida de lo posible, ampliarlo al resto de la organización.
4. Revisar permisos y aplicar mínimo privilegio, especialmente en correo, almacenamiento cloud, ERP/CRM y paneles de proveedores.
5. Monitorizar la actividad de las cuentas afectadas durante un periodo reforzado para detectar recaídas o nuevos abusos.
6. Reforzar la formación en:
    * Phishing y suplantación;
    * Uso seguro de contraseñas;
    * Reconocimiento de alertas de acceso y MFA.
7. Formalizar procedimientos de alta, baja y cambio de rol para evitar cuentas huérfanas o privilegios innecesarios.
8. Al cierre, completar el expediente, declarar el estado final por el `Incident Commander` y convocar la AAR según [`plan.md`](../plan.md).



### Guía operativa rápida

Durante la primera hora, la secuencia recomendada será la siguiente:

| Paso | Acción operativa |
|---|---|
| 1 | Confirmar la alerta o el aviso del usuario. |
| 2 | Validar la identidad del afectado por un canal alternativo. |
| 3 | Clasificar la severidad inicial. |
| 4 | Bloquear o limitar la cuenta si existe acceso confirmado. |
| 5 | Cerrar sesiones, revocar tokens y preservar evidencias. |
| 6 | Revisar si hay más cuentas o servicios relacionados afectados. |
| 7 | Escalar a Seguridad, Dirección o Legal si la cuenta es crítica o hay datos sensibles implicados. |

### Recursos

#### Referencia: Acciones del usuario ante sospecha de compromiso de identidad o acceso

1. Mantener la calma y no seguir intentando acceder si aparecen alertas anómalas o bloqueos no esperados.
2. Informar de inmediato a TIC o al help desk si se observan inicios de sesión no reconocidos, cambios de contraseña no solicitados o avisos MFA no iniciados por el usuario.
3. Anotar la hora, el servicio afectado y el mensaje recibido.
4. No aprobar notificaciones MFA ni reutilizar contraseñas anteriores.
5. Seguir las instrucciones del equipo de respuesta para cambio de credenciales o verificación de identidad.

#### Referencia: Acciones del Help Desk ante posible compromiso de identidad o acceso

1. Abrir un ticket prioritario y verificar la identidad del usuario por un canal alternativo.
2. Recoger:
    1. Cuenta afectada;
    2. Servicio implicado;
    3. Hora de detección;
    4. Tipo de alerta o comportamiento observado.
3. Escalar de inmediato a TIC y al responsable de seguridad si existe acceso confirmado o riesgo para datos sensibles.
4. Coordinar el reseteo de credenciales o el bloqueo temporal si así se indica.
5. Documentar todas las acciones, evidencias y comunicaciones.

#### Información adicional

1. [MITRE ATT&CK - Valid Accounts (T1078)](https://attack.mitre.org/techniques/T1078/)
2. [MITRE ATT&CK - Credential Access Tactic (TA0006)](https://attack.mitre.org/tactics/TA0006/)
3. [NIST SP 800-63B - Digital Identity Guidelines: Authentication and Authenticator Management](https://pages.nist.gov/800-63-4/sp800-63b.html)
4. [NIST SP 800-61 Rev. 2 - Computer Security Incident Handling Guide](https://csrc.nist.gov/pubs/sp/800/61/r2/final)
5. [OWASP - Multifactor Authentication Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Multifactor_Authentication_Cheat_Sheet.html)

