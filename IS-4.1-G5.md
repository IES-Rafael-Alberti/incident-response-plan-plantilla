# Plan de Respuesta a Incidentes de Ciberseguridad

## Documento IS-4.1-G5

Autores: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo

Grupo: G5 | Fecha: Mayo 2026

---

## Introducción

Basándonos en el análisis que realizamos previamente, hemos creado un plan para responder cuando algo malo suceda en los sistemas de la empresa. Este plan sirve para que todos sepamos qué hacer: quién es responsable, cómo comunicarnos, qué pasos seguir para solucionar el problema y cómo recuperarse después.

La empresa que analizamos trabaja con tecnología. Tiene computadoras, servidores, información de clientes, aplicaciones de negocio y una tienda online. Si algo falla o es atacado, la empresa pierde dinero y confianza. Por eso tenemos que estar listos para actuar rápido. El objetivo es responder cuando algo malo pase, evitar que el daño sea grande, recuperar la información sin perder nada importante y aprender de cada problema.

---

## Plan de Respuesta a Incidentes

Nuestro plan tiene seis fases. Cuando ocurre un problema, pasamos por cada una en orden.

### Preparación

Antes de que algo malo suceda, nos preparamos. Alguien vigila si algo raro ocurre en la red. Necesitamos formas seguras de comunicarnos cuando hay emergencia: un chat, un teléfono. Decidimos quién es responsable de cada cosa: alguien dirige, alguien investiga, alguien habla con otros departamentos. Tenemos procedimientos escritos para cada tipo de problema y copias de seguridad de los datos importantes. Si no nos preparamos, cuando algo malo suceda todo será más lento y más caro.

### Identificación

Cuando alguien ve algo raro, lo reporta. Podría ser un correo extraño, una computadora que se comporta mal, o algo que cambió sin permiso. El equipo de seguridad decide si es realmente un problema o solo una falsa alarma. Tenemos reglas claras: si hay daño en las operaciones o en los datos, es un problema. Si solo es una alerta sin daño, probablemente no sea problema. Si hay duda, es mejor responder. Una vez confirmado, le ponemos un nombre al problema.

### Contención

Ya que sabemos que hay un problema, necesitamos detener que se propague. Si una máquina está infectada, la desconectamos de la red. Si una contraseña fue robada, la cambiamos inmediatamente. Si detectamos un sitio web peligroso, bloqueamos el acceso. En esta fase, el objetivo es evitar que el daño sea mayor, aunque todavía no hemos eliminado completamente el problema.

### Erradicación

Ahora eliminamos completamente lo que causó el problema. Si hay malware, lo borramos. Si hay una puerta que dejó el atacante, la cerramos. Si hay una vulnerabilidad que fue explotada, la parcheamos. Hacemos escaneos para asegurar que todo está limpio. A veces esto es difícil porque el atacante podría haber dejado cosas escondidas.

### Recuperación

Volvemos los sistemas a funcionar normalmente. Si desconectamos una máquina, la volvemos a conectar. Si apagamos un servidor, lo encendemos. Restauramos datos desde copias de seguridad si fue necesario. Después de la recuperación, todo debe funcionar bien y estar seguro. Monitoreamos intensamente durante los días siguientes para detectar si el problema vuelve.

### Post-Incidente

Después de resolver el problema, nos reunimos para aprender. Hablamos sobre qué salió bien y qué salió mal. Identificamos cómo fue posible que ocurriera y qué podemos hacer para evitarlo en el futuro. Actualizamos nuestros procedimientos. Esta fase es importante porque el verdadero valor es mejorar continuamente.

### Equipo de Respuesta

Cuando ocurre un problema, necesitamos un equipo coordinado. Una persona dirige todo y toma las decisiones importantes: el Incident Commander. Aunque otros especialistas saben mucho técnicamente, el Incident Commander tiene la autoridad final. También necesitamos investigadores que averigüen qué pasó, técnicos que arreglen los sistemas, personas que hablen con otros departamentos, y ejecutivos que aprueben decisiones importantes. Cada persona sabe su rol.

Cuando algo malo se reporta, el equipo lo valida. Si es realmente un problema, el Incident Commander reúne al equipo en un chat, una llamada, o una videoconferencia. Siguen el procedimiento específico para ese tipo de problema. Cuando está resuelto, se reúnen para aprender.

---

## Procedimientos para Problemas Comunes

Tenemos procedimientos paso a paso para los problemas más probables. Basándonos en lo que estudiamos, creamos seis procedimientos.

### Problema 1: Phishing y Correos Maliciosos

Un atacante envía un correo haciéndose pasar por alguien de confianza. El objetivo es que la persona haga clic en un enlace o descargue un archivo peligroso. Lo primero que hacemos es validar que realmente fue phishing. Hablamos con la persona que recibió el correo. Preguntamos qué pasó: descargó un archivo, hizo clic en el enlace, introdujo su contraseña.

Si solo descargó pero no abrió el archivo, el riesgo es bajo. Si descargó y abrió algo, podría haber malware. Si hizo clic en un enlace y fue a un sitio falso, podría haber introducido información sensible. Si introdujo su contraseña, necesitamos cambiarla inmediatamente.

Lo que hacemos entonces: bloqueamos el correo malicioso para que no llegue a otros. Escaneamos la máquina con antivirus si necesario. Si la contraseña fue comprometida, la cambiamos y monitoreamos la cuenta. Alertamos a otros empleados sobre el tipo de ataque.

### Problema 2: Contraseña Robada

Alguien logró obtener la contraseña de un usuario. Podría haber sido por phishing, por malware que grabó lo que escribía, o porque fue fácil de adivinar. Primero confirmamos que la contraseña realmente fue comprometida. Buscamos si alguien entró con esa contraseña desde una ubicación rara o a una hora rara. Verificamos si accedió a sistemas donde normalmente no entra ese usuario.

Inmediatamente cambiamos la contraseña. Si el usuario tiene privilegios de administrador, también cambiamos esas credenciales. Buscamos qué sistemas el atacante accedió y qué información podría haber visto. Si es una cuenta importante, probablemente alguien dejó una puerta trasera para volver después. Si la contraseña fue débil, obligamos al usuario a usar una más fuerte. Si no tenía autenticación de dos factores, la activamos. Seguimos monitoreando la cuenta durante una semana.

### Problema 3: Ransomware

Ransomware es malware que cifra tus archivos. El atacante pide dinero para devolverte acceso. Es uno de los peores problemas posibles. Cuando detectamos ransomware, lo primero es confirmar que realmente es ransomware. Buscamos archivos con extensiones raras o una nota del atacante.

Desconectamos las máquinas infectadas de la red para que no se propague. Lo importante es no pagar rescate porque eso no garantiza que recuperes tus archivos y financia a criminales. Restauramos desde copias de seguridad. Por eso es tan importante tener copias de seguridad que no estén conectadas a la red. Si no tenemos copias de seguridad, el daño es catastrófico. Si las tenemos, restauramos desde ellas. Limpiamos completamente las máquinas infectadas de malware. Cambiamos todas las contraseñas. Después de recuperarte, investigas cómo entró el ransomware.

### Problema 4: Malware y Virus

Hay malware en las máquinas. Podría ser un virus, spyware que roba información, o un troyano. Usualmente llega a través de un archivo descargado o un correo con adjunto malicioso. Identificamos qué máquinas tienen el malware. Puede ser que el antivirus lo detectó, o que los usuarios reportan comportamiento raro.

Aislamos las máquinas infectadas para evitar propagación. Ejecutamos escaneos profundos con antivirus actualizado. A veces en modo seguro del sistema. Si el malware es persistente y no se elimina con escaneos, reinstalamos el sistema operativo desde cero. Restauramos los datos del usuario, pero no los archivos del sistema para asegurar que el malware no vuelve. Analizamos qué hizo el malware. Si robó contraseñas o datos sensibles, cambiamos las credenciales.

### Problema 5: Problemas en la Red

Atacantes intentan analizar la red para encontrar vulnerabilidades, hacer escaneo de puertos, o lanzar ataques de denegación de servicio para derribar sistemas. Si detectamos escaneo de puertos, alguien está intentando descubrir qué servicios tenemos. Bloqueamos la dirección IP que lo hace. Aceleramos el parcheo de vulnerabilidades.

Si detectamos ataques de denegación de servicio, hay una avalancha de tráfico hacia un servidor que lo colapsa. Bloqueamos el tráfico maligno en el firewall. Si es un ataque muy grande, pedimos ayuda al proveedor de internet. Si alguien está intentando analizar paquetes de red sin autorización, eso significa hay una máquina comprometida internamente. Identificamos esa máquina y la desconectamos.

### Problema 6: Fuga de Datos

Datos sensibles salieron de la empresa hacia el exterior. Podría ser información de clientes, financiera, o secretos de negocio. Lo primero es confirmar que realmente hubo fuga. Vimos transferencia de datos grandes hacia el exterior. Alguien nos avisa que datos nuestros aparecen en internet. Un cliente avisa que su información está comprometida.

Identificamos exactamente qué datos se filtraron. Cuántos registros, qué información, nombres, direcciones. Si son datos personales de clientes, probablemente tenemos obligación legal de notificar. Consultamos con el departamento legal. Si fueron datos de empleados o información de negocio, es menos urgente pero importante igual.

Cerramos la puerta que permitió la fuga. Si fue una vulnerabilidad web, la parcheamos. Si fue un usuario con acceso comprometido, cambiamos la contraseña. Si fue por permiso excesivo, restringimos el acceso. Buscamos si hay más datos filtrados. A veces el atacante no toma todo en un viaje sino que vuelve varias veces.

---

## Respuesta a Preguntas de Evaluación

### Pregunta 1a: Cómo el análisis de matrices de ataque ayudó el plan

En trabajos anteriores, analizamos una matriz de técnicas de ataque. Esta matriz lista todas las formas en que un atacante podría comprometer un sistema. Para nuestra empresa, seleccionamos las técnicas más probables basadas en nuestro tipo de infraestructura. Identificamos que phishing es muy probable porque los empleados son acceso fácil. Identificamos que ransomware es un riesgo alto porque afecta directamente los datos. Identificamos que fuerza bruta es posible porque tenemos servicios expuestos en internet.

Cada procedimiento que desarrollamos corresponde a una o varias de estas técnicas. Cuando respondemos a un incidente, no estamos improvisando, estamos siguiendo procedimientos diseñados específicamente para las amenazas que sabemos que pueden pasarnos. El análisis de matrices también nos ayudó a validar que no nos falta cobertura. Si la matriz menciona una técnica que no consideramos, nos hace pensar si es posible en nuestra empresa. Si es posible, creamos un procedimiento para ello.

### Pregunta 1b: Qué procedimientos son necesarios

Creamos seis procedimientos: phishing, credenciales robadas, ransomware, malware, problemas de red, y fuga de datos. Elegimos estos porque son los que probablemente afectarían a nuestra empresa basados en el análisis de riesgos previo. Otros tipos de ataques posibles, pero les asignamos un procedimiento existente.

La selección no fue arbitraria. Cada procedimiento cubre una categoría de problemas comunes. Juntos cubren todas las fases de un ataque: cómo entra el atacante, cómo accede a datos, cómo se propaga, y cómo se recupera la empresa.

### Pregunta 1c: Cómo cubrimos todas las fases

Nuestro plan intenta cubrir las seis fases, pero con profundidad diferente. Preparación está bien cubierta porque documentamos roles, herramientas y procedimientos. Identificación está clara: tenemos criterios específicos. Recuperación está bien pensada porque es crítica para el negocio.

Donde estamos más débiles es en erradicación. Decimos verifica que no queda malware pero cómo verificamos completamente. A veces el atacante deja cosas escondidas. Deberíamos ser más específicos en esto. Post-incidente también necesita mejora. Decimos que nos reunimos a aprender, pero cuándo, quién dirige, cómo aseguramos que los cambios que decidimos realmente se implementan.

Lo que hacemos bien es considerar que no hay que apagar todo cuando hay un incidente. Intentamos contener de forma quirúrgica para que la empresa siga funcionando aunque sea lentamente. Eso es importante para la continuidad del negocio.

### Pregunta 2a: Cómo funciona el escalado

Cuando ocurre un incidente, alguien reporta. El Incident Commander evalúa: es grave o es algo normal. Si es grave, inmediatamente involucra a ejecutivos. Si es menor, solo el equipo técnico responde.

Hay decisiones que solo pueden tomar ejecutivos. Si hay que paralizar un servidor importante para contención, ese impacto en el negocio debe ser aprobado. Si tenemos que notificar a clientes porque sus datos fueron filtrados, ejecutivos y departamento legal deben estar involucrados.

La comunicación sigue canales claros. Investigadores hablan al Incident Commander. El Incident Commander habla a ejecutivos. Ejecutivos hablan a clientes si es necesario. Nadie comunica directamente sin pasar por el canal porque eso causa confusión.

Tenemos reuniones de estado cada cierto tiempo donde investigadores dicen lo que encontraron, operativos dicen lo que hicieron, comunicación dice lo que se dijo, y el Incident Commander dice qué sigue.

### Pregunta 3a: Cómo aseguramos que la respuesta es resiliente

Resiliencia significa que el negocio sigue funcionando aunque sea degradado. No queremos que un incidente paralice la empresa.

Para esto, recomendamos redundancia. Dos máquinas haciendo lo mismo, dos ubicaciones geográficas, dos copias de seguridad. Si una falla, hay otra. En la fase de recuperación, eso significa recuperar más rápido.

También significa contención inteligente. En lugar de apagar todo el servidor de correo cuando hay phishing, lo aislamos del internet pero sigue sirviendo correo interno. Los usuarios usan correo alternativo para comunicación externa temporalmente. Eso es mejor que paralizar.

Significa copias de seguridad que realmente funcionan. No solo tenemos copias de seguridad, las probamos mensualmente restaurando a un servidor de prueba. Si alguna vez hay problema real, sabemos que la copia funciona.

Finalmente, significa comunicar transparencia. Si algo malo sucedió, decimos qué fue, qué causó, y qué cambios habrá. Los clientes pierden confianza si descubren un problema por otro lado, pero si les decimos rápido y honestamente, es más probable que mantengan confianza.

---

## Conclusiones

Hemos desarrollado un plan de respuesta a incidentes que es práctico, contextualizado a nuestra empresa, y basado en mejores prácticas. No es perfecto, pero es infinitamente mejor que no tener plan alguno.

El plan toma una amenaza que ocurra y la convierte en un proceso estructurado. En lugar de pánico y decisiones improvisadas, tenemos roles claros, procedimientos documentados, y decisiones autorizadas. Eso reduce el tiempo de respuesta y el daño causado.

Las limitaciones que reconocemos son que parte del plan depende de herramientas técnicas que necesitan estar configuradas correctamente, que erradicación es donde menos detalle tenemos, y que el plan será mejor después de usarlo en la práctica y aprender de errores reales.

Lo más importante es que el plan es un documento vivo. Cada incidente real que ocurra, aunque sea menor, es una oportunidad para aprender y mejorar. La empresa que usa este plan y lo actualiza regularmente estará cada vez mejor preparada.

---

## Bibliografía

NIST. "Computer Security Incident Handling Guide." Estándar de referencia para respuesta a incidentes.

MITRE ATT&CK. "Enterprise Framework." Compendio de técnicas de ataque usadas por atacantes.

Counteractive Security. "Incident Response Plan Template." Plantilla base de este documento.

OWASP. "Top 10 Web Application Security Risks." Referencia de vulnerabilidades comunes.

Reglamento General de Protección de Datos (RGPD). Marco legal europeo para datos personales.

ISO/IEC 27035. "Information Security Incident Management." Estándar internacional de gestión de incidentes.

---

Documento finalizado. Grupo 5: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo. Mayo 2026.
