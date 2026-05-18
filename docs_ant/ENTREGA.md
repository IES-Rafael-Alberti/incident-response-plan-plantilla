# 📋 ENTREGA - Investigación y Desarrollo de la Taxonomía de Incidentes de Ciberseguridad

**ID Actividad:** 2.a.01  
**RA y CE Evaluados:** RA2, CE a  
**Formato:** Documento único en Markdown

---

## 👥 Datos del Grupo

| Campo                   | Contenido                                                  |
|-------------------------|------------------------------------------------------------|
| **Nombres de miembros** | [Hugo Flores Molina], [Jose Luis Godoy Khattaoui], [Manuel Maye Piulestan], [Juan Perez Ortega] |
| **Número de miembros**  | 4                                                          |
| **URL del repositorio** | https://github.com/IES-Rafael-Alberti/2526-u2-2-1-taxonomia-grupo-4_2526                       |
| **Rama principal**      | main                                                       |
| **Fecha de entrega**    | [14/01/2026]                                               |

---

## 🎯 Agrupaciones Seleccionadas

### ✅ Agrupación 1:  Vulnerable

**Descripción:** Debilidad, deficiencia técnica o de configuración en un sistema, programa o red que un actor malicioso puede explotar para obtener acceso no autorizado, realizar operaciones no permitidas, comprometer datos, o causar daños, afectando la confidencialidad, integridad y disponibilidad de la información. 

**Tipos documentados:** 5

---

### ✅ Agrupación 2: Intrusión

**Descripción:** incidente donde un atacante logra acceso no autorizado a sistemas o redes, comprometiendo la confidencialidad, integridad o disponibilidad de la información, a menudo mediante la explotación de vulnerabilidades o el robo de credenciales, resultando en robo de datos, modificación no autorizada (como ransomware), o pérdida de información.

**Tipos documentados:** 5

---

## 📚 AGRUPACIÓN 1: Vulnerable

### Tipo 1: Criptografía debil

#### Características

| Campo              | Contenido                                                 |
|--------------------|-----------------------------------------------------------|
| **Descripción**    | Sistemas, algoritmos o claves que, debido a falos, implementación errónea o que sean obsoletos, permiten que un atacante descifre un texto/contraseña sin mucho esfuerzo con fuerza bruta          |
| **Funcionamiento** | Consiste en el uso de algoritmos obsoletos o rotos (MD5 o versiones antiguas de SSL/TLS), claves débiles fáciles de avidinar por su corta longitud, gestión deficiente de las claves y errores de configuración (deshabilitar accidentalmente el cifrado para datos críticos)        |
| **Identificación** | Uso de algoritmos ya obsoletos o rotos (MD5, SHA-1), longitud de la clave insuficiente (aunque sean con algoritmos modernos), protocolos de comunicación inseguros (TLS v1.0), implementación incorrecta (errores humanos) |
| **Protección**     | Utilizar protocolos y algoritmos actuales, longitudes de claves robustas, usar algoritmos de hash actuales (SHA-256), auditar regulamente la configuración de los servidores para identificar y desactivar protocolos débiles y capacitar personal sobre los riesgos y la importancia de seguir las políticas de seguridad|

#### Caso Real

| Parámetro                    | Contenido                                             |
|------------------------------|-------------------------------------------------------|
| **URL**                      | https://es.wikipedia.org/wiki/Ataque_POODLE                      |
| **Breve Descripción**        | Es un exploit tipo Man-In-The-Middle que aprovecha Internet y el software de los clientes para bajarlos a SSL 3.0                   |
| **Agrupación/Tipo**          | Vulnerable > Criptografía debil                |
| **Origen**                   | Externo                     |
| **Perfiles Afectados**       | Usuarios conectados a servidores con SSL 3.0 habilitado  |
| **Nº y Tipología Sistemas**  | Servidores y PCs     |
| **Categoría Sistemas**       | Alta                       |
| **Peligrosidad**             | 4 (Muy alto)                              |
| **Impacto**                  | L5- Crítico                            |
| **Prioridad Asignada**       | Emergencia                   |

---

### Tipo 2: [Servicios con acceso potencial no deseado]

#### Características

| Campo              | Contenido                                                 |
|--------------------|-----------------------------------------------------------|
| **Descripción**    | Se refiere a servicios accesibles públicamente que permiten conexiones remotas y pueden ser explotados para accesos no autorizados. Ejemplos comunes son protocolos como Telnet (manejo remoto) , RDP (Escritorio Remoto de Microsoft) o VNC (software libre para observación remota).          |
| **Funcionamiento** | Estos servicios utilizan protocolos de red para permitir que un usuario maneje una máquina de forma remota o ejecute aplicaciones entre una terminal y un servidor. Si no están debidamente protegidos o cifrados, un atacante puede interceptar la comunicación o explotar la conexión para tomar control del sistema        |
| **Identificación** | Se detectan principalmente mediante el escaneo de puertos y redes, proceso que identifica qué puertos están abiertos y qué protocolos de seguridad utilizan . Indicadores clave incluyen el tráfico en puertos asociados a gestión remota (como el puerto 23 para Telnet) sin las debidas restricciones|
| **Protección**     |Es vital blindar la seguridad del router, restringir conexiones remotas, cambiar contraseñas por defecto y mantener el firewall activo. Se recomienda el uso de VPN para intercambiar información sensible.         |

#### Caso Real: El colapso digital del Ayuntamiento de Jerez (2019)

| Parámetro                   | Contenido                                            |
|-----------------------------|------------------------------------------------------|
| **URL** | https://www.diariodejerez.es/jerez/ciberataque-ayuntamiento-Jerez_0_1405059951.html |
| **Breve Descripción** | El ayuntamiento sufrió un ataque de ransomware Ryuk. Los atacantes aprovecharon puertos de escritorio remoto (RDP) expuestos para cifrar servidores y paralizar los servicios municipales durante días. |
| **Agrupación/Tipo** | Agrupación 1 > Tipo 2                                |
| **Origen** | Externo                                              |
| **Perfiles Afectados** | Personal administrativo, ciudadanos (gestión de citas y trámites) y servicios de recaudación. |
| **Nº y Tipología Sistemas** | Servidores municipales y equipos de oficina. |
| **Categoría Sistemas** | Crítica (Servicios esenciales municipales)                                            |
| **Peligrosidad** | 5 (Crítico)                                          |
| **Impacto** | L5 (Crítico): Interrupción superior a 24 horas.                                       |
| **Prioridad Asignada** | Emergencia                                           |              |

---

### Tipo 3: Revelación de información

#### Características

| Campo              | Contenido                                                 |
|--------------------|-----------------------------------------------------------|
| **Descripción**    | Exposición no autorizada de información sensible a personas no autorizadas, ya sea de forma accidental o mediante exploits         |
| **Funcionamiento** | Se produce con errores en servidores que exponen directorios ocultos, fallos en apps que revelan información del propio sistema, inyecciones SQL o ingeniería social para obtener datos privados       |
| **Identificación** | Mensajes erróneos de servidores web con información sensible, directorios ocultos que se pueden acceder, datos sensibles en repos públicas, información en metadatos de documentos |
| **Protección**     | Configurar páginas de error sin ningún detalle, deshabilitar el listado de directorios, auditar permisos de acceso a archivos, cifrar datos sensible y capacitar al personal sobre manejo seguro de información       |

#### Caso Real

| Parámetro                   | Contenido                                            |
|-----------------------------|------------------------------------------------------|
| **URL**                     | https://www.incibe.es/incibe-cert/alerta-temprana/vulnerabilidades/cve-2021-44228                    |
| **Breve Descripción**       | Vulnerabilidad Log4Shell (CVE-2021-44228) en Log4j permitió a atacantes ejecutar código remoto y filtrar información del sistema. Afectó a millones de aplicaciones basadas en Java globalmente.             |
| **Agrupación/Tipo**         | Vulnerable > Revelación de información               |
| **Origen**                  | Externo                    |
| **Perfiles Afectados**      | Administradores de sistemas, desarrolladores, usuarios de aplicaciones empresariales con Log4j |
| **Nº y Tipología Sistemas** | Servidores web, aplicaciones empresariales, servicios cloud con Java/Log4j     |
| **Categoría Sistemas**      | Crítica                      |
| **Peligrosidad**            | 5 (Crítico)                             |
| **Impacto**                 | L5 (Crítico)                           |
| **Prioridad Asignada**      | Emergencia                  |

---



### Tipo 4: [Sistema vulnerable]

#### Características

| Campo              | Contenido                                                 |
|--------------------|-----------------------------------------------------------|
| **Descripción**    | Se refiere a la detección de tecnologías, servicios o redes con vulnerabilidades conocidas, así como a la existencia de versiones desfasadas de sistemas o aplicaciones.               |
| **Funcionamiento** | El incidente ocurre cuando un sistema presenta debilidades en sus defensas o malas configuraciones (como el proxy WPAD en clientes). Estas brechas son aprovechadas por atacantes para saltarse restricciones de seguridad o introducir paquetes con código dañino al no contar con los parches necesarios.       |
| **Identificación** | Se identifica mediante el conocimiento técnico de vulnerabilidades en los activos por parte de los administradores o la detección de políticas de seguridad precarias que no garantizan la integridad del sistema. También puede detectarse mediante herramientas de escaneo que encuentran software fuera de soporte.|
| **Protección**     | La medida preventiva fundamental es mantener tanto el sistema operativo, el navegador web y todas las aplicaciones que se usen  actualizadas a su última versión. Es esencial aplicar un diseño seguro en el desarrollo, realizar todo tipo de inspecciones regulares de malware y configurar correctamente los firewalls y routers para restringir accesos innecesarios de terceros .          |

#### Caso Real: Ciberataque global con afectación a la red de Telefónica

| Parámetro                   | Contenido                                            |
|-----------------------------|------------------------------------------------------|
| **URL** | https://www.xataka.com/tag/ataque-ransomware-a-telefonica |
| **Breve Descripción** | El ransomware WannaCry explotó la vulnerabilidad EternalBlue en el protocolo SMB de Windows. Telefónica fue una de las grandes empresas españolas más afectadas al tener sistemas internos sin parchear. |
| **Agrupación/Tipo** | Agrupación 1 > Tipo (Vulnerable)                                |
| **Origen** | Externo (Explotación de vulnerabilidad remota)       |
| **Perfiles Afectados** | Empleados de la sede central y servicios corporativos.|
| **Nº y Tipología Sistemas** | Miles de ordenadores con Windows y servidores de red interna. |
| **Categoría Sistemas** | Crítica                                              |
| **Peligrosidad** | 5 (Crítico)                                          |
| **Impacto** | L5 (Crítico): Afecta apreciablemente a una infraestructura crítica.|
| **Prioridad Asignada** | Emergencia                                           |


## AGRUPACIÓN 2

### Tipo 1: - Explotación de vulnerabilidades conocidas

#### Características

| Campo              | Contenido                                                 |
|--------------------|-----------------------------------------------------------|
| **Descripción**    | Se define como el intento de compromiso de un sistema o de interrupción de un servicio mediante el aprovechamiento de debilidades que poseen un identificador estandarizado, como los registros CVE. Entre los ejemplos prácticos se encuentran el desbordamiento de búfer, el uso de puertas traseras o el cross site scripting (XSS)             |
| **Funcionamiento** | El atacante emplea técnicas para vulnerar un sistema de información con fines ilícitos, aprovechando fallos de seguridad ya documentados. Al utilizar estos fallos con identificadores CVE, el ciberdelincuente busca acceder a datos, tomar el control del equipo o simplemente impedir que el servicio funcione correctamente        |
| **Identificación** | Se logra mediante el registro y monitorización de eventos en las redes, sistemas y aplicaciones para detectar anomalías. La identificación implica recolectar información situacional que permita descubrir señales de intentos de intrusión o comportamientos sospechosos antes de que el impacto sea mayor |
| **Protección**     | La medida preventiva más crítica es mantener el sistema operativo, el navegador y las aplicaciones siempre actualizadas a su última versión para cerrar brechas de seguridad. Adicionalmente, se debe utilizar un antivirus para analizar descargas, activar el firewall y realizar copias de seguridad periódicas           |

#### Caso Real

| Parámetro                   | Contenido                                            |
|-----------------------------|------------------------------------------------------|
| **URL**                     | [itp.com](www.itpro.com/security/hpe-oneview-critical-vulnerability-cisa-advisory)                    |
| **Breve Descripción**       | Se ha descubierto y está siendo explotada en el mundo real una vulnerabilidad crítica (CVE‑2025‑37164) en HPE OneView, una plataforma de gestión de infraestructura. Atacantes pueden ejecutar código remotamente sin autenticación.                 |
| **Agrupación/Tipo**         | [Clasificación: Agrupación 2 > Tipo 1]               |
| **Origen**                  | Externo (vulnerabilidad explotada por actores externos desde la red)                   |
| **Perfiles Afectados**      | Administrativos / Equipo de infraestructura TI |
| **Nº y Tipología Sistemas** | [Cantidad y tipo: servidores, PCs, móviles, red]     |
| **Categoría Sistemas**      | Crítica                     |
| **Peligrosidad**            | 5                             |
| **Impacto**                 | L5                           |
| **Prioridad Asignada**      | Emergencia                |
---

### Tipo 2: [Intento de acceso con vulneración de credenciales]

#### Características

| Campo              | Contenido                                                 |
|--------------------|-----------------------------------------------------------|
| **Descripción**    | [Intento de compromiso de un sistema o de interrupción de un servicio mediante la explotación de vulnerabilidades con un identificador estandarizado (buffer overflow, XSS, backdoor…).]                   |
| **Funcionamiento** | [El atacante simplemente automatiza los inicios de sesión para una gran cantidad (de miles a millones) de pares de credenciales previamente descubiertos utilizando herramientas de automatización web estándar como cURL]         |
| **Identificación** | [Actividad de cuenta anómala (inicios de sesión desde ubicaciones/horas inusuales, intentos fallidos de inicio de sesión), cambios no autorizados de permisos o contraseñas] |
| **Protección**     | [Habilitando la autenticación de dos factores en tus cuentas online cuando sea posible. Considera además del uso de la contraseña huella digital, tokens criptográficos hardware, sistemas OTP (One Time Password), tarjetas de coordenadas, utilizando contraseñas únicas, es decir, que solo utilices en ese servicio específico.]            |

#### Caso Real

| Parámetro                   | Contenido                                            |
|-----------------------------|------------------------------------------------------|
| **URL**                     | [https://www.incibe.es/incibe-cert/publicaciones/bitacora-de-seguridad/robo-de-credenciales-en-adt ]                     |
| **Breve Descripción**       | [ha sufrido un ciberataque que ha llevado al robo de datos cifrados de varios empleados. Este incidente ha sucedido tan solo dos meses después de que la misma compañía anunciara haber sido víctima de otro ciberataque.]                  |
| **Agrupación/Tipo**         | [Clasificación: Agrupación 2 > Tipo 2]               |
| **Origen**                  | [Externo ]                    |
| **Perfiles Afectados**      | [Empleados ] |
| **Nº y Tipología Sistemas** | [Red interna]     |
| **Categoría Sistemas**      | [Crítica ]                      |
| **Peligrosidad**            | [5 (Crítico)]                             |
| **Impacto**                 | [L5 (Crítico)]                           |
| **Prioridad Asignada**      | [Emergencia ]                  |

---

### Tipo 3: [Compromiso de cuenta con privilegios]

#### Características

| Campo              | Contenido                                                 |
|--------------------|-----------------------------------------------------------|
| **Descripción**    | [Ocurre cuando un atacante obtiene acceso no autorizado a una cuenta con permisos elevados (administrador, root), permitiéndole realizar acciones críticas, robar datos sensibles y controlar sistemas]               |
| **Funcionamiento** | [El atacante compromete una cuenta de bajo privilegio (más fácil de robar) o explota una vulnerabilidad para lo que se usa técnicas como exploits, malware o ingeniería social para moverse lateralmente y obtener acceso a cuentas con más permisos (administrador/root).]         |
| **Identificación** | [Anomalías en el Comportamiento del Usuario: Inicio de sesión desde ubicaciones geográficas inusuales o en horarios atípicos. Acceso a archivos o bases de datos no habituales para ese usuario. Ejecución de comandos o herramientas inesperadas. Actividad de Red Sospechosa: Tráfico saliente inusual (picos de datos) indicando exfiltración. Conexiones a direcciones IP o dominios conocidos por ser maliciosos (C&C).
Cambios en el Sistema y Archivos: Instalación de software no autorizado (malware, herramientas de hacking). Modificaciones en archivos críticos del sistema o registros (Windows Registry). Creación o modificación de nuevas cuentas de usuario o servicios.
Escalada y Movimiento Lateral: Intentos repetidos de elevar privilegios. Búsqueda y acceso a credenciales almacenadas. Fallos y Anomalías en la Autenticación: Múltiples intentos fallidos de inicio de sesión seguidos de un éxito (ataques de fuerza bruta). Uso de credenciales robadas o inusuales.] |
| **Protección**     | [Principio del Mínimo Privilegio (PoLP): Otorgar solo el acceso necesario para realizar una tarea específica.
Gestión de la Vida Útil (JIT): Acceso "Justo a Tiempo" (Just-in-Time) para limitar la duración de los permisos.
Autenticación Multifactor (MFA): Exigir múltiples factores para acceder a cuentas críticas.
Bóvedas (Vaults): Almacenar credenciales privilegiadas de forma centralizada y segura, sin incrustarlas en código.
Monitoreo y Auditoría: Registrar y supervisar todas las sesiones privilegiadas para detectar comportamientos sospechosos.
Segmentación: Aislar sistemas y redes para evitar la propagación de un ataque.
Diferenciación de roles: Asignar permisos específicos según la función del usuario]            |

#### Caso Real

| Parámetro                   | Contenido                                            |
|-----------------------------|------------------------------------------------------|
| **URL**                     | [https://ciberseguridadlatam.com/el-ransomware-play-exploto-una-falla-de-registro-de-windows-en-ataques-de-dia-cero/ ]                     |
| **Breve Descripción**       | [El grupo de ransomware Play explotó una falla de alta gravedad del Sistema de Archivos de Registro Común de Windows en ataques de día cero para obtener privilegios de SISTEMA e implementar malware en sistemas comprometidos.]                  |
| **Agrupación/Tipo**         | [Clasificación: Agrupación 2 > Tipo 3]               |
| **Origen**                  | [Desconocido ]                    |
| **Perfiles Afectados**      | [Usuarios ] |
| **Nº y Tipología Sistemas** | [Red ]     |
| **Categoría Sistemas**      | [Crítica ]                      |
| **Peligrosidad**            | [5 (Crítico)]                             |
| **Impacto**                 | [L5 (Crítico)]                           |
| **Prioridad Asignada**      | [Emergencia ]                  |

---

### Tipo 4: - Compromiso de cuenta sin privilegios

#### Características

| Campo              | Contenido                                                 |
|--------------------|-----------------------------------------------------------|
| **Descripción**    | Se trata de una intrusión que consiste en el compromiso de un sistema empleando cuentas que no disponen de privilegios administrativos o especiales. Es un tipo de incidente categorizado con un nivel de peligrosidad medio según los criterios nacionales           |
| **Funcionamiento** | El atacante obtiene acceso ilícito a la cuenta mediante técnicas de ingeniería social (como el phishing) o ataques a contraseñas (fuerza bruta o diccionario). Una vez dentro, el objetivo suele ser obtener información personal, contactos o datos almacenados para beneficio propio o para realizar una suplantación de identidad        |
| **Identificación** | Se identifica mediante el registro y monitorización de los eventos de las aplicaciones y sistemas para detectar anomalías. Los indicadores sospechosos incluyen múltiples intentos de acceso fallidos (ataque de diccionario) o comportamientos inusuales en la cuenta que no coinciden con la información situacional normal del usuario |
| **Protección**     | Las medidas fundamentales incluyen el uso de contraseñas robustas, la implementación obligatoria del factor de autenticación múltiple (MFA) y el uso de gestores de contraseñas. Además, es vital mantener el sistema actualizado, no compartir información personal con desconocidos y realizar copias de seguridad de forma periódica            |

#### Caso Real

| Parámetro                   | Contenido                                            |
|-----------------------------|------------------------------------------------------|
| **URL**                     | [cadenaser.com](cadenaser.com/andalucia/2026/01/13/un-hackeo-masivo-a-endesa-expone-datos-personales-y-bancarios-de-miles-de-clientes-y-exclientes-radio-sevilla/ )                  |
| **Breve Descripción**       | Endesa sufrió un ciberataque masivo con acceso no autorizado a su plataforma comercial, exponiendo datos personales y bancarios de miles/millones de clientes y exclientes. La empresa ha notificado a afectados y reforzado su seguridad.                  |
| **Agrupación/Tipo**         | [Clasificación: Agrupación 2 > Tipo 4]               |
| **Origen**                  | Externo                  |
| **Perfiles Afectados**      | Clientes y exclientes |
| **Nº y Tipología Sistemas** | 1 servidor de base de datos     |
| **Categoría Sistemas**      | Crítica                      |
| **Peligrosidad**            | 5                            |
| **Impacto**                 | L5                           |
| **Prioridad Asignada**      | Emergencia                 |

---

## 📊 Registro de Commits por Usuario

```
Manuel Maye Piulestan 1: 1 commits
Jose Luis Godoy Khattaoui 2: 7 commits
Hugo Flores Molina 3: 4 commits
Juan Perez Ortega 4: 5 commits

Total: 17 commits
```

**Comando para generar:**
```bash
git shortlog --summary --numbered
```

---

## 📸 Imágenes Adicionales (Opcional)

Si incluyes imágenes, guardalas en `assets/` y enlazalas aquí:

- `![Descripción](assets/imagen1.png)`
- `![Descripción](assets/imagen2.png)`

---

## ✅ Checklist de Completitud

- [ ] 2 agrupaciones seleccionadas
- [ ] 5 tipos por agrupación = 10 tipos totales
- [ ] Cada tipo tiene tabla de características (4 campos)
- [ ] Cada tipo tiene caso real documentado (10 parámetros)
- [ ] URLs verificables en casos reales
- [ ] Datos del grupo completados
- [ ] Commits de cada miembro registrados
- [ ] Repositorio público en GitHub
- [ ] Push completado

---

**Última actualización:** 2026-01-11  
**Profesor:** Eduardo Fdez  
**Módulo:** IS 
**Curso:** 2025-2026



