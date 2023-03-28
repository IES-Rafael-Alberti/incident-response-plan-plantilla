# Playbook para responder a un ataque DDoS
### Identificar, informar, configurar y comunicar!
Asigna pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este playbook no es meramente secuencial. Utilice su mejor criterio.

## Identificar el ataque

El primer paso es determinar si realmente se está produciendo un ataque DDoS. A menudo, los sistemas afectados pueden parecer lentos o inaccesibles, pero esto también puede ser causado por problemas de red o por el tráfico legítimo excesivo. Para determinar si realmente se trata de un ataque DDoS, debemos realizar las siguientes acciones:

- Monitorear los registros del servidor para ver si hay un aumento inusual en la cantidad de tráfico de entrada.
- Verificar si hay múltiples solicitudes de un solo origen o varias solicitudes de múltiples orígenes.
- Utilizar herramientas de análisis de red, como Wireshark, para capturar y analizar el tráfico de red.

Si se confirma que estamos siendo objeto de un ataque DDoS, debemos pasar al siguiente paso.

## Informar al proveedor de servicios de internet (ISP)

Es importante informar al proveedor de servicios de internet (ISP) para que puedan ayudarnos a mitigar el ataque. Muchos ISP tienen medidas de seguridad en su lugar para detectar y mitigar los ataques DDoS. Al informarles, podemos obtener su asistencia para proteger nuestra red y reducir el impacto del ataque. Es importante tener disponible el número de teléfono o dirección de correo electrónico de contacto del proveedor de servicios de internet.

## Configurar el cortafuegos para bloquear el tráfico no deseado

Para reducir el impacto del ataque, podemos configurar el cortafuegos para bloquear el tráfico no deseado. Podemos hacer esto configurando las reglas del firewall para bloquear todo el tráfico excepto el tráfico de los puertos necesarios para el funcionamiento normal del sistema. También podemos bloquear direcciones IP sospechosas o todo el tráfico entrante de un país en particular si detectamos que la mayor parte del tráfico malintencionado proviene de ese país.

## Redirigir el tráfico legítimo a servidores alternativos

Otra estrategia para reducir el impacto del ataque es redirigir el tráfico legítimo a servidores alternativos. Podemos hacer esto mediante la configuración de DNS o mediante la redirección de tráfico a través de un balanceador de carga. Si bien esto puede no detener completamente el ataque DDoS, puede reducir su impacto al asegurarnos de que el tráfico legítimo pueda llegar a nuestros servidores.

## Monitorear el tráfico y ajustar las medidas de seguridad

Es importante monitorear continuamente el tráfico de red para asegurarnos de que las medidas de seguridad que hemos implementado estén funcionando correctamente. Si detectamos nuevas fuentes de tráfico malicioso, debemos ajustar nuestras medidas de seguridad para bloquearlos.

## Mantener informados a los usuarios

Durante un ataque DDoS, es importante mantener informados a los usuarios sobre el estado de nuestros sistemas y las medidas que estamos tomando para mitigar el ataque. Podemos hacer esto mediante la publicación de actualizaciones en nuestro sitio web o a través de las redes sociales.
