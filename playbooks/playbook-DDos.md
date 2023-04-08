## Playbook: Ataque de DDos

### 0. Preparación

- Practicar diferentes metodos de defensa ante DDos
  - Bloqueo de IP, puertos, usuarios, dominios y URLs externas.
  - Listar, recolectar e identificar diferente información transferida por la red, tanto de forma interna como externa.
  - Listar y editar las reglas del firewall de forma rapida.
- Tener un mapa de la infraestructura de red, tanto lógica como física almacenada en una zona de fácil acceso por los técnicos.
- Adquirir habilidad para realizar de forma rapida bloqueo de usuarios o remover credenciales de autentificación.

### 1. Investigar

- Identificar la fuente del ataque DDos
  - Analizar los registros del servidor para identificar las direcciones IP que generan la mayor cantidad de tráfico y la hora en que se originaron.
  - Utilizar herramientas de monitoreo de red para identificar patrones anormales y determinar las direcciones IP que generan tráfico anormal.
  - Verificar si hay una gran cantidad de tráfico entrante de direcciones IP específicas y determinar si provienen de una misma fuente o de varias fuentes diferentes.

- Analizar el tráfico de red y los registros del servidor para determinar la intensidad y duración del ataque
  - Registrar la hora de inicio y finalización del ataque y la cantidad de tráfico generado durante ese período.
  - Analizar los registros del servidor para determinar el tipo de tráfico que se está generando, por ejemplo, si se trata de tráfico HTTP o UDP.
  - Utilizar herramientas de monitoreo de red para analizar el tráfico entrante y saliente para identificar patrones anormales y determinar la intensidad del ataque.

- Identificar los dispositivos infectados y las direcciones IP utilizadas en el ataque
  - Escanear la red para identificar dispositivos infectados y determinar su papel en el ataque.
  - Analizar los registros del servidor para identificar las direcciones IP que generan la mayor cantidad de tráfico y la hora en que se originaron.
  - Utilizar herramientas de monitoreo de red para analizar el tráfico entrante y saliente para identificar patrones anormales y determinar las direcciones IP que generan tráfico anormal.


### 2. Remediar

**Planificar eventos de reparación** en los que estos pasos se pongan en marcha juntos (o de forma coordinada), con los equipos adecuados listos para responder a cualquier interrupción.

**Considere el momento y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

- Implementar medidas de mitigación de DDos, como la limitación de ancho de banda o la implementación de políticas de filtrado de tráfico malicioso
  - Limitar el ancho de banda disponible para el ataque para minimizar su impacto en la red.
  - Implementar políticas de filtrado de tráfico para bloquear tráfico malicioso y reducir el impacto del ataque.
  - Configurar cortafuegos para filtrar el tráfico entrante y bloquear las direcciones IP que generan tráfico anormal.

- Actualizar los sistemas y software para corregir cualquier vulnerabilidad que pueda estar siendo aprovechada por los atacantes
  - Actualizar el software de seguridad, como el firewall, para asegurarte de que esté protegido contra ataques DDos conocidos.
  - Actualizar el software del sistema operativo y las aplicaciones para corregir vulnerabilidades conocidas y prevenir futuros ataques.

- Bloquear las direcciones IP utilizadas por los atacantes, si es posible
  - Configurar cortafuegos para bloquear las direcciones IP que generan tráfico anormal.
  - Configurar políticas de filtrado de tráfico para bloquear tráfico malicioso que provenga de direcciones IP específicas.
  - Utilizar servicios de protección DDos para bloquear las direcciones IP utilizadas por los atacantes.


### 3. Contención

- Hacer una copia de seguridad de todos los datos almacenados en los servidores con fines forenses.
- Aislar los sistemas y dispositivos afectados para prevenir la propagación del ataque.
  - Configurar políticas de red para bloquear el tráfico generado por los dispositivos infectados externos o internos.
  - Reajustar las medidas de aislamiento de red, como VLAN, para prevenir que el tráfico de ataque se propague.
- Bloquear comunicaciones
  - puertos externos
  - puertos internos
  - usuarios externos
  - usuarios internos

- Reducir el ancho de banda disponible para el ataque para minimizar su impacto.
  - Implementar políticas de ancho de banda para limitar la cantidad de tráfico permitido a través de la red.
  - Utilizar servicios de protección DDos para mitigar el tráfico de ataque y reducir su impacto en la red.
- En casos extremos, deshabilitar los servicios del sistema que están siendo afectados.


### 4. Erradicar

- Implementación de soluciones de mitigación DDos, como el balanceo de carga o la replicación de servicios, para reducir el impacto del ataque.
- Identificación y eliminación de cualquier código malicioso que se esté utilizando para controlar los sistemas afectados por el ataque.
- Corrección de cualquier vulnerabilidad conocida que pueda estar siendo aprovechada por los atacantes.

### 5. Referencia

- Personal de TI capacitado y disponible para responder al ataque y poner en práctica las medidas de mitigación.
- Servicios de protección DDos y herramientas de monitoreo de red.
- Soluciones de filtrado de tráfico, como cortafuegos y sistemas de prevención de intrusiones.
- Hardware adicional, como balanceadores de carga, para reducir el impacto del ataque.

### 6. Comunicar

Elevar el incidente y comunicarlo a la dirección según el procedimiento

- Documentar el incidente según el procedimiento (e informar si procede)

Comunicarse con los asesores jurídicos internos y externos según el procedimiento, incluyendo discusiones sobre el cumplimiento, la exposición al riesgo, la responsabilidad, el contacto con las fuerzas del orden, _etc._.

Comunicarse con los usuarios (internos)

- Comunicar las actualizaciones de la respuesta a incidentes según el procedimiento
- Comunicar el impacto del incidente **y** las acciones de respuesta al incidente

Comunicar los requisitos: "¿qué deben hacer y no hacer los usuarios?"  

Comunicar a los clientes

Contactar con los proveedores de seguros

- Discutir qué recursos pueden poner a disposición, qué herramientas y proveedores apoyan y pagarán, _etc._.
- Cumplir con los requisitos de presentación de informes y reclamaciones para proteger la elegibilidad

### 7. Recuperación

- Evaluar el impacto del ataque y el daño causado a la infraestructura
  - Realizar una evaluación del impacto del ataque para determinar el alcance del daño causado a los sistemas y dispositivos afectados.
  - Identificar cualquier impacto en la disponibilidad, integridad o confidencialidad de los datos o servicios.
  - Evaluar cualquier impacto financiero o de reputación para la organización.

- Restablecer los servicios afectados y los sistemas a su estado normal de funcionamiento
  - En caso de haber tenido que realizar modificaciones en la configuración para soportar el ataque restablecer la configuración predeterminada de los sistemas y dispositivos afectados.
  - Desbloquear puertos, dominios, usuarios y direcciones IP que se utilizaron durante el ataque.


### 8. Recursos

- Recopilar cualquier información adicional, como informes de actividad sospechosa o registros del servidor, para futuras investigaciones
  - Recopilar registros o logs de la red y los sistemas afectados durante el ataque para analizarlos posteriormente.
  - Utilizar herramientas de análisis de registros para identificar patrones en el tráfico de red durante el ataque.
  - Utilizar la información recopilada para mejorar las medidas de mitigación y protección contra futuros ataques DDos.


#### Referencia: Acciones del usuario ante un ataque DDos

- Mantenga la calma y respire profundamente.
- Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  Todo ayuda.  Documenta lo siguiente:
  - ¿Qué has notado?
  - ¿Cuándo ocurrió por primera vez, y con qué frecuencia desde entonces?
  - ¿A qué datos suele acceder?
  - ¿Con quién más se ha puesto en contacto en relación con este incidente y qué le ha dicho?
- Ponte en contacto con el [servicio de asistencia](https://github.com/orgs/IES-Rafael-Alberti/teams/22-23-ciberseguridad-grupo-1) y sé lo más servicial posible.
- Ten paciencia: deja que el personal informático lo controle, ¡puedes estar protegiendo a otros de un daño!  **Gracias.**

#### Referencia: Acciones del Help Desk ante un presunto ataque de DDos

-  Mantenga la calma y respire profundamente.
- Abra un ticket para documentar el incidente, según el procedimiento.
- Utiliza tu mejor criterio para decidir qué pasos priorizar (por ejemplo, si las conexiones provienen todas de internet contacte con el proveedor de servicios para que bloqueen las direcciones y acceda al firewall de la empresa para bloquear las IPs maliciosas).
- Toma notas sobre el problema o los problemas utilizando la aplicación de notas de voz de tu smartphone o con papel y lápiz.  2. Si se trata de un informe de usuario, haga preguntas detalladas, incluyendo
  - ¿Qué has notado?
  - ¿Cuándo ocurrió por primera vez, y con qué frecuencia desde entonces?   
  -  ¿Con quién más se ha puesto en contacto en relación con este incidente y qué le ha dicho?
- Haga las preguntas de seguimiento que sean necesarias.  **Usted es una persona que responde al incidente, contamos con usted.**
- Registre toda la información en el ticket, incluyendo notas manuscritas y de voz.
-  Póngase en contacto con el [equipo de seguridad](https://github.com/orgs/IES-Rafael-Alberti/teams/22-23-ciberseguridad-grupo-1) y prepárese para participar en la respuesta según las indicaciones: investigación, reparación, comunicación y recuperación.

### 9. Información adicional

- [¿Qué es un DDos?](https://www.innovaciondigital360.com/cyber-security/ataque-DDos-que-es-como-se-hace-como-defenderse/)
- [Remediaciones](https://www.innovaciondigital360.com/cyber-security/ataque-DDos-que-es-como-se-hace-como-defenderse/)

