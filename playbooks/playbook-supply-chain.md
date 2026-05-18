## Playbook: Supply Chain Compromise

**Investiga, remedia (contén y erradica) y comunica en paralelo.**

Asigna acciones a personas o equipos para trabajar de forma concurrente siempre que sea posible. Este playbook no es estrictamente secuencial: prioriza según criticidad del proveedor, exposición de la organización y evidencia disponible.

### Investigate

`TODO: Ampliar los pasos de investigación, preguntas clave y estrategias para compromiso de cadena de suministro, justificándolo con proveedores críticos, activos afectados y análisis de riesgos previo.`

1. Identifica el proveedor, componente, actualización, integración, librería, servicio gestionado o canal de distribución potencialmente comprometido.
1. Determina qué activos internos dependen de ese proveedor o componente y qué permisos tiene en la organización.
1. Revisa avisos del proveedor, boletines de seguridad, CVE, hashes, versiones, certificados, firmas y artefactos de despliegue.
1. Busca actividad anómala asociada al proveedor: conexiones salientes, cambios de configuración, ejecución de binarios, creación de cuentas, elevación de privilegios o acceso a datos.
1. Verifica si el compromiso afecta a confidencialidad, integridad o disponibilidad de servicios críticos.
1. Conserva evidencias: versiones instaladas, paquetes, logs de integración, contratos, comunicaciones del proveedor y línea temporal de despliegues.

### Remediate

* **Planifica ventanas de remediación** coordinadas con TI, negocio, compras, legal y propietarios del servicio afectado.
* **Valora dependencias y efectos colaterales**: aislar un proveedor o retirar un componente puede afectar procesos de negocio, soporte, pagos, producción o atención a clientes.

#### Contain

`TODO: Personalizar las medidas tácticas y estratégicas de contención para compromiso de cadena de suministro.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

* Suspende temporalmente integraciones, credenciales, tokens, VPN, cuentas de soporte o accesos remotos del proveedor afectado.
* Bloquea versiones, paquetes, dominios, certificados, hashes o endpoints asociados al compromiso.
* Aísla sistemas que hayan recibido actualizaciones o artefactos sospechosos.
* Detén despliegues automáticos relacionados hasta validar la integridad de la cadena de distribución.
* Aplica controles compensatorios si no es posible desconectar el servicio sin impacto crítico.

`TODO: Considerar la automatización de medidas de contención mediante herramientas de orquestación.`

#### Eradicate

`TODO: Personalizar las medidas tácticas y estratégicas de erradicación para compromiso de cadena de suministro.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

* Retira versiones, paquetes, artefactos, agentes o configuraciones comprometidas.
* Rota credenciales, secretos, certificados y claves compartidas con el proveedor o componente afectado.
* Reinstala desde fuentes verificadas y valida firmas, hashes y procedencia de los artefactos.
* Revisa configuraciones creadas por integraciones del proveedor y elimina persistencia no autorizada.
* Exige al proveedor evidencias de contención, causa raíz, alcance y medidas correctoras antes de restablecer confianza plena.

#### Reference: Remediation Resources

`TODO: Especificar recursos financieros, humanos y logísticos necesarios para completar la remediación.`

### Communicate

`TODO: Personalizar los pasos de comunicación para compromiso de cadena de suministro.`

`TODO: Especificar herramientas, procedimientos y personas implicadas para cada paso, o referenciar el plan general.`

Además de los pasos y criterios generales del plan de respuesta:

1. Escala el incidente a dirección, legal, compras, cumplimiento y propietarios del servicio afectado.
1. Coordina comunicaciones con el proveedor, solicitando información factual, línea temporal, indicadores, alcance y recomendaciones.
1. Comunica internamente el impacto esperado de desconexiones, bloqueos o cambios de proveedor.
1. Evalúa notificaciones a clientes, reguladores o terceros si el proveedor ha accedido a datos o servicios críticos.

### Recover

`TODO: Personalizar los pasos de recuperación para compromiso de cadena de suministro.`

`TODO: Especificar herramientas y procedimientos para cada paso.`

Además de los pasos y criterios generales del plan de respuesta:

1. Restablece integraciones solo tras validar controles técnicos, contrato, evidencias del proveedor y aprobación del IC.
1. Ejecuta pruebas funcionales y de seguridad sobre servicios afectados antes de volver a operación normal.
1. Mantén monitorización reforzada sobre accesos del proveedor, tráfico de integración y cambios de configuración.
1. Actualiza el registro de proveedores críticos, requisitos de seguridad contractual y escenarios de continuidad.

### Resources

#### Additional Information

1. <a name="supply-chain-playbook-ref-1"></a>[MITRE ATT&CK: Supply Chain Compromise](https://attack.mitre.org/techniques/T1195/)
