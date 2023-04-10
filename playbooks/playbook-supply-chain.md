# Playbook: Compromiso de la cadena de suministro

## Objetivo
---
El objetivo de este playbook es proporcionar una serie de pasos para poder prepararse, detectar, responder y recuperarse de un compromiso de la cadena de suministro
### Fase de Preparación
---
1. Identificación de puntos críticos en la cadena:
	- Identifique los puntos que no puedan ser reemplazados o que una interrupción corta pueda ser gravemente perjudicial para la empresa.
2. Desarrollo e implementación de planes de contingencia
	- Desarrolle e implemente planes que ideen servicios o activos alternativos o redundantes para todos los puntos posibles de la cadena
3. Actualización de software:
	- Mantener actualizado el software con actualizaciones compatibles con la infraestructura de la empresa.

### Fase de Detección
---
1. **Determinar** qué punto de la cadena está comprometido
	* Esto es realmente importante, ya que dependiendo qué punto de la cadena de suministro esté comprometida, la ruta de actuación cambia
	1. **Comprobar** la página web
		1. Seguridad de la página Web. Compruebe:(Seguir otros playbooks segun la situacion)
		* Versiones de los plugins y software utilizados en la web
		* Revisión de los elementos que interactúan con el usuario
		2. Disponibilidad de la página. Compruebe:
		* Certificados en regla
		* Comprobación del servicio CDN 
		* Comprobación del tráfico de red 
	2. **Comprobar** la infractura de la empresa.(Seguir otros playbooks segun la situacion)
		**Los 3 primeros pasos salón investigan la parte lógica, la parte física de la infraestructura se investiga en el último paso**
		1. Servidores. Compruebe:
		* Registros de acceso
		* Registro de actividad
		* Búsqueda de malware
		* Procesos ejecutados
		* Usuarios autentificados
		2. Equipo. Compruebe:
		* Búsqueda de malware
		* Registro de actividad
		* Registros de acceso
		* Procesos ejecutados
		* Usuarios autentificados
		* Software necesario para el negocio
		3. Red. Compruebe
		* Datos transferidos
		* Conexión de IP externas
		* Reglas del firewall
		* Host conectados a dominios externos
		4. Infraestructura física. Compruebe:
		* Estado del cableado eléctrico
		* Estado del cableado de red
		* Estado de los router
		* Estado físico de los servidores
		* Estado físico de los equipo de oficina
	3. **Revisar** servicios dados por terceros. Compruebe:(Seguir otros playbooks segun la situacion)
		* Servicio de nube
		* Servicio de email
		* Servicio de internet
		* Redes eléctricas
		* Licencia de software
2. **Determine la gravedad.** Considerar:
    * Tiempo inactivo esperado del servicio o equipo
    * Existencia de servicios o activos alternativos, o duplicados de ellos(es decir, ¿es posible reiniciar la cadena con otro servicio o equipo) 
    * Si existen copias de respaldo del servicio o equipo
    * Número de puntos en la cadena afectados( La página web, los equipos de oficina, servidores, etc..)
    * El impacto preliminar en el negocio
    * Si afectan puntos críticos de la cadena
### Fase de Respuesta
---
* **En situaciones de compromiso de la cadena de suministro, lo esencial es la investigación de la causa del compromiso y erradicación del problema para que la cadena vuelva a la normalidad o esté operativa. Ya que en algunos supuestos como un corte de suministro eléctrico, no existen medidas de resiliencia debido a la relación coste-rendimiento de ellas, por lo que es imposible contenerla o no es imposible de contener debido al tiempo que tomaría en realizarse una medida.**
* **Si el compromiso de la cadena está basado en ataques externos, como ransomware, phishing, defacement, etc, en estos casos seguir el playbook correspondiente a tal ataque o situación.**

1. Página Web.
	1.Disponibilidad de la web
	* Creación e implementación de un certificado emitido por ["Let's encrypt"](https://letsencrypt.org/es/)
	* Activavion de servicio CDN de respaldo, ["AWS cloudfront"](https://aws.amazon.com/es/cloudfront/) 
	* Activación de la página web en un hosting externo 'pay-as-you-go' ["AWS"](https://aws.amazon.com/es/pricing/?aws-products-pricing.sort-by=item.additionalFields.productNameLowercase&aws-products-pricing.sort-order=asc&awsf.Free%20Tier%20Type=*all&awsf.tech-category=*all]) y reconfiguración de la redirección a la página
2. Infraestructura de la empresa.
	1. Servidores y equipos.
	* Cuarentena del equipo
	* Actualización del sistema
	2. Red.
	* Bloquear las ip externas
	* Bloquear la transferencia de datos por patrón encontrado
	* Bloquear ip internas
	* Bloquear dominios externos
	* Actualización de reglas del firewall
	3. Infraestructura física
		1. Cableado de red.
		* Añadir cableado temporal para sortear las zonas dañadas
		2. Router y equipo de oficina.
		* Utilización de equipos de repuestos almacenados
		3. Servidores.
		* Reemplazo de partes del servidor en caliente, por piezas almacenadas
3. Servicios de tercero
	1. Servicio de nube
	* Almacenamiento de la información temporalmente en la nube local
	2. Servicio de email
	* Utilizacion de servico de correos alternativo, ["Gmail"](https://www.google.com/intl/es-419/gmail/about/)
	3. Servicio de internet
	* Activación de segunda red de internet
	4. Licencia de Software
	* Utilización de Software alternativo instalado


### Fase de Recuperación 
---
1. Página Web
	1. Seguridad:
	* Investigar y buscar errores o vulnerabilidades en la web
	* Activación del programa bug bounty en ["hackerone"](https://hackerone.com)
	2. Disponibilidad:
	* Iniciar proceso para emisión de un nuevo certificado
	* Desactivación de cdn de respaldo cuando se recupere el principal
	* Desactivación de hosting externo cuando el tráfico recupere su flujo normal 
2. Infraestructura de la empresa.
	1. Servidores.
	* Restauración desde imagen dorada
	* Restauración desde copia de seguridad
	* Actualización y reinicio del sistema
	2. Equipos de oficina.
	* Restauración desde copia de seguridad
	* Actualización y reinicio del sistema
	3. Red
	* Actualización de sistema
	* Actualización de reglas del firewall
	4. Infraestructura física
		1. Cableado de red o internet
		* Llamar a la empresa responsable del mantenimiento de los cableados
		2. Router y equipos de oficina
		* Mandar a reparar los equipos en el caso que sea más asequible que reemplazarlos, si no, reemplazarlos por unidades almacenadas y comprar nuevas unidades de respaldo
		3. Servidores
		* Compra de piezas de necesarias del servidor o Compra de servidor como última medida

3. Servicio de terceros
	1. Servicio de nube
	* Traspaso de datos guardado localmente de forma temporal cuando se recupere la nube o contratación de servicio de nube diferente
	2. Servicio de email
	* Desactivación de servicio alternativo en cuando se recupere el principal
	3. Servicio de internet
	* Desactivación de red secundaria en caso de recuperación de la principal, o contratación de un proveedor diferente en caso de un problema prolongado(3 días hábiles)
	4. Licencia de Software
	* Actualización o compra de licencias necesarias
### Lecciones Aprendidas
---
1. Documentar el incidente desde el inicio, intentando responder a las siguientes preguntas
	* ¿Causa del incidente?
	* ¿Punto de la cadena afectado?
	* ¿Es un punto crítico de la cadena o no?
	* ¿Impacto objetivo en la empresa?
	* ¿Tiempo estimado de recuperación?
2. Informe sobre lecciones aprendidas del incidente 
3. Idee medias a tomar en situaciones similares

### Recursos

#### Información adicional

1. <a name="supply-chain-playbook-ref-1"></a>["¿Que es una supply chain?"](https://www.postgradounab.cl/noticias/supply-chain-que-es-y-por-que-es-importante-para-empresas/#:~:text=%C2%BFQu%C3%A9%20es%20Supply%20Chain%20o,o%20servicio%20ha%20sido%20entregado.)
2. <a name="supply-chain-playbook-ref-1"></a>["¿Que es el bug bounty?"](https://keepcoding.io/blog/que-es-bug-bounty-programa/)





