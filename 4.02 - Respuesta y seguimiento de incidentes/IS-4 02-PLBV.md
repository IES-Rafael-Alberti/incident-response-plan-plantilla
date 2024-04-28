# IS-4.02-PLBV.md

## Command injection vulnerability

Detalles del incidente:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled.png)

Lo primero que vamos a hacer es comprobar que no se trata de un falso positivo, para ello nos vamos al manager de logs y chequeamos que es lo que paso:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%201.png)

Como podemos apreciar, el host con ip 144.172.79.92 realizo una injección de codigo en la cookie de sesión, SESSID, insertando el comando whoami.

Por lo cual, no ha sido un falso positivo.

Nos preguntan cual ha sido el tipo de ataque.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%202.png)

Al ser un comando que se utiliza en el terminal de Linux, es un simple Command Injection.

Ahora nos pide verificar que sea realmente un ataque y no una prueba de pentesting para enumerar vulnerabilidades, por lo cual veremos en los correos si hay algun indicio que indique que este ataque ha sido provocado a conciencia.

Al ver los correos y ordenarlos por fecha, no encuentro nada que indique que se estan realizando test contra el firewall, por lo cual se considera que este incidente se corresponde con un ataque verdadero.

Nos preguntan si el ataque fue realizado con exito o no, tendremos que ver el historial de comandos del dispositivo que ha sido atacado y ver si se ha ejecutado correctamente.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%203.png)

Al ver el historial de comandos podemos apreciar que el comando que se esta ejecutando a la hora del ataque es un update de python3, justo a la hora que se realizo la petición en la pagina web. Por lo cual el atacante logro realizar su ataque con exito.

Vamos a añadir la IP que intento realizar el ataque como artefacto para otro posible ataque:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%204.png)

Al ser el ataque realizado correctamente, tendremos que escalarlo de nivel y que pase a ser un T2.

Cerramos la alerta como positivo:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%205.png)

Pasemos al siguiente caso.

## QR Code Phishing

Detalles del incidente:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%206.png)

Lo primero que nos pide es identificar el tipo de reconocimiento que coincide con el ataque, al tratarse de un pishing, vamos a ver los correos a ver que encontramos.

Al ver el correo, encontramos en el mensaje que dice que la cuenta sera bloqueada si no cumple con los requisitos, podria tratarse de un pishing ya que esta intentando amenazar al usuario para obligarlo.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%207.png)

Al no pedirle credenciales ni nada solo que chequee el QR con su teléfono móvil o visite la página web se puede tratar de un phishing para intentar recolectar información del usuario.

Nos pide identificar si el atacante posee IP externa o interna, ya que el email en cuestión se envió desde la dirección *“security@microsecmfa.com”*, se trata de un intento de ataque externo.

Ahora tendremos que verificar la reputación de la IP desde la cual se realizo el envio del correo.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%208.png)

Utilizaremos virus total y buscaremos la dirección ip del SMTP:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%209.png)

Como comprobamos, es maliciosa.

Veamos a ver si solo el usuario claire fue el unico afectado por este ataque, veamos los correos y los filtramos por el sernder:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2010.png)

Solo recibio este correo el usuario claire.

Nos pide ahora tomar una decisión, aislar el equipo o no, como ha sido comprometido marcaremos si.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2011.png)

Ahora tendremos que contenerlo en el endpoint security.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2012.png)

Marcamos al incidente como true positive, cerramos el caso y pasamos al siguiente.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2013.png)

## Microsoft SharePoint Server: Elevation of privilege

Detalles del incidente:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2014.png)

Lo primero que nos piden es verificar si el trafico es malicioso o no, para ello busquemos en virus total la ip de origen:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2015.png)

Diremos que si ya que 4 vendedores las han marcado como maliciosa, supongamos que los otros no la han analizado y al tratarse de una IP de saliente de china es potencialmente peligrosa.

Nos preguntan cual es el tipo de ataque:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2016.png)

Vamos a ver el los logs de ese dia sobre el equipo afectado.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2017.png)

Encontramos que se utilizaron entradas python desde el equipo sospechoso.

No encontramos nada en el email por lo tanto no fue una prueba programada.

Nos pide identificar la dirección del trafico:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2018.png)

Como el ataque fue realizado correctamente, tendremos que aislar el equipo y contenerlo, para ello como siempre vamos al endpoint, buscamos el equipo y activamos la opción:

Una vez contenido, tendremos que escalar el incidente a tier 2, ya que se realizo el ataque.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2019.png)

## Possible LFI Attack

Detalles del incidente:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2020.png)

Nos preguntan como siempre, si el trafico es malicioso o no:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2021.png)

Para ello visitaremos virustotal de nuevo y verificaremos si es sospechosa la IP de origen o no:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2022.png)

Solo dos de 90 vendedores la marcan como maliciosa, esto no quiere decir que no lo sea, marcaremos que si.

Bueno la siguiente pregunta es un poco tonta, ya que el mismo enunciado del playbook te la responde, nos pregunta por cual a sido el posible ataque:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2023.png)

Sabemos que ha sido un LFI, pero vamos a verificarlo con los logs:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2024.png)

Vemos que se intento acceder al archivo /etc/passwd, por lo cual coincide con un LFI.

Nos vuelven a preguntar, si fue parte de una prueba o no, al ver los emails no encontramos nada que indique que fue un test, por lo tanto no fue planeado.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2025.png)

El trafico vuelve a venir de internet, no es una IP dentro del rango de la empresa.

Y nos hacen ver si el ataque fue realizado con exito o no. Si prestamos atención al sistema operativo del equipo, es un Windows y el atacante realiza una petición queriendo visualizar /etc/passwd que es un archivo de un sistema Linux, por lo cual no ha sido exitoso.

Podemos cerrar el caso sin elevarlo a t2 ya que no ha llegado a lograr lo que queria.

# Ejecución de código remoto

Detalles del incidente:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2026.png)

Se trata de una alerta por ejecución de código remoto.

En este caso el indicador de amenaza que hemos seleccionado ha sido el de servicios o aplicaciones que se ejecutan inesperadamente.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2027.png)

Podemos ver el proceso el cual se estaba ejecutando.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2028.png)

## 

En la herramienta any run comprobamos que es un software de actividad maliciosa.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2029.png)

Vemos el log del archivo malicioso.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2030.png)

Una vez verificado que existe actividad sospechosa en el equipo, el siguiente paso es contenerlo.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2031.png)

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2032.png)

Cerramos el caso y verificamos que lo que hemos estado realizando es correcto.

# Malware

Detalles del incidente:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2033.png)

Vuelve a ser un supuesto archivo malicioso llamado certutil.exe

Nos preguntan si este archivo es sospechoso o no, indagando un poco en internet podemos encontrar en twitter lo siguiente:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2034.png)

Básicamente, que este archivo es utilizado para técnicas de malware inyectando datos y ejecutándolos.

Por lo tanto, cuando nos pregunta que es lo que realiza este malware, seleccionaremos alternate data streams.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2035.png)

Podemos ver como en el equipo NodeServer el ejecutable certutil.exe ha creado un dll.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2036.png)

Ahora tenemos que volver a contener al equipo:

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2037.png)

Y ya podemos dar el incidente como finiquitado cerrando el caso.

# Escaneo de actividad SSH

Detalles del incidente

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2038.png)

Este caso consta de un supuesto escaneo de la actividad ssh realizado con un nmap.

Identificamos la amenaza como tráfico de red sospechoso.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2039.png)

En la pestaña de endpoint podemos encontrar el comando utilizado por esta herramienta para realizar un escaneo de puertos y versiones en toda la red.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2040.png)

Esta siendo lanzado por un equipo llamado pentesting, por el cual podemos suponer que han estado realizando una autoría de seguridad.

Como podemos apreciar, no es en sí una herramienta sospechosa.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2041.png)

## Phishing

Detalles del incidente

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2042.png)

Se trata de un correo que ha enviado Bill hacia Ellie el cual contiene supuestamente una página para robar contraseñas.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2043.png)

Podemos apreciar el correo que envió, en el cual se encuentra un .zip con un html malicioso.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2044.png)

Con la herramienta hybrid-analysis podemos verificar si lo que contiene es sospechoso o no.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2045.png)

Vemos que el archivo html, en efecto si lo es.

Borramos el email del correo y cerramos el caso.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2046.png)

## Ransomwere

Detalles del incidente.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2047.png)

Se trata de un ransomwere llamado ab.exe.

Lo primero es verificar si el equipo afectado esta aislado de los demás.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2048.png)

Al chequear el Endpoint vemos que no, por lo cual marcamos que no lo está.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2049.png)

Utilizando la herramienta de antes, hybrid comprobamos que el archivo ab.bin es malicioso.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2050.png)

Por lo cual marcamos que lo es en el siguiente paso del playbook.

![Untitled](IS-4%2002-PLBV%20md%20d16c8ec098704433957633fdbced5dd6/Untitled%2051.png)

Con esto ya podemos cerrar el incidente.