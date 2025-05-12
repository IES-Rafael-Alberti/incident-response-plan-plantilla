# Playbook: Defacement de Página Web

**Investiga, remedia (contén, erradica) y comunica en paralelo.**

Asigna pasos a individuos o equipos para avanzar de manera concurrente siempre que sea posible; este playbook no es puramente secuencial. Usa tu mejor criterio.

---

## 1. Investigación

### Objetivo
Identificar el alcance, origen y naturaleza del defacement; recopilar información relevante para análisis forense y prevención de futuros incidentes.

### Pasos

1. **Retira inmediatamente el servidor defaceado de la exposición pública**  
   - Si el defacement es especialmente ofensivo o perjudicial, quita la página de la vista para evitar daño reputacional y proteger a los usuarios.
   - Prepara una página de mantenimiento o redirección temporal.

2. **Determina la vulnerabilidad explotada**
   - Posibles vectores:
     - **Inyección SQL** [(más info)](https://www.acunetix.com/websitesecurity/sql-injection/)
     - **Remote File Inclusion** [(más info)](https://www.acunetix.com/blog/articles/remote-file-inclusion-rfi/)
     - **Webshells** [(más info)](https://www.wordfence.com/blog/2017/06/wso-shell/)
     - **Mala configuración o diseño inseguro** (JavaScript/PHP/ASP)
   - Para detectar, revisa:
     - Logs de acceso y de errores del servidor web, así como logs del IDS/IPS si hay.
     - Archivos con contenido estático.
     - Base de datos por inserciones maliciosas.
     - Enlaces existentes en la página afectada.

3. **Recoge pistas sobre el atacante**
   - ¿El defacement contiene mensajes identificables?
   - ¿Es amateur, protesta o ataque dirigido profesional?
   - ¿Qué objetivo parece buscar el atacante?
   - Consulta [tipos de hackers](https://www.geeksforgeeks.org/types-of-hackers/).

4. **Recopila información relevante**
   - Haz capturas de pantalla del defacement.
   - Anota el dominio e IP.
   - Detalles del servidor web.
   - Código fuente afectado.
   - Cualquier información identificativa del atacante.

5. **Utiliza herramientas de análisis**
   - Weblog Expert, Sawmill, Deep Log Analyzer, etc.

---

## 2. Remediación

### 2.1 Contención

1. **Realiza una copia de seguridad forense** del servidor afectado (archivos, base de datos, logs).
2. **Mantén el servidor offline** hasta concluir la investigación inicial.
   - Usa una página temporal para informar del mantenimiento.
3. **Aíslan otros sistemas** que puedan haber sido afectados según el análisis de la arquitectura de red.
4. **Una vez identificada la vulnerabilidad**, elimina el vector de ataque: corrige el código, revoca permisos, cambia credenciales.

### 2.2 Erradicación

1. Elimina cualquier puerta trasera, cuentas no autorizadas o scripts maliciosos encontrados.
2. Aplica parches y actualizaciones críticas al software web, plugins y sistema operativo.
3. Cambia las credenciales de todos los accesos administrativos.
4. Realiza escaneo intensivo para buscar otros posibles compromisos.

---

## 3. Recuperación

1. **Restaura el contenido legítimo desde una copia limpia** (previa al incidente).
   - Asegúrate de que los backups no están infectados.
2. **Solicita a usuarios cambiar credenciales** si el sistema web tiene autenticación.
3. **Rehabilita el servidor** tras verificar la eliminación del compromiso y la aplicación de medidas de seguridad.
4. **Comunica a los usuarios/visitantes** la restauración y las medidas tomadas.

---

## 4. Prevención y Reducción de Riesgos

1. Usa solo los plugins estrictamente necesarios y mantenlos actualizados.
2. Limita los accesos administrativos al mínimo indispensable; revisa permisos regularmente.
3. Realiza escaneos periódicos de código y URLs sospechosas.
4. Utiliza herramientas automáticas de análisis de vulnerabilidades y defacement ([ejemplos aquí](https://resources.infosecinstitute.com/14-popular-web-application-vulnerability-scanners/#gref)).
5. Refuerza controles frente a SQLi, XSS y otras amenazas web ([mejores prácticas](https://www.banffcyber.com/knowledge-base/articles/best-practices-address-issue-web-defacement/)).
6. Instala sistemas de detección de defacement ([artículo sobre soluciones](https://www.techradar.com/news/best-website-defacement-monitoring-service)).
7. Capacita al personal en ciberseguridad y respuesta a incidentes.

---

## 5. Comunicación

1. Escala el incidente a la dirección y responsable de seguridad.
2. Documenta todo el proceso según el procedimiento interno.
3. Comunica a legal y a quienes corresponda (cumplimiento, riesgos, seguros, autoridades si es grave).
4. Informa a usuarios internos y externos afectados sobre la situación y medidas tomadas.
5. Notifica a clientes si sus datos o la imagen corporativa pudieron verse afectados.
6. Contacta con proveedores de seguros y terceros críticos según estricta política interna.
7. Considera la notificación a la policía o autoridades competentes (según gravedad y legislación).
8. Coordina la comunicación oficial: prepara mensajes claros y sin alarmismo.

---

## 6. Referencia de Acciones para Usuarios

1. Mantén la calma.
2. Desconecta el sistema de la red si detectas algo anómalo.
3. Haz capturas de pantalla del problema.
4. Anota lo ocurrido (fecha, hora, acciones realizadas, etc.).
5. Contacta de inmediato con el equipo de soporte o helpdesk.

### Acciones para Helpdesk

1. Documenta toda la información (ticket, capturas, notas, datos de contacto).
2. Prioriza la desconexión si el contenido es especialmente grave.
3. Escala al equipo de seguridad.
4. Queda disponible para colaborar en contención, remediación y comunicación.

---

## 7. Recursos adicionales

- [Guía completa de defacement y detección](https://pdfs.semanticscholar.org/899e/2d629e06d920b9059edb21fcb52cdb33f783.pdf)
- [Herramientas de monitorización](https://geekflare.com/website-defacement-monitoring/)
- [Reporte de amenazas web 2019](https://sucuri.net/reports/2019-hacked-website-report/)
- [Buenas prácticas en defacement](https://www.imperva.com/learn/application-security/website-defacement-attack/)

---

## 8. Referencias MITRE ATT&CK y RE&CT

- **MITRE ATT&CK:** [T1491.001 - Website Defacement](https://attack.mitre.org/techniques/T1491/001/)
- **RE&CT:** Identificación, Contención inicial, Erradicación, Notificación.