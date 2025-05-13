# Playbook: Ransomware

**Investiga, remedia (contén, erradica) y comunica en paralelo.**

Asigna pasos a individuos o equipos para trabajar en paralelo siempre que sea posible; este playbook no es puramente secuencial. Usa tu mejor criterio.

---

## Investigar

1. **Aísla inmediatamente los sistemas afectados de la red para su investigación**
    * Desconecta el cable de red, deshabilita el Wi-Fi, o utiliza segmentación de VLAN. Esto evita la propagación lateral a otros equipos o servidores.
    * Si el sistema afectado ofrece servicios críticos, evalúa el impacto en el negocio antes de aislarlo.
2. **Determina el vector de entrada del ransomware**
    * Puntos de entrada comunes:
        * **Correos de phishing** (adjuntos o enlaces maliciosos)
        * **Acceso RDP expuesto o no protegido**
        * **Vulnerabilidades sin parchear**
        * **Descargas accidentales/url maliciosas**
    * Revisa:
        * Logs de correo electrónico
        * Registros de EDR/antivirus
        * Logs de firewall/VPN/proxy
        * Informes de usuarios y línea temporal de eventos sospechosos
3. **Identifica el tipo y alcance del ransomware**
    * Consulta la nota de rescate, la extensión de los archivos cifrados y los hashes de ejecutables para identificar la variante ([ID Ransomware](https://id-ransomware.malwarehunterteam.com/)).
    * Determina qué sistemas, servidores o unidades de red están afectados.
    * Verifica si los dispositivos conectados a la nube o backups han sido cifrados.
4. **Recopila y preserva evidencia forense**
    * Guarda copias de la nota de rescate, archivos cifrados, emails sospechosos, logs relevantes, y ejecutables identificados.
    * Realiza imágenes forenses de disco y memoria antes de proceder si es posible.
5. **Hazte estas preguntas clave y sigue estas estrategias:**
    * ¿Cómo y cuándo comenzó el ataque? (Revisa los logs para la hora exacta de infección).
    * ¿Cuál es el alcance real del cifrado en la red?
    * ¿El ransomware muestra amenazas de filtrado de datos (“doble extorsión”)?
    * ¿Se han producido movimientos laterales en la red o escaladas de privilegios?
    * ¿Quién detectó el incidente y por qué medio?
    * ¿Se usaron cuentas con privilegios elevados en algún momento?
    * ¿Existen conexiones sospechosas salientes hacia dominios/controladores remotos?
    * ¿Hay indicios de robo o exfiltración de información?
    * ¿Está el ransomware aún activo en memoria?
6. **Utiliza herramientas específicas para análisis y logs:**
    * FTK Imager, Volatility, Autopsy, Redline, herramientas SIEM, EDR y [VirusTotal](https://www.virustotal.com/) para archivos sospechosos.

---

## Remediar

* **Planifica la remediación** para lanzar estos pasos en paralelo o de forma coordinada, con equipos preparados para responder a cualquier incidencia.
* **Considera el impacto en la continuidad de negocio** y la necesidad de comunicación constante.

### Contener

1. Aísla todos los sistemas afectados de la red (físicamente o por red).
2. Deshabilita cuentas o credenciales que hayan sido comprometidas.
3. Bloquea las comunicaciones con dominios y direcciones IP de servidores de comando y control conocidos, mediante el firewall y el proxy.
4. Notifica al personal clave y a los usuarios afectados; indica que no apaguen dispositivos ni manipulen equipos comprometidos.
5. Si el ransomware afecta sistemas críticos, activa el plan de continuidad del negocio según corresponda.
6. Verifica que los backups siguen siendo accesibles y no han sido cifrados.

### Herramientas y procedimientos:
- Consola EDR, antivirus corporativo, administración de firewall y proxies, directivas de red.

---

### Erradicar

1. Elimina binarios del ransomware y cualquier mecanismo de persistencia identificado (tareas programadas, claves de registro, servicios).
2. Parchea vulnerabilidades y configura adecuadamente los sistemas afectados (SO, RDP, VPN, aplicaciones).
3. Despliega o actualiza las soluciones de seguridad (antivirus, EDR, SIEM) en toda la infraestructura.
4. Si no se puede asegurar la eliminación completa, reinstala o formatea los sistemas afectados.
5. Cambia todas las contraseñas privilegiadas y revisa posibles nuevos usuarios o cuentas.
6. Escanea toda la red para detectar y eliminar restos de malware.

---

## Comunicar

1. **Escala el incidente** y comunica con la dirección, equipo de crisis y responsable de respuesta a incidentes según el procedimiento interno.
2. **Documenta** todas las acciones, hallazgos y decisiones tomadas durante el incidente.
3. **Consulta con el área legal** sobre cuestiones regulatorias, notificación obligatoria, protección de datos y gestión de riesgos.
4. **Informa a los usuarios internos** afectados sobre el estado, acciones tomadas y recomendaciones específicas (por ejemplo, cambio de contraseñas, uso de alternativas temporales, etc.).
5. **Notifica a clientes/external partners** si sus datos han podido verse afectados o existe obligación legal.
6. **Contacta con el proveedor de seguros** para activar apoyo y recursos, e inicia el proceso de reclamación si aplica.
7. **Considera la notificación a las autoridades** (por ejemplo [INCIBE-CERT](https://www.incibe.es/), [Guardia Civil](https://www.gdt.guardiacivil.es/)).
8. **Coordina la comunicación con proveedores y consultores tecnológicos** para soporte adicional en remediación.
9. **Prepara mensajes claros** para evitar rumores y desinformación, tanto internos como externos.
10. **Asegura el cumplimiento documental y de lecciones aprendidas** para futuras mejoras.

---

## Recuperar

1. **Restaura los datos y sistemas desde backups limpios y verificados**
    * Verifica la integridad y la fecha de los backups antes de restaurar.
    * Asegura que ningún archivo de backup esté comprometido o cifrado.
2. **Valida la funcionalidad y seguridad de los sistemas recuperados**
    * Realiza pruebas funcionales y scans antimalware completos.
    * Monitoriza durante días la actividad para descartar reinfección o puertas traseras.
3. **Solicita el cambio de contraseñas a todos los usuarios con acceso a los sistemas comprometidos**
4. **Actualiza sistemas, aplicaciones y endurece configuraciones de seguridad tras la restauración**
5. **Prepara, si es necesario, una comunicación a afectados, reguladores o clientes indicando la restauración de los servicios y las medidas adoptadas**
6. **Documenta todo el proceso para futuras auditorías y aprendizaje**

#### Herramientas y procedimientos:
- Consolas de backup, herramientas de recuperación, sistemas SIEM, scripts de validación de integridad.

---

### Evitación y reducción de riesgos

1. Mantén backups desconectados (“offline”) y con protección contra escritura. Realiza pruebas periódicas de restauración.
2. Aplica parches de seguridad de forma regular, priorizando acceso remoto (RDP, VPN, aplicaciones expuestas).
3. Limita permisos, aplica el principio de mínimo privilegio y controla el acceso por roles.
4. Implementa doble factor de autenticación en accesos críticos y remotos.
5. Realiza campañas de formación y simulacros de phishing a todos los empleados.
6. Monitoriza endpoints, tráfico de red y eventos sospechosos con alertas configuradas.
7. Define y prueba planes de respuesta específicos para ransomware y ataques similares.
8. Utiliza segmentación de red para limitar la propagación del malware.
9. Mantén inventario actualizado de activos críticos y prioriza su protección.

### Referencias: Recursos para remediación

- Equipo de IT/seguridad especializado en respuesta a incidentes
- Herramientas de forensic y análisis de malware (como FTK Imager, Autopsy, Volatility)
- Proveedores de soluciones de backup y recuperación
- Contactos legales y aseguradoras de ciberseguridad
- Contacto con servicios de respuesta a incidentes externos (CERT, INCIBE)

---

## Recursos

### Referencia: Acciones del usuario ante sospecha de ransomware

1. Mantén la calma, no apagues ni reinicies el ordenador.
2. Desconecta tu equipo de la red (cable/wifi).
3. Toma fotos o capturas de pantalla del mensaje de rescate, archivos cifrados o cualquier actividad sospechosa.
4. Anota lo que viste, cuándo empezó y cualquier acción realizada.
5. Contacta de inmediato con el helpdesk o el equipo de seguridad.
6. No intentes pagar el rescate ni comunicarte con atacantes por tu cuenta.

### Referencia: Acciones del helpdesk ante sospecha de ransomware

1. Conserva la calma y abre un ticket documentando toda la información relevante.
2. Indica al usuario que desconecte el equipo afectado de la red.
3. Solicita capturas de pantalla o fotos del mensaje de rescate o archivos cifrados.
4. Pregunta detalles sobre los archivos y aplicaciones afectados, y la cronología de los eventos.
5. Registra toda la información en el ticket.
6. Aísla el equipo y notifica al equipo de ciberseguridad.
7. Apoya en los pasos de investigación, contención y recuperación según las indicaciones del equipo de seguridad.

### Información adicional

1. [ID Ransomware (identificación de variantes)](https://id-ransomware.malwarehunterteam.com/)
2. [No More Ransom (recursos y descifradores)](https://www.nomoreransom.org/)
3. [MITRE ATT&CK: T1486 Ransomware](https://attack.mitre.org/techniques/T1486/)