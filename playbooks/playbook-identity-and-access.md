
## Playbook: Compromiso de identidad y acceso

**Relación con el MITRE**

### Matriz de MITRE

Uno de los peligros que se ha podido detectar, es la vulnerabilidad de la identidad y acceso de los usuarios de la empresa, específicamente las credenciales de acceso para poder alcanzar información privilegiada entre otro tipo de actividades nocivas. 

La vulnerabilidad de credenciales puede llevar a multitud de problemas, obteniendo acceso a niveles críticos de la empresa, a información privilegiada, e incluso si los permisos lo permiten, instalar malware dentro de los ordenadores a los que tenga acceso de manera remota. 

La manera en la que se puede llegar a acceder a estas cuentas, lo más habitual es el phishing, siendo ejecutado por el mismo usuario a través de un correo malicioso o link malicioso cuando navegan por las redes, pudiendo hacer que se instale en el ordenador o máquina, además de poder intentar hacer que otros usuarios puedan ser afectados por ese mismo.


**¡Investiga, remedia (contención, erradicación), y comunicación en paralelo!**

### Investigación

1. Lo primero es revisar las credenciales del usuario que se cree que ha sido vulnerado, para comprobar hasta que punto puede acceder en el sistema.
2. Revisar si no ha sido una falsa alarma, contactando con la persona dueña de las credenciales.
3. Una vez descubierto que las credenciales han sido comprometidas, preguntar al usuario sobre puntos posibles que haya podido comprometerse la seguridad, desde si ha abierto correos extraños, a si ha descargado nuevo software. También se debe revisar el puesto de trabajo por si hay anomalías.
4. Una vez descubierto el método que se usó para comprometer las credenciales, revisar si hay posibilidad de otras víctimas.
5. Revisar si los afectados tenían información sensible en sus cuentas asociadas o en el equipo, y usar los logs para determinar su último acceso.

### Remedio


#### Contención

* Despojar al usuario comprometido de todo permiso y desactivarlo.
* Pasar a resetear todas las contraseñas asociadas al usuario.
* Activar el multi-factor donde sea posible.
* Desactivar login remoto del usuario.
* Revocar todo token de autenticación de los usuarios afectados.
* Si una organización externa ha sido detectada en la investigación, avisar a dicha organización del compromiso de seguridad.
* Siguiendo el paso anterior, bloquear el dominio para evitar recibir más notificaciones o emails de dicha organización.
* Si se ha detectado malware, se debe preservar una muestra de ese malware y analizarla.
* Aislar todos los sistemas infectados, sin apagar a menos que sea absolutamente necesario. Preservar los sistemas para investigaciones forenses posteriores.
* Bloquear todos los Indicadores de Compromiso asociado al sistema de email, firewall y otros sistemas de seguridad.

#### Erradicación

* Preservar artefactos, sistemas y copias de seguridad relevantes acordado a la sensibilidad y escala del incidente, dado que puede ser importante para análisis forenses futuros.
* Preservar cualquier dato volatil que pueda ser recogido durante las fases anteriores.
* Una vez preservado todo lo anterior, reemplaza o reconstruye los sistemas.

#### Recuperación

* Restaurar los sistemas afectados con una copia de seguridad limpia, de antes de la infección si es posible.
* Para aquellos que no puedan ser restaurados con una copia de seguridad, reconstruye las máquinas con una imagen limpia o desde el inicio.
* Remediar toda vulnerabilidad y debilidades identificadas en la investigación.
* Resetear contraseñas de todas las cuentas afectadas o crear cuentas de reemplazo y dejar las cuentas afectadas desactivadas de manera permanente.
* Continuar la monitorización de actividad maliciosa a este incidente por un periodo de tiempo prolongado.

#### Referencias: Recursos de recuperación


### Comunicación

Adicionalmente a todo lo anterior, se debe tener esto en cuenta:

1. Mantener una comunicación constante entre los equipos.
2. Mantener actualizados a los usuarios afectados de la evolución de la investigación.
3. Al final de la investigación, hacer una reunión para resumir todo lo acontecido y cómo mejorar la seguridad.

### Recursos

1. <a name="identity-and-access-playbook-ref-1"></a>["Plantilla"](#https://github.com/counteractive/incident-response-plan-template/tree/master)
2. <a name="Compromised Credentials"></a>["Informacion sobre Credenciales Comprometidas en un Playbook"](#https://frsecure.com/compromised-credentials-response-playbook/)

#### Información Adicional

