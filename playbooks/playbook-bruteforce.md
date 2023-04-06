# **Playbook: Ataque de Fuerza Bruta**

## **Investigar, remediar (contener, erradicar), y comunicar en paralelo!**

Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es meramente secuencial. Utilice su mejor criterio.

## 1. **Investigar**

1. **Detectar el ataque:** generalmente se notificará que se está produciendo un posible ataque de fuerza bruta, ya sea por parte de un sistema de detección de intrusiones o de un usuario que ha notado múltiples intentos de inicio de sesión fallidos.
    - Determinar el **número total de intentos de inicio de sesión** que han ocurrido.
    - Comprender **las acciones de los usuarios** en respuesta a los intentos de inicio de sesión fallidos (por ejemplo, ¿han informado al equipo de seguridad?, ¿han intentado restablecer su contraseña?, ¿han informado a otros usuarios?)
    - Identificar el alcance del ataque y la naturaleza del objetivo (por ejemplo, ¿está dirigido a una cuenta específica?, ¿a una aplicación de terceros?, ¿a un servicio específico?)
2. **Recopilar información de registro** sobre los intentos de inicio de sesión fallidos:
    - Logs del sistema o visor de eventos
    - Logs de la aplicación o servicio objetivo
    - Cualquier otra fuente de eventos relevante.
3. **Analizar la información de registro** para comprender la naturaleza del ataque:
    - Identificar intentos de inicio de sesión fallidos (apuntando IP de origen, nombres de usuario y contraseñas usados en el ataque)
    - Determinar la frecuencia y la duración del ataque.
    - Analizar cualquier otro comportamiento sospechoso registrado durante el ataque (por ejemplo, solicitudes de inicio de sesión desde direcciones IP sospechosas)
4. **Identificar los objetivos del ataque** y comprender su importancia:
    - Determinar qué cuentas, aplicaciones o servicios específicos estaban siendo atacados.
    - Evaluar la importancia y la sensibilidad de los datos asociados con esos objetivos.
    - Determinar qué otras cuentas, aplicaciones o servicios podrían verse afectados si el ataque tiene éxito.
5. **Evaluar la gravedad del ataque** y tomar medidas en consecuencia:
    - Determinar si el ataque está en curso o ha finalizado.
    - Evaluar el impacto potencial en el negocio.
    - Comprobar la integridad de la información sensible del sistema o de las aplicaciones afectadas.

## **2. Remediar**

- **Establecer prioridades:** Identificar los sistemas y servicios afectados que requieren atención inmediata y priorizar la respuesta en consecuencia.
- **Reemplazar credenciales de acceso afectadas:** Identificar todas las credenciales de acceso comprometidas y reemplazarlas. Fortalecer las políticas de contraseñas para prevenir futuros ataques.
- **Implementar medidas de seguridad adicionales:** Implementar medidas de seguridad adicionales para prevenir futuros ataques, por ejemplo, los sistemas SIEM, IDS e IPS; así como la implementación de autenticación multifactor y la segmentación de red.
- **Planificar eventos de remediación** en los que se coordinen las acciones necesarias, con los equipos adecuados listos para responder a cualquier interrupción.

## **3. Contención**

- Implementar medidas de seguridad adicionales para prevenir la propagación del ataque.
- Identificar y aislar los sistemas afectados para prevenir que el ataque se propague a otros sistemas en la red.
- Monitorear de forma continua el tráfico de red para detectar cualquier inicio de sesión proveniente de una IP sospechosa y bloquearlo inmediatamente.
- Implementar medidas de seguridad adicionales, tales como firewalls y sistemas de detección de intrusiones, para prevenir futuras intrusiones y ataques similares.
- Bloquear, en caso de que lo hubiere, cualquier cuenta sospechosa o inicio de sesión exitoso con la IP de origen del atacante.

## 4. Erradicar

- Instalación y puesta en marcha de sistemas SIEM, IPS e IDS.
- Evitar que root pueda inicar sesión desde SSH.
- Limitar el número de inicios de sesión en una IP específic

## 5**. Referencia: Recursos de remediación**

- Proporcionar **información sobre herramientas y tecnologías de seguridad** que pueden ayudar en la prevención de futuros ataques.
- **Proporcionar información sobre recursos adicionales** que podrían ayudar en la prevención de futuros incidentes, como capacitación en seguridad, software de seguridad y servicios de consultoría.
- **Comunicar de manera efectiva con los interesados y partes afectadas**, incluyendo a los clientes y socios proporcionando detalles precisos del incidente, las acciones tomadas y cómo se está trabajando para prevenir incidentes similares en el futuro.

## 6**. Comunicar**

- Proporcionar informes detallados sobre las acciones realizadas y los resultados obtenidos en la respuesta al incidente.
- Notificar a los equipos de seguridad y a la alta dirección sobre el incidente y su impacto en los sistemas afectados y en la organización en general.
- Proporcionar actualizaciones regulares sobre la respuesta al incidente y el progreso hacia la resolución del mismo.

## 7**. Recuperación**

- Verificar que los sistemas estén operativos y funcionando correctamente.
- Realizar pruebas adicionales para asegurarse de que los sistemas no hayan sido comprometidos de ninguna otra manera.
- Identificar y remediar cualquier posible punto débil que pueda haber contribuido al incidente.
- Revisar y mejorar los planes de respuesta a incidentes para estar mejor preparados en el futuro.

## 8**. Recursos**

- Proporcionar un listado de servicios de [asistencia, contactos de emergencia y proveedores de servicios de seguridad](#TODO-enlace-al-recurso) que puedan ayudar en la respuesta al incidente.
- Proporcionar un listado de herramientas y tecnologías de seguridad que pueden ser útiles.
- Proporcionar recursos adicionales, como sitios web de información de seguridad y foros de discusión.

## 9**. Información adicional**

- [Acerca de los ataques de fuerza bruta](https://protecciondatos-lopd.com/empresas/ataques-fuerza-bruta/)
    - Al final de la página puede ser de ayuda la observación de los ejemplos de ataques de fuerza bruta reales que se llevaron a cabo con éxito.
- [Página de incibe acerca de los sistemas SIEM, IDS e IPS](https://www.incibe.es/protege-tu-empresa/blog/son-y-sirven-los-siem-ids-e-ips).