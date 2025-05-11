
# Playbook: Robo Financiero

**¡Investigar, remediar (contener, erradicar) y comunicarse en paralelo!**

Asignar pasos a personas o equipos para que trabajen simultáneamente, siempre que sea posible; esta guía no es puramente secuencial. Use su criterio.

## Investigar

1. **Detección del incidente**

   * El incidente puede ser detectado por:

     * Alertas automáticas del sistema bancario
     * Revisión de auditorías financieras
     * Denuncias internas o externas (empleados, bancos, clientes, proveedores)
     * Contacto de instituciones financieras

2. **Determinar el alcance del robo**

   * ¿Qué tipo de transacción se vio comprometida? (transferencia, compra, etc.)
   * ¿Qué cuentas bancarias, tarjetas u otros activos financieros fueron impactados?
   * ¿Qué usuarios o empleados están involucrados o afectados?
   * ¿Se usaron credenciales comprometidas? ¿Cómo se obtuvieron?
   * ¿Cuándo ocurrió la transacción no autorizada y cuántas veces?

3. **Recolectar evidencias**

   * Historial detallado de transacciones (fechas, montos, cuentas de origen/destino)
   * Logs de acceso al sistema financiero
   * Logs del sistema operativo y red
   * Registros de sesiones de usuarios, accesos VPN o RDP
   * Dispositivos utilizados y ubicaciones IP
   * Capturas de pantalla, correos electrónicos o alertas internas relacionadas

4. **Revisar posibles vectores de ataque**

   * Ingeniería social (phishing previo, fraude del CEO, etc.)
   * Malware o keyloggers instalados en terminales
   * Uso indebido de cuentas privilegiadas
   * Acceso no autorizado a plataformas financieras

5. **Clasificar el tipo de incidente**

   * Robo interno: acción maliciosa por parte de un empleado con acceso legítimo.
   * Compromiso de credenciales: uso externo de credenciales robadas o filtradas.
   * Fraude del CEO: ataque dirigido que suplanta una autoridad para transferencias falsas.
   * Compromiso de email empresarial (BEC): uso de cuentas de correo comprometidas para instruir pagos.
   * Abuso de acceso privilegiado: mal uso de permisos de administrador o finanzas.

6. **Evaluar la gravedad del incidente**

   * Montos robados y activos comprometidos
   * Riesgo de continuidad del negocio
   * Implicaciones legales y regulatorias
   * Impacto en clientes, empleados o terceros
   * Riesgo de incidentes relacionados (p. ej., fuga de datos)

## Remediar

**Planificar eventos de remediación** coordinados con los equipos adecuados, con conciencia del posible impacto operativo.

### Contener

* Suspender las cuentas o accesos comprometidos inmediatamente.
* Desactivar temporalmente transferencias externas desde sistemas afectados.
* Cambiar credenciales de cuentas financieras y administrativas.
* Limitar o revocar accesos privilegiados no esenciales.
* Aislar endpoints sospechosos de estar comprometidos.
* Aplicar reglas de control de tráfico saliente hacia IPs/dominios sospechosos.
* Notificar a la entidad financiera para detener o revertir transacciones.
* Activar retención de logs y evidencia forense.

### Erradicar

* Eliminar malware, herramientas de acceso remoto o keyloggers identificados.
* Revisar configuraciones de seguridad en los sistemas financieros.
* Revocar certificados, llaves API o tokens comprometidos.
* Reconfigurar reglas de firewall, alertas de seguridad y sistemas de detección (SIEM, EDR).

## Comunicación

1. Escalar el incidente al equipo de gerencia y CISO según el procedimiento.
2. Documentar el incidente en el sistema de gestión de incidentes.
3. Notificar a los asesores legales internos y externos (incluye cumplimiento financiero y regulatorio).
4. Comunicar el incidente al banco o proveedor financiero involucrado.
5. Informar al seguro corporativo (ciberseguro o pólizas de fraude financiero).
6. Notificar a usuarios internos, clientes o terceros afectados, según normativa.
7. Considerar la notificación a autoridades competentes o fuerzas del orden (p. ej., policía cibernética, unidad antifraude).
8. Comunicar los impactos del incidente (por ejemplo, bloqueo temporal de pagos) y los pasos para mitigar futuros eventos.

## Recuperar

1. Revisar y ajustar los controles de acceso a los sistemas financieros.
2. Implementar autenticación multifactor y revisión de privilegios.
3. Restaurar operaciones financieras con medidas de seguridad reforzadas.
4. Establecer procedimientos adicionales de verificación para operaciones sensibles.
5. Reforzar la capacitación del personal en ciberfraude y manejo seguro de transacciones.
6. Verificar el cumplimiento con normas como PCI DSS, GDPR o equivalentes nacionales.
7. Coordinar con contabilidad para realizar conciliaciones y evaluación de pérdidas.
8. Realizar una revisión post mortem para identificar fallas y oportunidades de mejora.

## Recursos

### Acciones del usuario ante una sospecha de robo financiero

1. Mantenga la calma y comuníquese inmediatamente con el equipo de seguridad o TI.
2. Tome nota del momento exacto de la transacción sospechosa.
3. Guarde cualquier correo electrónico, mensaje o archivo relacionado.
4. No cierre las ventanas o aplicaciones usadas en la operación fraudulenta.
5. No intente revertir manualmente la transacción sin instrucciones del equipo especializado.
6. Proporcione toda la información solicitada al Help Desk o al equipo de respuesta.

### Acciones del Help Desk ante una sospecha de robo financiero

1. Registrar el incidente en el sistema de tickets con toda la información proporcionada.
2. Confirmar la autenticidad del reporte (p. ej., llamada telefónica interna).
3. Recolectar evidencia inicial (logs, correos, capturas).
4. Escalar al equipo de respuesta a incidentes sin intentar manipular datos críticos.
5. Aislar sistemas comprometidos si se detecta actividad maliciosa en curso.
6. Seguir instrucciones del equipo de IR para contención y erradicación.

## Información adicional

* [FinCEN: Informar incidentes de fraude financiero](https://www.fincen.gov/)
* [ENISA: Good practices for Financial Sector](https://www.enisa.europa.eu/)
* [Interpol Cybercrime and Financial Fraud](https://www.interpol.int/en/Crimes/Financial-crime)
