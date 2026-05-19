# Rol: Asesor Legal y Cumplimiento (Legal/Compliance)

## Descripción

El Asesor Legal es el especialista en **requisitos legales y cumplimiento normativo** durante un incidente. Su rol es asegurar que:

- Actuamos dentro de la ley (especialmente GDPR para datos de clientes)
- Protegemos evidencia para potencial investigación
- Notificamos a autoridades si es requerido
- Comunicamos apropiadamante sin exponer a la empresa legalmente

En una asesoría que maneja datos de clientes, **este rol es crítico**. Un error legal puede costar más que el incidente técnico.

---

## Deberes Principales

### 1. Evaluación Inmediata de Requisitos Legales

Cuando empieza el incidente:

- **¿Hay datos de clientes involucrados?**
  - Si SÍ: "Esto tiene implicaciones GDPR"
  - Si NO: "Este es un incidente interno sin requisitos de notificación externa"

- **¿Qué datos exactamente fueron accedidos?**
  - Nombres de clientes = GDPR
  - Números de teléfono = GDPR
  - Datos financieros = Especialmente sensible
  - Contraseñas = Alto riesgo

- **¿Cuántas personas fueron afectadas?**
  - Bajo GDPR, incluso 1 persona requiere notificación si fue "vulneración"

### 2. Notificación Obligatoria GDPR

Si hay datos comprometidos:

- **72 horas máximo**: Desde descubrimiento, debes notificar a autoridades (Agencia Española de Protección de Datos)
- **Información a clientes**: Si es "riesgo alto", debes notificar a los clientes afectados
- **Documentar todo**: Qué pasó, cuándo, qué datos, qué hicimos

**Tu trabajo durante el incidente:**
- Verificar si la "vulneración" califica según GDPR (acceso, divulgación, modificación, pérdida de datos)
- Calcular plazo de 72 horas
- Preparar borrador de notificación (sin publicar hasta que IC autorice)

### 3. Protección de Evidencia y Cadena de Custodia

- **Aislar evidencia**: No dejes que cualquiera toque logs o discos duros
- **Documentar acceso**: Quién tocó qué, cuándo, por qué
- **Hacer copias**: Una copia original sin tocar, una para investigación
- **Hash criptográfico**: Si es relevante judicialmente, hashear archivos
- **Almacenamiento seguro**: En lugar seguro (Legal/Seguridad), no en escritorios

**Ejemplo:**
```
Evidencia: /var/log/auth.log del servidor de correo
Descubierta: 14:30 del 19/05/2026
Accedida por: SME de sistemas, por orden del IC
Almacenada en: Carpeta segura /incidents/2026-05-19-correo/
Hash SHA256: [calculado y registrado]
```

### 4. Asesoría sobre Comunicación

Cuando el Enlace quiere comunicar algo externamente:

- **¿Puedo decir esto?** - Valida si es legal/seguro
- **¿Qué NO debo decir?** - Señala riesgos legales
- **¿Cuándo notificar?** - Plazo GDPR vs. plazo prudente

**Ejemplos:**
-  "Detectamos un acceso no autorizado y lo bloqueamos" (vago, seguro)
-  "El atacante accedió a 500 clientes, nombres y números de teléfono" (muy específico, riesgo pánico)
-  "Algunos datos de clientes pueden haber sido accedidos. Notificaremos en 24 horas si es confirmado" (informativo, prudente)

### 5. Decisiones de Escalado Legal

Si el IC pregunta "¿Debo hacer X?":

- **¿Es legal?** - Sí/No/Depende
- **¿Cuál es el riesgo?** - Si no lo hago, ¿me demandan?
- **¿Y si lo hago?** - ¿Qué exposición legal tengo?

**Ejemplos:**
- IC: "¿Puedo bloquear las cuentas de los empleados sospechosos sin prueba?"
  - Respuesta: "Depende. Si tienes evidencia razonable, sí. Pero documéntalo bien por si te demandan"

- IC: "¿Puedo revisar todos los emails de un empleado?"
  - Respuesta: "Solo si tienes orden legal o contrato que lo permita. Si no, riesgo de demanda por privacidad"

### 6. Post-Mortem Legal

Después del incidente:

- **Revisión de timeline**: ¿Actuamos dentro de 72 horas? ¿Documentamos bien?
- **Notificaciones completadas**: ¿Enviamos a AEPD? ¿A clientes?
- **Exposición residual**: ¿Qué riesgo legal queda?
- **Mejoras para próxima vez**: "Necesitamos definir mejor qué es dato sensible"

---

## Habilidades Necesarias

### Conocimiento de GDPR
- Cuándo es una "vulneración"
- Plazos de notificación
- Derechos de individuos
- Qué es "dato personal"

### Experiencia Legal
- Contratos con clientes
- Requisitos de privacidad
- Litigio potencial
- Comunicación prudente

### Pensamiento Estratégico
- Balance entre transparencia y protección
- Entender riesgos de negocio
- Comunicar con diplomacia

---

## Cuando Notificar a Abogados Externos

Si el IC decide que necesita abogados (ej: por litigio potencial):

- Contacta inmediatamente (no esperes a que termine el incidente)
- Proporciona: Timeline, datos afectados, comunicaciones internas
- Marca como **PRIVILEGIO ABOGADO-CLIENTE** (confidencial legal)

---

## Capacitación Requerida

Antes de este rol:

- ✓ Certificación GDPR (IAPP o similar)
- ✓ Experiencia en cumplimiento de datos
- ✓ Entender el sector de asesorías/contabilidad
- ✓ Familiaridad con leyes españolas de privacidad
- ✓ Read the incident response plan

---

## Recursos y Referencias

- **Reglamento GDPR**: https://www.aepd.es/
- **Agencia Española de Protección de Datos (AEPD)**: https://www.aepd.es/
- Rol: Incident Commander
- Rol: Enlace (para comunicaciones)
- Rol: Escriba (para documentación)

---

**Documento**: Rol - Asesor Legal y Cumplimiento
<br>
**Grupo G5**: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo
<br>
**Fecha**: Mayo 2026
