## Playbook: Amenazas internas

**¡Investiga, remedia (contención, erradicación), y comunicación en paralelo!**

### MITRE

Esta vulnerabilidad ha sido detectada en el MITRE bajo el acceso inicial de Trusted Relationship, dado que puede ser tanto el propio usuario dentro de la empresa, como una organización externa con la que se trabaja y tengamos que darle permisos en la estructura corporativa. 

### Detección

* Revisar de manera habitual las herramientas de análisis de logs y comportamiento en búsqueda de movimientos sospechosos de los usuarios.

* Establecer políticas y mecanismos de alerta temprana ante actividades sospechosas.

* Monitorizar comportamientos sospechosos, como accesos fueras de horario habitual, entre otros.

### Investigación

* Recopilar y analizar evidencias relacionadas, como el registro de acceso, los logs de actividad, entre otros.

* Interrogar al usuario sospechoso y a otros testigos relevantes para obtener información.

* Realizar análisis forense en los equipos y máquinas involucradas.

* Determinar el alcance, impacto e intención de dicha actividad.

### Remedio


#### Contención

* Limitación de acceso al usuario involucrado

* Segmentar la red para evitar mayor acceso para dicho usuario.

* Revocarle los permisos y usuario a la persona investigada.

#### Erradicación

* Si la persona es culpable, avisar a los jefes de la empresa para que procedan a efectuar las acciones pertinentes.

* Guardar el estado de las máquinas y equipos para análisis forenses posteriores.

#### Recuperación

* Restaurar los sistemas y datos afectados, según sea necesario.
* Implementar medidas preventivas para evitar futuros incidentes de amenazas internas.
* Revisar y actualizar el playbook en función de las lecciones aprendidas.
* Compartir información relevante con las autoridades competentes, si corresponde.

#### Referencias: Recursos de recuperación


### Comunicación

* Mantener actualizado a la empresa con respecto a los hallazgos descubiertos acerca de la persona y su actividad.

* En caso de que la persona sea de una empresa ajena con la que se está colaborando, dialogar primero con los jefes de tu empresa para determinar el modo de actuación y luego coordinar con la empresa de la persona investigada para una acción conjunta.

### Recursos

1. <a name="identity-and-access-playbook-ref-1"></a>["Plantilla"](#https://github.com/counteractive/incident-response-plan-template/tree/master)

#### Información Adicional

