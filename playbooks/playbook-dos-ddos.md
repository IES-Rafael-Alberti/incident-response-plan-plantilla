
## Playbook: Denegación de servicio/Denegación de servicio distribuida

**Investigar, remediar (contener, erradicar) y comunicar en paralelo!**

Asigne los pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utilice su mejor criterio.

### Preparación

Asigne los pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es puramente secuencial. Utilice su mejor criterio.

Fase inicial en la que las organizaciones prepararán las medidas para asegurarse que pueden responder efectivamente:

* Determinar y definir los Roles del equipo de Operaciones
    * Incident Commander (IC): Gerente del riesgo.
    * Incident Commander-Adjunto: Gerente de Amenaza.
    * Escriba: Documenta el incidente
    * SME: Gerente de Vulnerabilidad
* Revise y mantener la línea de tiempo.
* Entrevistate con los usuarios, gerentes y seguridad física

### Investigar

1. Cantidad máxima de datos entrantes
2. Detección de paquetes desconocidos o no identificados de remitentes desconocidos
3. Alerta de los sistemas de cortafuegos y de detección de intrusos

* Clasificar el incidente
* Solicitar captura de paquetes
* Realizar escaneos

1. Mantenga un informe claro de conciencia situacional y cronogramas durante todo el proceso.
2. Comprenda cuál es la fuente desde donde está ocurriendo el DOS/DDos.
3. Verifique la ubicación de las fuentes: verifique la reputación de IP masiva y los detalles de la ubicación [https://www.bulkblacklist.com/](https://www.bulkblacklist.com/) coloque las direcciones IP aquí y verifique la reputación
4. Compruebe el número de puerto al que se dirige.
5. ¿Qué es la acción del cortafuegos? – se permite el tráfico
6. Compruebe si se está segmentando un único destino o varios destinos
7. Compruebe la criticidad del destino y la aplicación alojada en el destino.
8. Haga ping al destino o verifique que la aplicación sea accesible o no
9. Verifique sus firmas WAF e IPS: cualquier firma DDOS se haya activado o no.
10. ¿Cuáles son los picos observados en comparación con un día normal durante el mismo tiempo?
11. El tráfico podría ser enorme: considere bloquear todo a nivel de FW.
12. ¿Consideración del bloqueo basado en GEO? – Tráfico IF desde una ubicación no comercial
13. Debería estar en su lugar: DESHABILITAR ICMP en el nivel de Firewall.

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos (o de forma coordinada), con los equipos adecuados listos para responder a cualquier interrupción.
* **Considere el momento y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contención

1. Identificar los sistemas que han sido objeto de ataques
2. Identificar los sistemas que han sufrido cortes o degradación de los servicios
3. Identificar los servicios de TI afectados 
4. Identificar los sistemas críticos que están en riesgo de DoS/DDoS
5. Identificar el tipo de paquetes utilizados 
6. Identificar los puntos críticos de estrangulamiento o cuellos de botella en la red que podrían aumentar el efecto 
7. Identificar la fuente y si sus redes pueden ser bloqueadas
8. Identificar el desvío de tráfico adicional o el filtrado de salida para bloquear más tráfico 
9. Identificar las herramientas utilizadas para detectar el ataque

### Erradicación

* Triaje y confirmación del informe de incidentes
* Solicitar un parche del sistema 
* Solicitar un segmento de red u otro cambio de configuración 
* Añadir/Cambiar/Eliminar Sistema/Sitio/Red afectado

1. Identificar cualquier curso alternativo para las operaciones comerciales que se verán afectadas 
2. Crear una lista blanca de IPs de origen y servicios que deben ser permitidos en la red
3. Coordinar con la continuidad del negocio la transferencia de servicios a cualquier sitio alternativo.
4. Coordinar con el proveedor de servicios de Internet para determinar la mejor forma de actuar.

### Recuperación

* Restaurar los servicios afectados
* Actualizaciones de IDS/IPS y cortafuegos 
* Determine soluciones alternativas de entrada y salida de la red si el malware causa DoS

### Comunicar

1. Elevar el incidente y comunicarlo a la dirección según el procedimiento
2. Documentar el incidente según el procedimiento (e informar si procede)
3. Comunicarse con los asesores jurídicos internos y externos según el procedimiento, incluyendo discusiones sobre el cumplimiento, la exposición al riesgo, la responsabilidad, el contacto con las fuerzas del orden, _etc._.
4. Comunicarse con los usuarios (internos)
    1. Comunicar las actualizaciones de la respuesta a incidentes según el procedimiento
    2. Comunicar el impacto del incidente **y** las acciones de respuesta al incidente (por ejemplo, contención: "¿por qué está caído el archivo compartido?")
    3. Comunicar los requisitos: "¿qué deben hacer y no hacer los usuarios?"  
5. Comunicar a los clientes
    1. Centrarse especialmente en aquellos cuyos datos se vieron afectados
    2. Generar las notificaciones requeridas en base a las regulaciones aplicables (particularmente aquellas que puedan considerar el defacement como una violación de datos o que requieran notificaciones de otro tipo).
6. Contactar con los proveedores de seguros
    1. Discutir qué recursos pueden poner a disposición, qué herramientas y proveedores apoyan y pagarán, _etc._.
    2. Cumplir con los requisitos de presentación de informes y reclamaciones para proteger la elegibilidad
7. Considerar la posibilidad de notificar e implicar a las fuerzas del orden.
    1. [Aplicación de la ley local](#TODO-link-to-actual-resource)
    2. 1. [Aplicación de la ley a nivel estatal o regional](#TODO-link-to-actual-resource)
    3. 1. [Fuerzas de seguridad europeas o nacionales](#TODO-link-to-actual-resource)
8. Comuníquese con los proveedores de seguridad y de TI 
    1. Notifique y colabore con [proveedores gestionados](#TODO-link-to-actual-resource) según el procedimiento
    2. Notificar y colaborar con [consultores de respuesta a incidentes](#TODO-link-to-actual-resource) por procedimiento.