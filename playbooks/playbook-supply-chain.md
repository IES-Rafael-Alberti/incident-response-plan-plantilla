
## Playbook: Compromiso de la cadena de suministro

**Investigar, remediar (contener, erradicar) y comunicar en paralelo.**

Asigne pasos a individuos o equipos para que trabajen simultáneamente, cuando sea posible; este libro de jugadas no es puramente secuencial. Utilice su mejor criterio.

### Investigar

`OBJETIVO: Confirmar si el incidente proviene de un proveedor (software/SaaS/hosting/subcontrata), dimensionar el alcance (sistemas, datos, sedes) y habilitar contención/erradicación rápidas.`

Contexto típico en esta organización:
* Infraestructura mixta (servidores internos + nube/almacenamiento).
* Web y tienda online alojadas en un proveedor externo.
* Herramientas de negocio (CRM/ERP) e integraciones con terceros.
* Proveedores con acceso (TI/seguridad gestionada, subcontratas, mantenimiento, seguridad física).

1. **Triage rápido (primeras 1–2 horas)**
	* Identificar el “eslabón” sospechoso:
		* Proveedor SaaS (correo, almacenamiento, CRM/ERP, facturación, soporte/tickets, RRSS).
		* Software on-prem (actualización reciente, agente EDR, VPN, herramienta de administración remota, backup).
		* Paquete/dependencia (librerías, plugins, extensiones, scripts).
		* Proveedor de hosting/CDN/pasarela de pago (web/tienda).
		* Subcontrata con acceso físico o lógico (incluye seguridad física, mantenimiento, proveedores que conectan dispositivos/USB).
	* Capturar evidencia mínima (sin modificar sistemas si es posible):
		* Nombre del proveedor, producto, versiones, fechas de actualización, cuentas afectadas, IDs de tenant.
		* Avisos del proveedor (advisory), CVE si aplica, IOCs publicados y mitigaciones recomendadas.
		* Línea temporal preliminar: “cuándo fue actualizado / cuándo empezó el comportamiento”.
	* Determinar si hay **impacto inmediato**:
		* Robo de credenciales/tokens, accesos anómalos a correo/nube/CRM/ERP.
		* Modificación de web/tienda (skimmer de pagos, redirecciones, inyección de JavaScript, malware).
		* Exfiltración de datos personales de clientes/proveedores.
		* Fraude financiero (cambio de IBAN, suplantación BEC).

1. **Validar la hipótesis: ¿compromiso del proveedor o incidente interno?**
	* Comprobar si existen indicadores de:
		* Actualización/paquete malicioso (hashes, firmas, repositorios, cadenas de build).
		* Credenciales expuestas (phishing previo, reuse, MFA bypass, token theft).
		* Compromiso de la plataforma del proveedor (incidente público, notificación del proveedor).
		* Integración OAuth/API con permisos excesivos o consentida por usuarios.
	* Clasificar el escenario principal:
		* **Software update comprometida** (supply chain software) (MITRE T1195).[<sup>[5]</sup>](#supply-chain-playbook-ref-5)
		* **SaaS comprometido / tenant comprometido** (acceso a datos y correo).
		* **Hosting/tienda comprometidos** (web skimming, redirecciones, inyección JS).
		* **Proveedor con acceso remoto comprometido** (RMM/PSA, VPN, cuentas de soporte).
		* **Dependencia/paquete malicioso** (registries, typosquatting, dependency confusion).

1. **Dimensionar el alcance (qué está afectado)**
	* Inventariar activos y servicios que usan el proveedor/producto:
		* Endpoints (PCs/portátiles/móviles), servidores internos (correo, ficheros, apps), routers/WiFi.
		* Servicios en la nube (almacenamiento, CRM/ERP, identidades/SSO si aplica).
		* Web/tienda y terceros asociados (CDN, analítica, chat, pagos).
	* Buscar “puntos de control” para detectar expansión:
		* EDR/AV: procesos, persistencia, conexiones.
		* SIEM/logs: autenticación, cambios de configuración, actividad administrativa.
		* Proxy/DNS/Firewall: dominios/hosts/ASNs sospechosos.
		* SaaS audit logs: comparticiones externas, descargas masivas, creación de reglas/buzones.

1. **Determinar el alcance en datos (qué información puede haberse expuesto)**
	* Identificar repositorios accesibles desde el proveedor/servicio afectado:
		* Datos personales de clientes/proveedores (PII), documentación fiscal/laboral.
		* Datos de gestión y funcionamiento (CRM/ERP).
		* Propiedad intelectual y procesos internos.
	* Estimar si hubo exfiltración o acceso no autorizado (descargas masivas, API calls, creación de tokens).

1. **Evaluar impacto y priorizar**
	* Priorizar por: datos personales, continuidad del servicio, impacto financiero/reputacional y riesgo legal.
	* Confirmar si aplica notificación a interesados/reguladores/seguros (consultar Legal).
	* Para decisiones de riesgo y exigencias a proveedores, usar como marco el enfoque de gestión de riesgos de cadena de suministro (C-SCRM).[<sup>[1]</sup>](#supply-chain-playbook-ref-1)

### Remediar

* **Planificar eventos de remediación** en los que estos pasos se pongan en marcha juntos (o de forma coordinada), con los equipos adecuados listos para responder a cualquier interrupción.
* **Considere el momento y las compensaciones** de las acciones de remediación: su respuesta tiene consecuencias.

#### Contención

`OBJETIVO: Frenar propagación y reducir exposición, sin destruir evidencia; coordinar con proveedores y con áreas de negocio críticas.`

`OBJETIVO: Especificar herramientas y procedimientos internos para cada paso (EDR, SIEM, proxy/DNS, IAM/SSO, MDM, gestión de cambios).`

* **Congelar cambios relacionados**
	* Pausar despliegues/actualizaciones automáticas del producto sospechoso hasta validar integridad.
	* Congelar cambios en integraciones (API keys, webhooks, apps) hasta inventariar.

* **Reducir superficie y cortar accesos de terceros**
	* Deshabilitar temporalmente accesos de soporte/proveedor (cuentas, VPN, RMM) si existe riesgo.
	* Rotar/invalidar credenciales compartidas del proveedor y revocar tokens/sesiones.

* **Aislar sistemas potencialmente comprometidos**
	* Aislar endpoints/servidores con el software/actualización afectada.
	* Si hay impacto en web/tienda: poner en modo mantenimiento o aislar, y coordinar con hosting/CDN.

* **Bloquear IOCs y activar detección**
	* Bloquear dominios/URLs/IPs publicados por el proveedor/CSIRT.
	* Añadir reglas temporales de detección en SIEM/EDR/IDS.

* **Proteger la operación financiera (si aplica)**
	* Reforzar validación fuera de banda para cambios de IBAN/pagos (doble aprobación, llamada a contacto conocido).
	* Suspender pagos urgentes relacionados con correos/cambios recientes hasta verificar.

* **Retención forense**
	* Conservar logs de endpoints/servidores y auditorías SaaS; exportar evidencias si el proveedor tiene retención limitada.
	* Preservar instaladores/paquetes, hashes y firmas.

`OBJETIVO: Considerar automatizar contención mediante orquestación (SOAR) donde exista.`

#### Erradicar

`OBJETIVO: Eliminar el artefacto malicioso, cerrar el vector (proveedor/integración), y restaurar confianza mediante versiones limpias y rotación de secretos.`

`OBJETIVO: Especificar herramientas y procedimientos para cada paso (gestión de parches, golden images, IAM, MDM, repositorios y CI/CD si aplica).`

* **Actualizar/retroceder a versión segura**
	* Aplicar mitigación del proveedor y actualizar a versión corregida; si no existe, revertir a versión conocida como buena.
	* Verificar firmas/cadena de confianza cuando aplique (code signing).

* **Reimagen/limpieza de sistemas**
	* Reinstalar o reimaginar endpoints/servidores comprometidos; validar persistencia y artefactos.
	* Escanear y limpiar recursos compartidos (servidores de ficheros y almacenamiento cloud) ante malware.

* **Rotación de secretos y endurecimiento**
	* Rotar claves API, tokens OAuth, credenciales de servicio, certificados, contraseñas y secretos de integraciones.
	* Revisar permisos: mínimo privilegio para apps e integraciones; retirar apps no aprobadas.
	* Revisar acceso condicional/MFA para cuentas privilegiadas y de proveedor.

* **Validación post-erradicación**
	* Monitorizar reinfección y actividad anómala (autenticación, cambios admin, exfiltración).
	* Confirmar que no quedan reglas de buzón/reenvíos/automatizaciones sospechosas (si hubo impacto en correo).

#### Referencia: Recursos de remediación

`OBJETIVO: Especificar recursos financieros, de personal y logísticos para llevar a cabo la remediación (incluye soporte del proveedor, consultoría IR/forense, y ventanas de mantenimiento).`

### Comunicar

`OBJETIVO: Comunicar con precisión evitando especulación; coordinar con proveedor, Legal y Dirección. Minimizar el daño reputacional y cumplir obligaciones.`

`OBJETIVO: Especificar herramientas y procedimientos (incluyendo quién participa) o remitir al plan general.`

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Notificar a Dirección y al responsable de seguridad (coordinación de subcontratas) con resumen: proveedor afectado, impacto probable, acciones de contención.
1. Abrir canal formal con el proveedor (support/CSIRT):
	* Solicitar confirmación de alcance, IOCs, mitigaciones, y evidencia de integridad.
	* Solicitar logs/auditorías relacionadas (si están en su control) y calendario de actualizaciones.
1. Coordinar con Legal:
	* Evaluar obligaciones de notificación (clientes, autoridades, aseguradora), especialmente si hay datos personales.
	* Revisar contratos/SLA, y requerimientos de notificación del proveedor.
1. Coordinar mensajes internos (TIC, Compras, Facturación/Ventas, RRSS/Comunicación, RRHH) con instrucciones claras (“qué hacer / qué no hacer”).
1. Si web/tienda o RRSS se ven afectados: preparar un comunicado externo breve y verificable (canales oficiales, recomendaciones a clientes).

### Recuperación

`OBJETIVO: Restaurar servicios con confianza, mejorar controles de proveedores y reducir recurrencia.`

`OBJETIVO: Especificar herramientas y procedimientos para cada paso (backups, gestión de configuración, hardening, vendor management).`

Además de los pasos y orientaciones generales del plan de respuesta a incidentes:

1. Restablecer servicios de forma gradual, priorizando:
	* correo/identidades, CRM/ERP, almacenamiento compartido, web/tienda.
1. Reforzar controles de terceros:
	* Inventario de proveedores críticos y accesos; eliminación de cuentas compartidas.
	* MFA para accesos privilegiados y de proveedores; segmentación/zonas para accesos externos.
	* Revisión de integraciones OAuth/API y permisos mínimos.
1. Mejorar higiene de actualizaciones:
	* Ventanas de mantenimiento, pruebas previas, verificación de firmas, y rollback plan.
	* Mantener inventario de versiones y dependencias (SBOM si aplica) y elevar prácticas de aseguramiento de la cadena de build cuando sea viable.[<sup>[7]</sup>](#supply-chain-playbook-ref-7)
1. Lecciones aprendidas:
	* Actualizar el registro de riesgos y el proceso de compras/terceros (requisitos de seguridad, notificación y logs).
	* Simulacros y ejercicios con proveedores críticos.

### Recursos

#### Información adicional

1. <a name="supply-chain-playbook-ref-1"></a>[NIST SP 800-161r1: Cybersecurity Supply Chain Risk Management Practices for Systems and Organizations](https://csrc.nist.gov/publications/detail/sp/800-161/rev-1/final)
1. <a name="supply-chain-playbook-ref-2"></a>[NIST SP 800-61r2: Computer Security Incident Handling Guide](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf)
1. <a name="supply-chain-playbook-ref-3"></a>[NIST SP 800-218: Secure Software Development Framework (SSDF)](https://csrc.nist.gov/publications/detail/sp/800-218/final)
1. <a name="supply-chain-playbook-ref-4"></a>[CISA: Supply Chain Compromise](https://www.cisa.gov/news-events/cybersecurity-advisories)
1. <a name="supply-chain-playbook-ref-5"></a>[MITRE ATT&CK: Supply Chain Compromise (T1195)](https://attack.mitre.org/techniques/T1195/)
1. <a name="supply-chain-playbook-ref-6"></a>[ENISA: Threat Landscape (secciones de supply chain)](https://www.enisa.europa.eu/publications/enisa-threat-landscape-2023)
1. <a name="supply-chain-playbook-ref-7"></a>[SLSA: Supply-chain Levels for Software Artifacts](https://slsa.dev/)
1. <a name="supply-chain-playbook-ref-8"></a>[OWASP: Software Supply Chain Security](https://owasp.org/www-project-software-supply-chain-security/)
1. <a name="supply-chain-playbook-ref-9"></a>[CNCF: Software Supply Chain Best Practices](https://www.cncf.io/blog/2022/02/10/software-supply-chain-best-practices/)
1. <a name="supply-chain-playbook-ref-10"></a>[INCIBE: recursos y avisos](https://www.incibe.es/)
1. <a name="supply-chain-playbook-ref-11"></a>[CCN-CERT: guías y recursos (España)](https://www.ccn-cert.cni.es/)

