# Playbooks de Respuesta a Incidentes

Los siguientes playbooks capturan los pasos comunes de investigación, remediación y comunicación para determinados tipos de incidentes.

## Playbooks Disponibles

### [Playbook: Ingeniería Social y Phishing](playbook-ingenieria-social.md)

Respuesta a ataques de ingeniería social y phishing. Estos ataques buscan engañar a empleados para obtener credenciales, información sensible, o acceso a sistemas.

**Incluye**:
- Investigación de correos sospechosos
- Evaluación de riesgos (bajo, moderado, alto, crítico)
- Contención de correos maliciosos
- Protección de cuentas comprometidas
- Investigación técnica de URLs y archivos
- Comunicación y alertas internas

---

### [Playbook: Compromiso de Identidad y Acceso](playbook-identity-access.md)

Respuesta a compromiso de credenciales y acceso no autorizado a sistemas.

**Incluye**:
- Detección de compromiso de contraseñas
- Cambio de credenciales
- Revocación de acceso
- Búsqueda de puertas traseras

---

### [Playbook: Ransomware](playbook-ransomware.md)

Respuesta a ataques de ransomware que cifran archivos y demandan rescate.

**Incluye**:
- Detección de cifrado
- Aislamiento de sistemas
- Restauración desde copias de seguridad
- Decisión de pago/no pago

---

### [Playbook: Compromiso de Cadena de Suministro](playbook-supply-chain.md)

Respuesta a compromiso de proveedores, software de terceros, o servicios utilizados por la empresa.

**Incluye**:
- Confirmación de alerta
- Identificación de sistemas afectados
- Evaluación de riesgo
- Desinstalación de software comprometido
- Validación de versiones limpias
- Comunicación con proveedores

---

### [Playbook: Defacement](playbook-defacement.md)

Respuesta a modificación no autorizada de sitios web o contenido.

**Incluye**:
- Detección de cambios
- Restauración de contenido
- Investigación de acceso no autorizado
- Mejora de seguridad web

---

## Marco de Respuesta a Incidentes

Todos los playbooks siguen el marco de **6 fases** de NIST SP 800-61:

1. **Preparación**: Herramientas, personal, procedimientos listos
2. **Identificación**: Detección y confirmación del incidente
3. **Contención**: Evitar propagación del daño
4. **Erradicación**: Eliminar la causa del incidente
5. **Recuperación**: Restaurar sistemas a normalidad
6. **Post-Incidente**: Aprender y mejorar