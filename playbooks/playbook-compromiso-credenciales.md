# Playbook: Compromiso de Credenciales

**Investiga, remedia (contén, erradica) y comunica en paralelo.**

Asigna pasos a individuos o equipos para avanzar en paralelo cuando sea posible; este playbook no es puramente secuencial. Usa tu mejor criterio.

---

## Investigar

1. **Identifica cómo se produjo el compromiso de credenciales**
   * Orígenes habituales:
      * Correos de phishing (adjuntos o enlaces maliciosos)
      * Ataques de fuerza bruta o “credential stuffing”
      * Malware (keyloggers, programas roba-credenciales)
      * Intercambio inseguro o almacenamiento inadecuado de contraseñas
      * Credenciales filtradas en brechas de terceros ([Consulta aquí](https://haveibeenpwned.com/))
   * Revisa:
      * Alertas de seguridad y emails sospechosos enviados a usuarios
      * Logs de firewall, VPN, aplicaciones y accesos remotos
      * Registros EDR/antimalware
      * Reportes de usuarios (cambios súbitos de contraseña, bloqueos de cuenta, accesos inusuales)
2. **Determina qué credenciales y cuentas están afectadas**
   * ¿Son cuentas de usuario, de administrador, de servicios, de aplicaciones críticas o de terceros?
   * ¿Las credenciales dan acceso a sistemas internos, nube, aplicaciones críticas, VPN o recursos privilegiados?
3. **Evalúa el alcance y el impacto**
   * ¿Qué sistemas, datos o recursos han podido ser accedidos?
   * ¿Se han producido cambios no autorizados, accesos o movimientos laterales?
   * ¿Hay evidencia de exfiltración de datos, escalado de privilegios o creación de nuevas cuentas?
   * ¿Se ha deshabilitado o eludido algún control de seguridad (MFA, alertas…)?
4. **Recopila evidencia forense**
   * Guarda alertas, logs, emails relacionados, actividad de cuentas e indicadores de compromiso.
   * Documenta la cronología del ataque: cuándo y cómo se explotaron las credenciales.

### Preguntas clave para la investigación y estrategias:
- ¿Cómo y cuándo fueron comprometidas las credenciales?
- ¿Hay otros usuarios o sistemas con actividad sospechosa relacionada?
- ¿Qué acciones se realizaron usando las credenciales expuestas?
- ¿Estaba activada la autenticación multifactor (MFA)? ¿Ayudó a limitar el acceso?
- ¿Se han utilizado credenciales desde ubicaciones o dispositivos inusuales?
- ¿Se accedió a datos o sistemas sensibles?
- ¿Hubo intentos de desactivar/burlar controles de seguridad?
- ¿Cuál es el posible impacto en el negocio o requerimientos regulatorios?

---

## Remediar

* **Planifica los eventos de remediación** para ejecutar estos pasos de manera conjunta/coordinada, preparados para cualquier impacto en los servicios.
* **Considera el momento y las consecuencias**: algunas acciones pueden producir caídas temporales o bloqueos necesarios para mantener la seguridad.

### Contención

1. **Restablece o deshabilita inmediatamente las credenciales comprometidas** (usuarios, servicios, admins, etc.).
2. **Finaliza sesiones activas** y fuerza el cierre de todas las sesiones para las cuentas afectadas.
3. **Revoca tokens, claves de API o certificados** vinculados con esas credenciales.
4. Bloquea o restringe accesos desde IPs, dispositivos o ubicaciones sospechosas.
5. Incrementa la monitorización en cuentas/sistemas afectados por actividad sospechosa.
6. Informa rápidamente a usuarios implicados y al equipo de seguridad.

**Herramientas y procedimientos:**
- Consolas de gestión de identidades (Active Directory, Azure AD, Google Workspace, etc.)
- Sistemas de detección de incidentes (EDR, SIEM, CASB)
- Gestión de accesos a VPN/firewall
- Sistemas de notificación/alerta

---

### Erradicación

1. Elimina mecanismos de persistencia o puertas traseras creadas por el atacante (cuentas ocultas, reglas en correo, scripts…).
2. Escanea sistemas afectados en búsqueda de malware, keyloggers o implantes.
3. Parchea las vulnerabilidades relacionadas (aplicaciones web, accesos remotos, APIs expuestas, etc.).
4. Investiga y revierte posibles movimientos laterales o escalado de privilegios.
5. Revisa y refuerza políticas de contraseñas (longitud, complejidad, caducidad, prohibición de contraseñas filtradas).

---

## Recuperar

1. **Restaura el acceso para los usuarios afectados de forma segura y controlada.**
2. Exige el uso de contraseñas fuertes, únicas, y la activación/forzado del uso de autenticación multifactor (MFA) en todas las cuentas.
3. Monitoriza el comportamiento de las cuentas durante un periodo prolongado tras el incidente.
4. Refuerza y actualiza los controles de seguridad para prevenir incidentes similares (MFA, alertas, controles de acceso).
5. Ofrece comunicación/formación específica a usuarios afectados (concienciación de phishing, buenas prácticas de contraseñas, etc.).
6. Documenta el incidente y todos los pasos tomados para futuras auditorías y aprendizaje.
7. Si es necesario por ley o contrato, notifica a reguladores, clientes o partners.

---

### Prevención y reducción de riesgos

1. Aplica y exige MFA en todos los sistemas críticos.
2. Implementa políticas estrictas de contraseñas (longitud, complejidad, prohibición de reutilizar/contraseñas conocidas como filtradas).
3. Forma y sensibiliza a los empleados sobre phishing, ingeniería social y seguridad de cuentas.
4. Utiliza servicios de monitorización de credenciales filtradas para alertas tempranas.
5. Limita los privilegios de cuentas y monitoriza la actividad de administradores.
6. Realiza auditorías y rotación regular de contraseñas, sobre todo en cuentas privilegiadas o de servicio.

---

### Referencia: Recursos para la remediación

- Personal de seguridad e IT con privilegios de administración de cuentas
- Acceso a SIEM/EDR y herramientas de monitorización
- Herramientas de gestión de contraseñas y MFA (Okta, Azure, Google Admin, etc.)
- Contacto con legal/compliance/RRHH para casos de obligaciones de reporte

---

## Comunicar

1. **Escala el incidente y comunica con la dirección y responsables según el procedimiento interno.**
2. **Documenta el incidente** (logs, cronología, decisiones, evidencias) siguiendo el plan de respuesta.
3. **Informa a Legal/Compliance** si aplica, para evaluar exposición regulatoria y requisitos de notificación por brecha.
4. **Notifica a usuarios y departamentos afectados:**
   - Explica lo sucedido, qué vigilar, cómo cambiar la contraseña, y pasos para activar MFA.
5. **Notifica a clientes o socios si sus datos o integraciones se han visto afectados.**
6. **Contacta con el proveedor de ciberseguros** según corresponda.
7. **Colabora con las fuerzas de seguridad** si hay indicios de delito grave (enlaces a recursos nacionales/locales).
8. **Colabora con proveedores externos (gestores de identidad, MSP, consultores IR)** si fuera necesario.

*Especifica herramientas y procedimientos para cada paso de comunicación, o haz referencia al plan general de respuesta a incidentes.*

---

## Recursos

### Referencia: Acciones para usuarios ante posibles credenciales comprometidas

1. Mantén la calma.
2. Cambia tu contraseña de inmediato si sospechas que ha sido comprometida.
3. Activa o verifica el uso de autenticación multifactor (MFA) en tu cuenta.
4. Notifica al equipo de IT o seguridad de forma inmediata.
5. Permanece atento a actividad anómala (bloqueos, accesos raros, emails de reseteo…).
6. No ignores ni borres alertas o avisos de seguridad.

### Referencia: Acciones para el helpdesk ante posible compromiso de credenciales

1. Abre un ticket y recopila toda la información facilitada por el usuario.
2. Verifica la identidad del usuario usando un método alternativo.
3. Indica al usuario que cambie su contraseña y active MFA.
4. Revisa logs de acceso, ubicaciones, dispositivos y acceso a aplicaciones.
5. Escala al equipo de seguridad/incidentes según procedimiento.
6. Si hay sospecha de malware, aísla y analiza el dispositivo del usuario.
7. Documenta todas las acciones para auditoría y mejora de respuesta.

---

### Información adicional

1. [Have I Been Pwned (comprobar si credenciales fueron filtradas)](https://haveibeenpwned.com/)
2. [NIST Guía de Contraseñas Digitales](https://pages.nist.gov/800-63-3/)
3. [MITRE ATT&CK: Credential Access Techniques](https://attack.mitre.org/tactics/TA0006/)