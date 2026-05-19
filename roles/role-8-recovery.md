# Rol: Especialista en Recuperación (Recovery Specialist)

## Descripción

El Especialista en Recuperación es el responsable de **restaurar sistemas de forma segura** después de un incidente. Su trabajo es:

- Verificar que backups no estén comprometidos
- Restaurar de forma segura y verificada
- Asegurar que no se restaura malware
- Validar que los sistemas funcionan correctamente después

En una asesoría con datos GDPR y riesgos de ransomware, **este rol es crítico**. Un backup comprometido significa desastre total.

---

## Deberes Principales

### 1. Evaluación de Backups Antes de Restaurar

**ANTES de tocar backups:**

- **¿Cuándo fue el último backup limpio?**
  - Si el compromiso fue el 15/05, ¿el backup del 10/05 está limpio?
  - Si no estamos seguros, restaurar es arriesgado (podemos restaurar malware)

- **¿Están los backups también comprometidos?**
  - En ransomware, a veces el atacante accede a backups también
  - Verificar: integridad, no hay archivos criptados, logs normales

- **¿Disponibilidad de backups?**
  - ¿Tenemos backups externos? ¿Están accesibles?
  - Según el PDS, esto fue gap (PRY-003)

**Preguntas a hacer:**
```
¿Dónde está el backup?
¿Cuándo fue tomado?
¿Está en almacenamiento seguro externo?
¿Se verifica regularmente?
¿Hay malware detectado en él?
```

### 2. Validación de Integridad del Backup

Si restauramos de backup, primero verificamos:

- **Hash/Checksum**: Si existe, verificar que no cambió
  ```
  SHA256 del backup 10/05 = ABC123 (documentado)
  SHA256 del archivo guardado = ABC123 (verifica!)
  ```

- **Análisis antivirus**: Escanear backup por malware
  - A veces es overkill, pero en ransomware es prudente

- **Integridad de archivos**: Spots checks
  - Abrir unos ficheros: ¿Se ven normales? ¿Timestamp tiene sentido?

- **Logs del sistema**: Examinar logs de backup
  - ¿Se completó sin errores?
  - ¿El tamaño es razonable?

### 3. Planificación de Restauración

**NO restauramos todo de una vez.** Plan:

```
FASE 1 (Día 1, 10:00-12:00):
- Restaurar servidor de correo desde backup 10/05
- Validar que correo funciona
- Monitorear por anomalías 2 horas

FASE 2 (Día 1, 14:00-16:00):
- Restaurar servidor de archivos
- Validar que clientes pueden acceder
- Monitorear

FASE 3 (Día 2):
- Si todo bien, restaurar resto de sistemas
```

**Por qué en fases:**
- Si restauración causa problema, solo afecta ese sistema
- Tiempo para verificar cada paso
- Menos riesgo de propagación de malware

### 4. Ejecución de Restauración

Cuando el IC autoriza:

- **Aislar sistema**: Desconectar de red antes de restaurar
  - Si hay malware persistente, no queremos que se comunique
  
- **Restaurar desde backup**: Seguir procedimiento documentado
  - Logs de cada paso
  - Tiempos de inicio/fin
  
- **Reconectar seguramente**: Pequeño aislamiento
  - Conectar a VLAN de cuarentena
  - Verificar antes de conectar al resto
  
- **Validación post-restauración**:
  - ¿Servicio iniciado?
  - ¿Datos accesibles?
  - ¿Performance normal?

**Documentar TODO:**
```
14:00 - Desconectado servidor de correo de red
14:05 - Restauración iniciada desde backup 10/05 (5GB)
14:25 - Restauración completada
14:30 - Reconectado a VLAN de prueba
14:35 - Correo iniciado, primeros 100 users probando acceso
14:40 - Todo funciona, reconectado a red productiva
```

### 5. Verificación de Limpieza

Después de restaurar:

- **¿El malware está eliminado?**
  - Si el archivo malicioso estaba en /tmp, probablemente desaparecerá al restaurar
  - Pero si estaba en datos compartidos, verificar que no regresó

- **¿La puerta trasera está cerrada?**
  - Si el atacante creó usuario "admin2", verificar que no existe después de restaurar

- **¿Logs muestran compromiso históricamente?**
  - En el backup anterior, ¿hay evidencia de que ya estaba comprometido?
  - Si SÍ, ese backup también está contaminado

### 6. Plan de Recuperación ante Desastre

**Si TODOS los backups están comprometidos:**

- Escalar a IC y Legal inmediatamente
- Opciones (malas todas):
  1. Restaurar y acepta riesgo (docméntalo)
  2. Reconstruir desde cero (muy lento, días)
  3. Datos perdidos permanentemente (worst case)

**Por eso PRY-003 fue importante:** Backups externos, verificados, en múltiples ubicaciones.

---

## Habilidades Necesarias

### Experiencia con Backup/Recovery
- Sistemas de backup (Veeam, Bacula, Duplicati)
- Restauración de bare metal (SO completo)
- Restauración selectiva (archivos específicos)

### Conocimiento de Sistemas
- Linux/Windows servers
- Storage y almacenamiento
- Redes (VLAN, segmentación)

### Atención al Detalle
- Verificación cuidadosa
- Documentación precisa
- No apresurarse ("mañana", "probablemente está ok" = mal)

---

## Procedimiento de Pruebas Regulares

Para que este rol funcione, **antes de un incidente:**

- **Pruebas mensuales**: Restaurar archivos aleatorios de backup
- **Pruebas trimestrales**: Restauración completa de servidor de prueba
- **Pruebas anuales**: Restore de bare metal (sistema entero)

**Docomentar:**
```
Prueba del 01/04/2026:
- Restaurado servidor correo (test) desde backup 31/03
- Resultado: Exitoso, correo funciona, 50 users probados
- Tiempo: 45 minutos
- Próxima: 01/05/2026
```

---

## Después del Incidente

El Especialista en Recuperación:

1. **Reporte de Restauración**:
   - Qué se restauró
   - De qué backup
   - Validaciones ejecutadas
   - Problemas encontrados

2. **Validación Final**:
   - IC confirma: "Los sistemas son confiables"
   - Usuarios verifican: "Mis datos están ahí"
   - Forensics verifica: "No hay malware"

3. **Plan de Mejora**:
   - "Necesitamos backup externo con pruebas mensuales"
   - "Necesitamos alertas de integridad de backup"
   - "Necesitamos restauración más rápida"

---

## Capacitación Requerida

Antes de este rol:

- ✓ Experiencia con sistemas de backup de la empresa
- ✓ Certificación en recovery (o equivalente experiencia)
- ✓ Leído el incident response plan
- ✓ Participado en pruebas de restauración exitosas

---

## Recursos y Referencias

- Documentación del backup (dónde está, cómo funciona)
- Procedimientos de restauración (por sistema)
- Historiales de pruebas de backup
- Rol: Incident Commander
- Rol: SME de Sistemas
- Rol: Forense (para validar limpieza)

---

**Documento**: Rol - Especialista en Recuperación
**Grupo G5**: Iván Paúl Alba, Sergio González Noria, Manuel Pérez Romero, Javier Calvillo Acebedo
**Fecha**: Mayo 2026
