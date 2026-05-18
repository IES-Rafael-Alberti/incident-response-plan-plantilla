## Playbook: Identity and Access Compromise

**Investiga, remedia (contén y erradica) y comunica en paralelo.**

Asigna acciones a personas o equipos para que trabajen en paralelo siempre que sea posible. Este playbook no es estrictamente secuencial: aplica criterio operativo según el alcance, el impacto y la evidencia disponible.

### Investigate

`TODO: Ampliar los pasos de investigación, preguntas clave y estrategias para compromiso de identidad y acceso. Justificar su uso con el análisis previo de riesgos, la taxonomía de incidentes y las técnicas MITRE ATT&CK aplicables.`

1. Confirma qué identidad, cuenta, grupo, aplicación o proveedor de identidad puede estar comprometido.
1. Determina el origen probable del compromiso: phishing, reutilización de contraseñas, token robado, sesión secuestrada, credencial expuesta, abuso de MFA, cuenta de servicio o privilegio excesivo.
1. Revisa eventos de autenticación y autorización en SSO, directorio corporativo, VPN, SaaS, IAM cloud, EDR y SIEM.
1. Identifica accesos anómalos: ubicaciones inusuales, horarios atípicos, cambios de dispositivo, imposibles viajes, fallos repetidos, creación de reglas de correo, cambios de MFA o elevaciones de privilegios.
1. Estima el impacto funcional y de información: sistemas accedidos, datos consultados o exfiltrados, permisos concedidos, acciones realizadas y persistencia creada.
1. Documenta indicadores de compromiso, cuentas afectadas, línea temporal y nivel de confianza de cada hipótesis.

### Remediate

* **Planifica ventanas de remediación** en las que las acciones se ejecuten de forma coordinada, con los equipos adecuados preparados para responder a interrupciones.
* **Valora el momento y los efectos colaterales** de cada acción: bloquear cuentas, revocar sesiones o rotar credenciales puede interrumpir procesos críticos.

#### Contain

`TODO: Personalizar las medidas tácticas y estratégicas de contención para compromiso de identidad y acceso.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

* Revoca sesiones activas y tokens de acceso de las cuentas afectadas.
* Bloquea temporalmente cuentas comprometidas o reduce sus privilegios al mínimo necesario.
* Fuerza el restablecimiento de credenciales y la reinscripción de MFA cuando exista sospecha de secuestro de factor o dispositivo.
* Deshabilita reglas de correo, aplicaciones OAuth, claves API, cuentas de servicio o consentimientos sospechosos.
* Aplica reglas de acceso condicional o restricciones por ubicación, dispositivo y riesgo.
* Aumenta la monitorización de cuentas relacionadas, grupos privilegiados y activos críticos.

`TODO: Considerar la automatización de medidas de contención mediante herramientas de orquestación.`

#### Eradicate

`TODO: Personalizar las medidas tácticas y estratégicas de erradicación para compromiso de identidad y acceso.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

* Elimina persistencia asociada a la identidad: reglas de reenvío, aplicaciones autorizadas, claves, certificados, tokens, cuentas creadas y miembros añadidos a grupos.
* Rota credenciales de cuentas humanas, cuentas de servicio, secretos de aplicaciones y claves API que hayan podido quedar expuestas.
* Corrige configuraciones débiles de IAM, MFA, acceso condicional y privilegios excesivos detectadas durante la investigación.
* Revisa dispositivos usados por la cuenta afectada y aplica limpieza, reinstalación o aislamiento cuando existan indicios de malware o robo de tokens.
* Valida que no quedan sesiones activas, privilegios indebidos ni accesos anómalos antes de pasar a recuperación.

#### Reference: Remediation Resources

`TODO: Especificar recursos financieros, humanos y logísticos necesarios para completar la remediación.`

### Communicate

`TODO: Personalizar los pasos de comunicación para compromiso de identidad y acceso.`

`TODO: Especificar herramientas, procedimientos y personas implicadas para cada paso, o referenciar el plan general.`

Además de los pasos y criterios generales del plan de respuesta:

1. Informa al Incident Commander del alcance provisional, nivel de privilegio de las cuentas afectadas y sistemas accedidos.
1. Coordina con Legal, Cumplimiento y Protección de Datos si existe posibilidad de acceso a información personal, regulada o confidencial.
1. Comunica a los usuarios afectados qué deben hacer y qué no deben hacer: no borrar mensajes, no reutilizar contraseñas, no aceptar nuevas solicitudes MFA y reportar actividad sospechosa.
1. Prepara mensajes internos diferenciando hechos confirmados, hipótesis y acciones en curso.

### Recover

`TODO: Personalizar los pasos de recuperación para compromiso de identidad y acceso.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

Además de los pasos y criterios generales del plan de respuesta:

1. Restablece el acceso de las cuentas afectadas solo tras validar credenciales, MFA, dispositivos y privilegios.
1. Verifica que los sistemas críticos no presentan actividad posterior al compromiso.
1. Mantén vigilancia reforzada sobre las identidades afectadas y grupos privilegiados durante el periodo definido por el IC.
1. Actualiza reglas de detección, casos de uso del SIEM y controles IAM con las lecciones aprendidas.

### Resources

#### Additional Information

1. <a name="identity-and-access-playbook-ref-1"></a>[MITRE ATT&CK: Credential Access](https://attack.mitre.org/tactics/TA0006/)
1. <a name="identity-and-access-playbook-ref-2"></a>[MITRE ATT&CK: Valid Accounts](https://attack.mitre.org/techniques/T1078/)
