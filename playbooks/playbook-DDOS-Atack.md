# Playbook Ataque DDoS
Comenzaremos con saber lo que es un ataque DDoS: es un tipo de ciberataque en el que múltiples sistemas comprometidos, a menudo distribuidos en diferentes ubicaciones geográficas,
se utilizan para inundar un objetivo específico, como un servidor o una red, con un gran volumen de tráfico de datos. El objetivo de este ataque es abrumar los recursos del sistema objetivo,
como el ancho de banda de red, la capacidad de procesamiento o la memoria, de manera que el servicio se vuelva inaccesible para los usuarios legítimos.  

Los motivos detrás de los ataques DDoS pueden variar, desde el sabotaje, la extorsión o la competencia desleal hasta el activismo político o social.  

## Pasos de Respuesta ante Incidentes

Si tu organización es víctima de un ataque de DoS o DDoS, los siguientes pasos pueden ayudar en la contención, remedio y recuperación del sistema:

## Paso 1: Identificar el Ataque
• Verificar que el tráfico sospechoso sea realmente un ataque de DDoS revisando los registros del sistema y los datos de tráfico de red.  
o Asegurarse de que la pérdida de servicio no se deba a otros factores como un fallo interno del servidor o una interrupción del proveedor de servicios de Internet/Cloud.  
o Verificar si la organización está esperando un gran volumen de tráfico (es decir, lanzamiento de un nuevo servicio o producto, promociones por tiempo limitado, etc.)  
• Identificar los activos críticos como servidores y bases de datos que están siendo atacados:  
o Obtener las direcciones IP de los sistemas siendo atacados.  
o Obtener el diagrama de red para los sistemas atacados.  
o Identificar los servicios que el sistema proporciona (es decir, Servidor Web, DNS, Servidor de Correo, etc.)  
• Identificar el tipo de ataque de DDoS (Volumétrico, Amplificación, Syn Flood, Protocolo, etc.)  
o Obtener más detalles sobre los paquetes maliciosos (capa OSI, Número de Puerto de Destino, Protocolo de Comunicación, etc.)  

## Paso 2: Contener el Ataque
• Identificar si el ataque de DDoS explota un servicio particular (es decir, ICMP) o está atacando un puerto específico.  
* Deshabilitar ese servicio o cerrar el puerto si no son esenciales para la operación del sistema atacado.
* Obtener las direcciones IP de los paquetes entrantes de DDoS e implementar control de acceso para bloquear esas direcciones IP.  
* Implementar limitación de velocidad para restringir el número de paquetes que pueden ser enviados desde una sola dirección IP.  
* Verificar si los proveedores de servicios de Internet o Cloud pueden proporcionar a la organización algún tipo de defensa contra DDoS:  
o Limpieza de tráfico / Canal Limpio  
o Sinkholing (Bloqueo de direcciones IP maliciosas conocidas)  
o Enrutamiento nulo (Implementar como último recurso)  
• Desviar el tráfico y cambiar las operaciones a servidores alternativos, si los hay.  

## Paso 3: Adquirir Evidencia Forense para el Análisis de la Causa
La recopilación de evidencia forense proporcionará información sobre la naturaleza del ataque, incluido el tipo de ataque DDoS, 
la fuente del tráfico de ataque, el impacto del ataque y los tipos de sistemas atacados.
Analizar los datos para determinar la causa raíz del ataque e identificar cualquier vulnerabilidad que pueda haber sido explotada.  

Los tipos de evidencia forense a recopilar incluyen:  
• Registros de tráfico de red de firewalls, routers, conmutadores y otros dispositivos de red para identificar la fuente y el tipo de tráfico involucrado en el ataque.  
• Registros del sistema de servidores y otros sistemas para identificar cualquier actividad inusual o problemas de rendimiento.  
• Datos de flujo de red para analizar el volumen y la dirección del tráfico, e identificar cualquier patrón o anomalía.  
• Capturas de paquetes para analizar el contenido del tráfico de red e identificar cualquier carga maliciosa o exploits.  

## Paso 4: Reforzar tus Sistemas
El endurecimiento del sistema puede ayudar a proteger sitios web y redes contra ataques DDoS y es crucial para garantizar que el sitio web permanezca disponible y accesible para usuarios legítimos.
Aquí hay algunos pasos para endurecer los recursos web:  
• Usar firewalls de aplicaciones web (WAFs) para filtrar el tráfico de direcciones IP o rangos maliciosos conocidos.  
• Implementar limitación de velocidad para restringir la cantidad de tráfico que puede ser enviado al sitio web desde una única fuente o dirección IP.  
• Desplegar balanceadores de carga para distribuir el tráfico entrante entre múltiples servidores, evitando que un único servidor sea sobrecargado por un ataque DDoS.  
• Mantener los dispositivos de red actualizados con el firmware más reciente y los parches de seguridad para abordar las vulnerabilidades conocidas.  
• Revisar y actualizar las configuraciones de firewall y seguridad de red para limitar el acceso a sistemas y proteger contra tráfico no autorizado.  
• Realizar segmentación de red para separar los activos críticos de los servidores de cara al público.  
• Suscribirse a un servicio de protección contra DDoS ya sea de proveedores de servicios de Internet o Cloud.  

## Paso 5: Notificar a los Interesados e Informar sobre el Incidente
• Notificar a los clientes, proveedores y empleados sobre posibles caídas del sistema o dispositivos de red comprometidos.  
• Se recomienda encarecidamente informar el caso a SingCERT a través de su Formulario de Reporte de Incidentes, ya que la información podría ayudar a alertar y asistir a otras personas y organizaciones.  
• Si hay pérdida(s) monetaria(s) o actividad criminal involucrada, puedes presentar un informe policial.
