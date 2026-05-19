# Rol: Investigador Forense (Forensics Investigator)

## Descripción

El Investigador Forense es el **detective técnico** del incidente. Mientras otros están conteniendo/reparando, el Forense investiga:

- ¿Qué exactamente pasó?
- ¿Cómo entró el atacante?
- ¿Qué tocó?
- ¿Cuándo empezó?
- ¿Hay más acceso no detectado?

Este rol es crítico para:
- Entender el alcance real (no asumir)
- Encontrar evidencia para Legal
- Identificar si hay puertas traseras abiertas
- Mejorar defensas futuras

---

## Deberes Principales

### 1. Recopilación de Evidencia

En los primeros minutos:

- **Preservar los logs originales**: Antes de que se sobre-escriban
  - Copiar a locación segura (servidor de backup)
  - NO tocar el sistema original innecesariamente
  
- **Recopilación de datos**:
  - Logs de firewall (intentos de acceso)
  - Logs de sistemas (qué se ejecutó)
  - Logs de autenticación (quién se conectó)
  - Logs de aplicaciones (si aplica)

**Ejemplo:**
```
Fuentes de logs para incidente de compromiso de correo:
- Firewall: /var/log/firewall (últimas 48h)
- Servidor correo: /var/log/mail.log (últimas 7 días)
- Autenticación: /var/log/auth.log (últimas 7 días)
- Copias: Guardadas en /backup/incident-2026-05-19/
```

### 2. Análisis de Timeline

Construye una **línea de tiempo exacta**:

```
15/05/2026 09:30 - Primer login fallido desde IP 203.0.113.45
15/05/2026 09:45 - 5 intentos fallidos más de la misma IP
16/05/2026 14:00 - Login exitoso con credencial "empleado@empresa.com" desde IP 203.0.113.45
16/05/2026 14:05 - Email enviado a [cliente sensible] desde cuenta comprometida
16/05/2026 14:30 - Empleado reporta que recibió OTP en teléfono (intento de reset contraseña)
16/05/2026 14:35 - Empleado llama a TIC, se descubre compromiso
```

**Por qué es importante:**
- Legal necesita: ¿Cuándo pasó exactamente?
- SME técnico necesita: ¿Por qué la detección fue lenta?
- IC necesita: ¿Cuánto tiempo estuvo el atacante adentro?

### 3. Identificación de Indicadores de Compromiso (IOCs)

Documenta todo lo que el atacante dejó:

- **IPs del atacante**: 203.0.113.45, 203.0.113.46
- **Cuentas usadas**: empleado@empresa.com (comprometida), admin (fuerza bruta)
- **Herramientas detectadas**: Mimikatz (robo de credenciales), PsExec (acceso remoto)
- **Archivos maliciosos**: backdoor.exe, script.vbs
- **Modificaciones**: Timestamp de archivos alterados

**Comparte estos IOCs** con SME técnico para:
- Bloquear en firewall (IPs)
- Buscar en otros sistemas (¿dónde más está?)
- Alertas futuras (si vuelven, nos enteramos)

### 4. Búsqueda de Puertas Traseras

Después de contención inicial:

- **¿Hay acceso persistente?** - ¿Puede el atacante volver sin las credenciales originales?
- **Tareas programadas sospechosas** - Cron jobs, scheduled tasks
- **Usuarios nuevos** - ¿Se creó un usuario "admin2"?
- **SSH keys no autorizadas** - En ~/.ssh/authorized_keys
- **Servicios raros listening** - Puertos abiertos desconocidos

**Ejemplo:**
```
# Buscar tareas cron maliciosas
# Encontrado: * * * * * /tmp/miner.sh (ejecuta cada minuto)
# Eliminado y documentado
```

### 5. Análisis de Impacto Real

Reporta al IC:

- **¿Qué datos accedió exactamente?**
  - No "correos" sino "carpeta de cliente X: 150 emails"
  - No "base de datos" sino "tabla de clientes: 50 registros con nombres y teléfonos"

- **¿Cuánto tiempo estuvo adentro?**
  - 2 horas = tiempo limitado
  - 3 días = tuvo acceso total

- **¿Qué más podría haber pasado?**
  - Si el atacante tenía acceso a servidor de archivos, probablemente también a backups
  - Si tenía admin, probablemente creó usuario permanente

---

## Herramientas Recomendadas

- **Análisis de logs**: Grep, ELK Stack, Splunk
- **Análisis de malware**: VirusTotal, Cuckoo Sandbox
- **Análisis de red**: Wireshark, Zeek
- **Análisis de memoria**: Volatility (si aplica)
- **Timeline**: Plaso, log2timeline

---

## Después del Incidente

El Forense prepara:

1. **Reporte Forense Completo**:
   - Timeline exacta
   - IOCs documentados
   - Análisis de herramientas usadas
   - Cadena de custodia

2. **Archivo de Evidencia**:
   - Guardado 3 años (requisito legal)
   - Indexado y referenciable
   - Accesible solo a Legal/Seguridad

3. **Lecciones Técnicas**:
   - "El firewall no detectó porque no filtraba puertos X"
   - "Los logs no tenían suficiente detalle"
   - "Falta detectar herramientas como Mimikatz"

---

## Habilidades Necesarias

### Experiencia Técnica Profunda
- Sistemas Linux/Windows
- Redes (TCP/IP, DNS, SSL/TLS)
- Logs y analítica
- Malware y herramientas de ataque

### Pensamiento de Investigador
- Atención al detalle
- Capacidad de conectar puntos
- No asumir, verificar
- Documentar metodología

### Formación Recomendada
- GCIH (Certified Incident Handler)
- GFCI (Certified Forensic Investigator)
- Experiencia con MITRE ATT&CK framework

---

## Capacitación Requerida

Antes de este rol:

- ✓ Certificación forense o investigación de incidentes
- ✓ Experiencia con logs en la empresa
- ✓ Conocimiento de sistemas (Linux y Windows)
- ✓ Leído el incident response plan

---

## Recursos y Referencias

- MITRE ATT&CK: https://attack.mitre.org/ (qué técnicas usan atacantes)
- NIST SP 800-86: Guía de análisis forense
- Rol: Incident Commander (para contexto)
- Rol: SME de Sistemas (para acceso a sistemas)
- Rol: Legal (para requisitos de evidencia)

---

**Documento**: Rol - Investigador Forense
**Grupo G5**: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo
**Fecha**: Mayo 2026
