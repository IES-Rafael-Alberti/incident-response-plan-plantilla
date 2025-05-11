# Playbook: Insider Threats

**¡Investigar, remediar (contener, erradicar) y comunicarse en paralelo! Las amenazas internas pueden ser difíciles de detectar y muy dañinas; deben priorizarse por su impacto potencial y su sigilo.**

Asigne pasos a personas o equipos para que trabajen simultáneamente, siempre que sea posible.

## Investigar

`Objetivo: Confirmar la amenaza interna, comprender su origen, motivación y alcance, y evaluar los daños.`

1. **Confirmar la detección de una posible amenaza interna:**

   * Analizar alertas de sistemas DLP, SIEM, EDR, control de acceso físico, etc.
   * Identificar comportamientos anómalos: acceso fuera de horario, transferencias masivas de archivos, uso de medios externos, conexiones inusuales, etc.

2. **Recolectar y preservar evidencia:**

   * Capturar logs de autenticación, historial de acceso a archivos, tráfico de red y actividades de usuario.
   * Si es necesario, preservar imágenes de disco o memoria para análisis forense posterior.

3. **Analizar Indicadores de Compromiso (IoCs):**

   * Cambios en permisos.
   * Archivos accedidos o exfiltrados.
   * Herramientas utilizadas por el actor (por ejemplo, compresores, navegadores no corporativos, herramientas de administración remota no autorizadas).

4. **Evaluar el impacto y determinar la severidad:**

   * Clasificar los datos afectados (confidencialidad, integridad, disponibilidad).
   * Determinar el alcance temporal y técnico de la actividad maliciosa.

## Remediar

### Contener

`Objetivo: Evitar que la amenaza interna continúe o cause más daño.`

* Suspender temporalmente las cuentas sospechosas o limitar sus privilegios.
* Aislar los sistemas afectados de la red o de ciertos recursos.
* Revocar accesos indebidos (a archivos, carpetas, servicios).
* Bloquear medios físicos (USB) o accesos remotos si fuera necesario.
* Implementar alertas de monitoreo más estrictas sobre la cuenta o terminal del sospechoso.
* Documentar todas las acciones tomadas.

### Erradicar

`Objetivo: Eliminar todos los elementos relacionados con la amenaza interna del entorno.`

* Remover cualquier malware, script o software instalado por el actor.
* Revertir configuraciones comprometidas (ACLs, permisos, cuentas creadas).
* Cerrar brechas de seguridad (por ejemplo, mal uso de cuentas compartidas, configuraciones laxas).
* Realizar una limpieza de cuentas, credenciales y accesos innecesarios o sospechosos.
* Validar que no queden mecanismos de persistencia.

## Comunicar

`Objetivo: Asegurar la coordinación con los equipos relevantes y garantizar la respuesta adecuada a nivel organizativo y legal.`

* Notificar al equipo de respuesta a incidentes (CSIRT/CERT) y a los responsables de seguridad (CISO).
* Informar a Recursos Humanos y Asuntos Legales si hay empleados implicados.
* Si hay afectación de datos personales o confidenciales, activar el plan de comunicación con privacidad, cumplimiento y comunicación corporativa.
* Documentar el incidente conforme a los procedimientos internos.
* Evaluar si debe notificarse a reguladores, clientes o socios comerciales.

## Recuperar

`Objetivo: Restaurar la normalidad en los sistemas y prevenir que la amenaza interna reaparezca.`

* Restaurar sistemas y datos desde copias limpias, si corresponde.
* Verificar la integridad de los datos restaurados y de la configuración de seguridad.
* Reincorporar usuarios o servicios suspendidos solo tras validaciones de seguridad.
* Implementar controles preventivos reforzados:

  * Revisar políticas de acceso.
  * Implementar monitoreo continuo.
  * Habilitar alertas para comportamientos de riesgo.

## Lecciones aprendidas

`Objetivo: Aprender del incidente y mejorar la postura de seguridad a largo plazo.`

* Realizar una revisión post-mortem con todas las partes involucradas.
* Analizar:

  * ¿Qué falló?
  * ¿Qué funcionó bien?
  * ¿Cómo puede mejorarse la detección y respuesta?
* Documentar las acciones correctivas y los cambios en políticas, procesos o herramientas.
* Compartir las lecciones aprendidas con los equipos de seguridad, IT y gerencia.

## Información adicional

* MITRE ATT\&CK – [Tactic: Insider Threat](https://attack.mitre.org/tactics/TA0001/)
* CERT Guide to Insider Threats – Carnegie Mellon University SEI: [Insider Threat Center](https://insights.sei.cmu.edu/insider-threat/)
