# Playbook: Compromiso de la Cadena de Suministro

**Investiga, remedia (contén, erradica) y comunica en paralelo.**

Asigna pasos a individuos o equipos para que trabajen en paralelo siempre que sea posible; este playbook no es puramente secuencial. Usa tu mejor criterio.

---

## Investigar

1. **Detecta y verifica el compromiso en la cadena de suministro**
    * Analiza alertas del SIEM, EDR, sistemas de gestión de vulnerabilidades, monitoreo de integridad de archivos, y notificaciones de proveedores.
    * Revisa reportes de usuarios, equipos técnicos o partners sobre actividades inusuales relacionadas con software, servicios o productos de terceros.
    * Identifica si la brecha vino por actualizaciones de software comprometidas, proveedores de servicios externos, dependencias de aplicaciones, componentes de hardware, o integraciones API/SaaS.

2. **Determina el origen, extensión y tiempo del compromiso**
    * ¿Cuál es el punto exacto en la cadena de suministro que fue comprometido? ¿Es un software, un proveedor de servicios, hardware, desarrollo externo, o integraciones cloud?
    * ¿Cuándo se realizó la entrega o actualización sospechosa? ¿Afecta a toda la organización o solo a una parte?
    * ¿Han recibido otros clientes del proveedor la misma amenaza?

3. **Recopila y preserva todas las evidencias relevantes**
    * Copia archivos, logs de eventos, registros de cambios, tickets de soporte asociados y notificaciones de seguridad del proveedor.
    * Si aplica, obtén muestras del software/hardware comprometido y realiza análisis estático/dinámico.
    * Identifica transacciones, operaciones o flujos de datos afectados por la brecha.

4. **Realiza análisis de impacto en los activos y procesos**
    * ¿Qué sistemas, servicios, datos o clientes internos/externos están potencialmente afectados?
    * ¿Qué información pudo ser accesible, alterada o exfiltrada a través de la brecha de la cadena de suministro?
    * ¿El actor malicioso consiguió persistencia, acceso privilegiado o logró alterar procesos críticos?
    * ¿Existen otras organizaciones afectadas que puedan compartir indicadores de compromiso (IoCs)?

5. **Preguntas clave y estrategias:**
    * ¿Cómo detectamos la brecha? ¿Vino por alerta interna, aviso del proveedor, o inteligencia de amenazas?
    * ¿Está en riesgo la confidencialidad, integridad o disponibilidad de nuestros servicios o datos?
    * ¿Qué mitigaciones previas había activadas y por qué han fallado?
    * ¿Es un ataque activo, persistente o se resolvió en un solo evento?
    * ¿Ha habido comunicación previa o amenazas de los atacantes?


**Herramientas recomendadas:** SIEM, EDR, monitorización de integridad de archivos, análisis de dependencias, plataformas de threat intelligence, análisis forense, comprobación de hashes y firmas digitales, monitorización contractual de proveedores.

---

## Remediar

* **Planifica eventos de remediación** para ejecutarse en paralelo o coordinados, movilizando a los equipos de IT, seguridad, legal, compras y responsables de las áreas de negocio afectadas.
* **Considera el momento y el impacto:** algunas acciones pueden requerir bloqueo de proveedores, sustitución de soluciones críticas o suspensión temporal de servicios.

### Contención

1. **Suspenda inmediatamente la integración, uso o despliegue del software, hardware o servicio de terceros identificado como comprometido.**
2. **Bloquee conexiones y accesos a los sistemas afectados o sospechosos.**
3. **Revise y limite permisos de cuentas, API keys, certificados o credenciales asociadas al proveedor comprometido.**
4. **Notifique a todos los usuarios, equipos y responsables sobre la suspensión temporal de los servicios/procesos afectados.**
5. **Active medidas alternativas o manuales para dar continuidad operacional mientras la amenaza es contenida.**
6. **Solicite información y soporte al proveedor implicado y, si procede, coordine respuesta conjunta.**
7. **Implemente listas de bloqueo (denylist) para versiones de software comprometidas y desactive automáticamente actualizaciones de dichos componentes.**
8. **Monitorice en tiempo real la red y los endpoints que hayan estado en contacto con el componente comprometido.**

**Herramientas y procedimientos:**  
- Consolas de gestión de software/hardware, firewall, SIEM, IAM, gestión de inventario de activos, plataformas de gestión de proveedores (TPRM/SRM/Fourth-Party Risk).

---

### Erradicación

1. **Elimine y desinstale versiones/instancias afectadas del software/hardware comprometido en todos los sistemas.**
2. **Revoque y regenere credenciales, certificados, API keys y tokens asociados a la integración comprometida.**
3. **Aplique parches o actualizaciones limpias emitidas por el proveedor para subsanar la vulnerabilidad.**
4. **Analice y limpie configuraciones, scripts o tareas programadas añadidas por el atacante.**
5. **Realice un “scan” masivo de endpoints y servidores para detectar persistencia y otros vectores introducidos.**
6. **Actualice las reglas y signatures de los sistemas de detección (antivirus, EDR, IDS) para detectar el ataque en otras fases o lugares.**
7. **Investigue si hubo movimiento lateral o escalada de privilegios por parte del atacante utilizando la cadena de suministro.**
8. **Colabore con otros clientes del proveedor y comunidades de ciberseguridad para compartir IoCs y mejores prácticas.**

**Herramientas y procedimientos:**  
- EDR/antivirus, scripts de remediación automatizada, gestión de parches, análisis de logs, plataformas de threat intelligence y coordinación con CERTs.

---

### Referencia: Recursos de Remediación

- Recursos humanos: equipos de IT, seguridad, desarrollo, operaciones, legal, compras y gestión de terceros.
- Recursos técnicos: consolas de monitoreo y remediación, plataformas de gestión de activos, plataformas de threat intelligence, soluciones de automatización y orquestación de respuesta.
- Recursos financieros: presupuesto para sustitución de proveedores, consultoría y refuerzo de infraestructuras críticas (hardware/software alternativo).
- Logísticos: coordinación multidisciplinar, reuniones de crisis, soporte del proveedor y canales de comunicación ágiles.

---

## Comunicar

1. **Escale el incidente y comunique con dirección, responsables de IT, seguridad, compliance, compras y legal, siguiendo el plan de crisis.**
2. **Documente detalladamente el incidente, adjunte logs, evidencias, análisis de impacto y las acciones tomadas.**
3. **Notifique a los reguladores si la brecha implica datos personales, servicios esenciales, información sensible o está legalmente regulada (por ejemplo, RGPD, NIS2, directivas sectoriales).**
4. **Informe a los empleados, usuarios y clientes afectados sobre la situación, medidas adoptadas y acciones requeridas (como cambios de contraseñas o suspensión de servicios).**
5. **Notifique al proveedor comprometido y solicite información oficial sobre la brecha, mitigaciones, clientes afectados y futuras actualizaciones.**
6. **Contacte con la aseguradora de ciberseguridad si existe póliza y el evento es susceptible de reclamación.**
7. **Valore la notificación a autoridades policiales o CERT nacionales en función de la gravedad y del alcance.**
8. **Cree mensajes claros y coordinados para evitar rumores y proteger la reputación e intereses legales de la organización.**
9. **Colabore con otros afectados/clientes y asociaciones sectoriales para compartir información y acelerar la respuesta colectiva.**
10. **Registre toda la comunicación para posteriores análisis, auditorías y mejora de procesos.**

**Herramientas y procedimientos:**
- Protocolos de comunicación interna y externa, listas de distribución urgentes, plantillas para emails y notificaciones, plataformas de gestión documental.

---

## Recuperar

1. **Restaure integraciones, servicios o software sólo después de verificar la limpieza y aplicar las actualizaciones necesarias.**
2. **Asegure la validación y pruebas de seguridad de las nuevas versiones de los componentes antes de su reimplantación en producción.**
3. **Solicite a todos los usuarios cambiar credenciales asociadas a la cadena de suministro afectada.**
4. **Monitoree con máxima prioridad los sistemas, redes y transacciones asociadas a la cadena de suministro durante varias semanas tras el restablecimiento.**
5. **Realice pruebas de penetración, auditorías o red teaming específicos sobre la parte recuperada.**
6. **Comparta lecciones aprendidas y refuerce contratos, SLA y requerimientos de ciberseguridad para proveedores futuros.**
7. **Actualice y enriquezca los procedimientos internos de due-diligence y gestión de riesgos de terceros.**
8. **Prepare y distribuya un informe final de cierre de incidente, con todas las acciones y mejoras implementadas.**

**Herramientas y procedimientos:**
- Consolas de gestión de cambios, procedimientos de QA/validación, plataformas de test de seguridad, SIEM, sistemas de reporting.

---

## Recursos

### Información adicional

1. [NIST: Managing Cyber Supply Chain Risks](https://csrc.nist.gov/publications/detail/sp/800-161/rev-1/final)
2. [MITRE ATT&CK: Supply Chain Compromise T1195](https://attack.mitre.org/techniques/T1195/)