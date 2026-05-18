# Plan director de seguridad

## Grupo 3

## **Empresa de Asesoría para Autónomos y PYMES**

## **ÍNDICE**

1. Introducción  
2. Situación Actual de la Empresa  
3. Análisis de Riesgos  
4. Objetivos Estratégicos  
5. Proyectos e Iniciativas  
6. Priorización y Planificación  
7. Responsables y Recursos  
8. Conclusiones  
9. Bibliografía  
   

## **1\. INTRODUCCIÓN**

## **¿Por qué necesitamos un Plan Director de Seguridad?**

Somos una empresa consultora, dedicada al asesoramiento de autónomos y pymes, se encuentra trabajando con una empresa cuya estrategia de **transformación digital** implica extender la mayoría de sus trabajos a través de Internet. La información (datos personales de clientes y proveedores, propiedad intelectual y procesos internos en sistemas CRM/ERP) se ha convertido en unos de los puntos más importantes de la organización, y protegerla es proteger la continuidad del negocio. La pérdida, robo o indisponibilidad de estos datos puede llevar al cierre del negocio.

Actualmente, la organización posee 150 empleados distribuidos en 2 sedes y una estructura departamental clara. La situación general de control es **básica**, con ausencia de políticas escritas y controles técnicos clave.

Ante situaciones de riesgo comunes, como que un ransomware cifre los datos (suceso que ocurrió recientemente), que un empleado filtre información sensible, o que un ataque DDoS paralice la web, es fundamental contar con un Plan Director de Seguridad (PDS).

## **¿Qué es un Plan Director de Seguridad?**

Un PDS es un documento estratégico que nos dice:​

* Dónde estamos: Qué nivel de seguridad tenemos ahora  
* Dónde queremos llegar: Qué nivel de seguridad necesitamos  
* Cómo llegar: Qué proyectos hacer y en qué orden  
* Quién es responsable: Quién hace qué  
* Cuánto costará: Presupuesto necesario

## **Nuestra situación especial**

Nuestra empresa está en un momento crítico: estamos extendiéndonos digitalmente, como ya hemos dicho. Cada vez más servicios los ofrecemos por Internet, usamos la nube, tenemos una tienda online. Esto es positivo para el negocio, pero también nos hace más vulnerables a ciberataques.​

## **2\. SITUACIÓN ACTUAL DE LA EMPRESA**

## **2.1 ¿Quiénes somos?**

Somos una empresa de asesoría que aconseja a autónomos y pymes. Tenemos:​

Tamaño: 150 empleados en 2 sedes​

* Sede principal: Edificio completo  
* Sede secundaria: Segunda planta de un edificio compartido

Departamentos:  
**Facturación y Ventas, Compras, Comunicación y RRSS, TIC, RRHH, Delivery, Mantenimiento, Legal y Consejo de Administración.**

Nuestra estrategia: Transformación digital para ofrecer servicios principalmente por Internet.​

## **2.2 ¿Qué tecnología usamos?**

En las oficinas tenemos:

* Ordenadores de sobremesa, portátiles, móviles, tabletas  
* Impresoras y teléfonos  
* Pendrives y discos duros externos  
* Servidores: Correo electrónico, archivos, aplicaciones (CRM, ERP)  
* Red: Routers, wifi, firewall

En la nube usamos:

* Almacenamiento en servicios cloud  
* Página web y tienda online externa (alojada externamente)

Datos importantes que manejamos:

* Datos personales de clientes y proveedores (nombre, DNI, datos fiscales)  
* Información financiera y de facturación  
* Propiedad intelectual (metodologías propias)  
* Procesos internos en CRM y ERP

## **2.3 ¿Qué controles de seguridad tenemos ahora?**

| Control | Estado actual | Problema |
| :---: | :---: | :---: |
| Copias de seguridad | Existen | Solo en sede principal, procedimiento no aprobado formalmente |
| Antivirus | Gestionado por terceros | Procedimiento no aprobado por dirección |
| RGPD | Cumplimiento vía consultoría | Dependemos 100% de externos, no hay conocimiento interno |
| Firewall | Instalado con segmentación | Solo el administrador sabe configurarlo  |
| Políticas de seguridad | No existen | PROBLEMA CRÍTICO |
| Seguridad de la web | No controlamos | No sabemos cómo está protegida |

## **2.4 Alcance del PDS**

El Plan Director de Seguridad (PDS) define el marco estratégico y técnico para proteger la información y los sistemas de la empresa. Su alcance establece los límites, responsabilidades y elementos incluidos en la gestión de la seguridad, así como los excluidos.

## **2.4.1 Ámbito organizativo**

Abarca todas las áreas y sedes de la organización, especialmente los departamentos que tratan información sensible: Consejo de Administración, TIC, Ventas, Compras, Comunicación, Recursos Humanos, Delivery y Legal. También se incluyen proveedores o colaboradores externos que procesen datos corporativos o accedan a sistemas internos.

## **2.4.2 Ámbito técnico**

Incluye la infraestructura tecnológica completa: servidores, red interna y perimetral, equipos de usuario, aplicaciones de negocio (CRM, ERP, correo electrónico, backups), servicios cloud, web corporativa y canales de acceso remoto. El PDS establece controles homogéneos para todos estos entornos, creando un plan de defensa y respuesta lo más amplio posible.

## **2.4.3 Ámbito de la información**

Cubre toda la información corporativa, digital o física, incluyendo datos personales, financieros y jurídicos, propiedad intelectual, comunicaciones y documentación de negocio. Aplicamos medidas apropiadas según su valor y sensibilidad.

## **2.4.4 Exclusiones**

No se incluye la gestión directa de la seguridad física (accesos, vigilancia, alarmas), ya que la responsabilidad es de una empresa externa. Sin embargo, nuestro PDS tratará la coordinación con ella para las acciones que afecten a la protección de servidores o cualquier zona restringida.

## **2.4.5 Objetivo del alcance**

El alcance establecido persigue asegurar la confidencialidad, integridad y disponibilidad de la información, reducir la dependencia del conocimiento individual y cumplir con las obligaciones legales y normativas (RGPD, ENS, LOPDGDD). Con ello se refuerza una base sólida de ciberseguridad que sostenga la transformación digital de la empresa.

## **3\. ANÁLISIS DE RIESGOS**

## **3.1 ¿Qué activos tenemos y cuáles son críticos?**

Un activo es cualquier cosa valiosa para nuestra empresa. Vamos a clasificarlos por importancia:​

**CRÍTICOS**

* CRM/ERP: Contienen TODA la información de las operaciones  
* Servidores de archivos, aplicaciones: Sin ellos no podemos trabajar  
* Datos personales de clientes y proveedores  
* Página web y tienda online externa: Es nuestra principal forma de contacto y de venta.

**MUY IMPORTANTES** (impacto grande pero recuperable):

* Servidor de correo: Comunicación esencial con clientes.  
* Copias de seguridad: Nos salvan si hay un desastre.  
* Datos de funcionamiento y gestión de la empresa.  
* Puestos de trabajo

**IMPORTANTES** (necesarios pero reemplazables):

* Infraestructura de red: Routers, switches  
* Ordenadores y portátiles personales: Se pueden reponer  
* Servicios en la nube: Almacenamiento secundario  
* Propiedad intelectual: Nuestra actividad no se centra en ella  
* Impresoras, teléfonos, escáneres, etc.

## **3.2 ¿Qué amenazas nos acechan?**

| Activo | Amenaza |
| :---- | :---- |
| CRM / ERP | Robo o manipulación de datos críticos; ransomware; errores de configuración que permitan accesos indebidos |
| Servidores de archivos y aplicaciones | Intrusión o hacking; pérdida o corrupción de datos; explotación de vulnerabilidades no parcheadas |
| Datos personales de clientes y proveedores | Ransomware; robo o filtración de datos; uso indebido o tratamiento no autorizado que provoque sanciones RGPD |
| Página web y tienda online externa | Ataques web (inyecciones, cross-site scripting); ataque DDoS; robo de información de clientes o manipulación del sitio |
| Servidor de correo | Phishing; suplantación de identidad; interceptación de comunicaciones; propagación de malware por adjuntos |
| Copias de seguridad | Pérdida, corrupción o robo de datos; accesos indebidos a copias no cifradas; infección por ransomware |
| Datos de funcionamiento y gestión de la empresa | Acceso no autorizado; alteración o borrado accidental; exposición en sistemas compartidos sin control |
| Puestos de trabajo | Acceso no autorizado; instalación de software malicioso; ataques de diccionario o fuerza bruta; descargas inseguras |
| Infraestructura de red (routers, switches) | Ataques DDoS; accesos no autorizados por contraseñas débiles; manipulación de tráfico o configuración |
| Ordenadores y portátiles personales | Robo físico del dispositivo; fuga de información por falta de cifrado; malware introducido por USB o email. |
| Servicios en la nube | Acceso indebido, fuga de información, dependencia del proveedor o errores de configuración del almacenamiento. |
| Impresoras, teléfonos, escáneres, etc. | Acceso no autorizado a información impresa o escaneada; almacenamiento de copias temporales sin borrado seguro |
| Propiedad intelectual | Robo o filtración de información confidencial; uso no autorizado o distribución sin control de documentos internos |

## **3.3.1 Vulnerabilidades de nuestros activos**

Después de tratar las potenciales amenazas a las que se exponen nuestros activos, vamos a comentar las vulnerabilidades que posee cada uno de ellos en términos generales, pues esto nos permitirá calcular el riesgo de cada uno de ellos con más precisión, ayudándonos a establecer un orden en prioridad.

## **Tabla de vulnerabilidades generales por tipo de activo**

| Activo | Tipo de vulnerabilidades principales | Descripción general |
| ----- | ----- | ----- |
| **CRM/ERP** | falta de control de privilegios, vulnerabilidades en software, ausencia de cifrado | Riesgo de fuga o alteración de información de la organización y de clientes; gestión dependiente de contraseñas simples o nombres de usuario estándar. |
| **Servidores de archivos y aplicaciones** | Configuraciones inseguras, falta de actualización, permisos excesivos | Exposición a ataques de ransomware, explotación de vulnerabilidades o borrado accidental de datos. |
| **Datos personales de clientes y proveedores** | Falta de cifrado, almacenamiento inadecuado, tratamiento no documentado | Riesgo de incumplimiento del RGPD y sanciones; pérdida de confianza de clientes. |
| **Página web y tienda online externa** | Vulnerable a inyecciones, accesos no controlado, ausencia de monitorización | Posibilidad de robo de datos, manipulación de contenidos o caída del servicio. |
| **Servidor de correo** | accesos no autorizados, caídas por sobrecarga de peticiones | Pérdida de información confidencial o uso de cuentas corporativas para spam o fraude. |
| **Copias de seguridad** | Falta de cifrado, almacenamiento en la misma ubicación, ausencia de pruebas de restauración | Riesgo de pérdida total de datos si se produce un ataque o fallo físico. |
| **Datos de funcionamiento y gestión** | Falta de control de versiones y protección insuficiente | Pérdida o modificación de información administrativa o contable crítica. |
| **Puestos de trabajo** | Sin control de dispositivos externos, antivirus desactualizado, uso indebido | Vías de entrada de malware o pérdida de información por errores humanos. |
| **Infraestructura de red (routers, switches)** | Configuración genérica, contraseñas por defecto, falta de segmentación | Compromiso del tráfico interno, propagación de ataques o acceso no autorizado. |
| **Ordenadores y portátiles personales** | Dispositivos sin cifrado, sin control de inventario o actualización | Riesgo de fuga de información por pérdida, robo o uso personal indebido. |
| **Servicios en la nube** | Controles de acceso deficientes, falta de respaldo local, desconocimiento de la ubicación de datos | Accesos indebidos o pérdida de información si el proveedor sufre una brecha. |
| **Propiedad intelectual (metodologías, plantillas)** | Falta de control de distribución, almacenamiento sin protección | Riesgo de copia o difusión no autorizada, pérdida de ventaja competitiva. |
| **Impresoras, teléfonos, escáneres y otros periféricos** | Sin contraseñas, almacenamiento de documentos en memoria, falta de borrado seguro | Exposición de documentos impresos o escaneados con información sensible. |

## **3.3.2 Salvaguardas Actuales y Nivel de Madurez**

Descripción de las salvaguardas actuales según cada activo y evaluando nivel de madurez con la clasificación de madurez de INCIBE:

* Nivel 0 \- Inexistente:  No se lleva a cabo el control de seguridad en los sistemas de información.  
* Nivel 1 \- Inicial: Las salvaguardas existen, pero no se gestionan, no existe un proceso formal para realizarlas. Su éxito depende de la buena suerte y de tener personal cualificado.  
* Nivel 2 \- Repetible: La medida de seguridad se realiza de un modo totalmente informal (con procedimientos propios informales). La responsabilidad es individual. No hay formación.  
* Nivel 3 \- Definido: El control se aplica conforme a un procedimiento documentado, pero no ha sido aprobado ni por el Responsable de Seguridad ni el Comité de Dirección.  
* Nivel 4 \- Administrado: El control se lleva a cabo de acuerdo a un procedimiento documentado, aprobado y formalizado.  
* Nivel 5 \- Optimizado: El control se aplica de acuerdo a un procedimiento documentado, aprobado y formalizado, y su eficacia se mide periódicamente mediante indicadores.

| Activos | Salvaguardas actuales | Nivel de madurez actual (0-5) |
| :---- | :---- | :---- |
| **CRM/ERP** | Segmentación por departamentos vía firewall; antivirus gestionado por subcontrata; copias de seguridad (procedimiento básico). | 2 \- Gestionado |
| **Servidores de archivos y aplicaciones** | Firewall con zona segura/pública y subredes por departamento; antivirus subcontratado; copias de seguridad gestionadas por TIC; seguridad física externalizada. | 2 \- Gestionado |
| **Datos personales de clientes y proveedores** | Cumplimiento RGPD formal y aprobado; copias de seguridad; segmentación de red. | 3 \- Definido |
| **Página web y tienda online externa**  | Alojada en proveedor externo; sin control interno declarado sobre su securización. | 0 \- Inexistente |
| **Servidor de correo** | Ubicado on‑prem; protegido por firewall/segmentación; antivirus en endpoints de usuario; sin controles específicos declarados. | 1 \- Inicial |
| **Copias de seguridad** | Procedimiento básico documentado y repetible; gestión por TIC; almacenamiento local en sede principal. | 2 \- Gestionado |
| **Datos de funcionamiento y gestión** | Copias de seguridad; segmentación por departamentos; sin políticas formales. | 2 \- Gestionado |
| **Puestos de trabajo** | Antivirus gestionado por subcontrata; segmentación de red; sin hardening/políticas escritas. | 2 \- Gestionado |
| **Infraestructura de red (routers, switches)** | Firewall con DMZ/zona pública y redes por departamento; gestión central por admin de red; documentación limitada. | 2 \- Gestionado |
| **Ordenadores y portátiles personales** | Antivirus gestionado por subcontrata; acceso por redes segmentadas; sin MDM/políticas formales declaradas. | 2 \- Gestionado |
| **Servicios en la nube** | Uso operativo; sujeción a RGPD en tratamiento; sin gobierno/seguridad declarada. | 1 \- Inicial |
| **Propiedad intelectual (metodologías, plantillas)** | Copias de seguridad; segmentación de red básica. | 1 \- Inicial |
| **Impresoras, teléfonos, escáneres y otros periféricos** | Conectividad dentro de redes segmentadas; sin gestión de seguridad específica declarada. | 1 \- Inicial |

## **3.4 Cálculo de riesgos: ¿Qué puede salir realmente mal?**

En este apartado analizamos los riesgos de nuestros activos, que se calculan de la siguiente manera:

**Riesgo \= Probabilidad x Impacto​**

Para definir las probabilidades y el impacto hacemos una aproximación basada en las tablas que ya hemos elaborado con vulnerabilidades y salvaguardas. Algunas de estas vulnerabilidades suben la probabilidad, el impacto, o los dos. Las salvaguardas aumentan alguno o ambos, de la misma forma.

Según el esquema de INCIBE, la probabilidad se debe medir de 1 a 3, y lo mismo con el impacto:

* Probabilidad de 1 a 3  
* Impacto de 1 a 3

Así que este es el cálculo de nuestros riesgos por activo:

| Riesgo | Activo | Probabilidad (1-3) | Impacto (1-3) | Riesgo (P×I) | Justificación breve |
| :---- | :---- | :---- | :---- | :---- | :---- |
| R01 | CRM/ERP | 3 | 3 | 9 | Sistema clave para facturar y atender clientes; si entra un virus o alguien accede sin permiso, se para el negocio; la protección es básica y las copias están en el mismo sitio. |
| R02 | Servidores de archivos y aplicaciones | 3 | 3 | 9 | Guardan documentos y herramientas de todos; un fallo o intrusión dejaría a la gente sin trabajar y depende mucho de una sola persona. |
| R03 | Datos personales de clientes y proveedores | 2 | 3 | 6 | Si se filtran o se usan mal, hay multas y pérdida de confianza; hay cumplimiento legal, pero faltan barreras prácticas del día a día. |
| R04 | Página web y tienda online externa | 3 | 3 | 9 | Es la cara pública y canal de venta; no se controla su seguridad; si la tumban o la manipulan, se pierden clientes e imagen. |
| R05 | Servidor de correo | 3 | 2 | 6 | Es el canal de trabajo diario; es fácil caer en correos falsos; si falla, se corta la comunicación, aunque se puede recuperar. |
| R06 | Copias de seguridad | 3 | 3 | 9 | Las copias están en la misma sede y no se prueban a menudo; ante robo, incendio o virus, se puede perder todo. |
| R07 | Datos de funcionamiento y gestión de la empresa | 2 | 2 | 4 | Son necesarios para organizar el trabajo; hay copias, pero se pueden borrar o cambiar por error sin control claro de versiones. |
| R08 | Puestos de trabajo | 3 | 2 | 6 | Son la puerta de entrada más común; faltan normas claras de configuración; un clic puede parar a un equipo. |
| R09 | Infraestructura de red (routers, switches) | 2 | 2 | 4 | La red está separada por zonas, pero la gestión recae en una persona y hay poca documentación; un error puede afectar a varios. |
| R10 | Ordenadores y portátiles personales | 3 | 2 | 6 | Si se pierden o roban, pueden salir datos; también son vulnerables a infecciones; impacto en el trabajo del usuario y su información. |
| R11 | Servicios en la nube (almacenamiento) | 2 | 2 | 4 | Se usan para guardar archivos; una mala configuración o accesos indebidos puede exponerlos; impacto moderado. |
| R12 | Propiedad intelectual | 2 | 1 | 2 | Son plantillas y métodos propios; si se filtran, se pierde algo de ventaja, pero no frena la actividad diaria. |
| R13 | Dispositivos electrónicos de oficina (impresoras, teléfonos, escáneres) | 2 | 1 | 2 | Pueden guardar copias de documentos o registros; si alguien accede, el daño suele ser puntual y fácil de reemplazar. |

## **4\. OBJETIVOS ESTRATÉGICOS**

Basándonos en nuestros riesgos y nuestra estrategia de negocio digital, establecemos 5 objetivos principales:​

## **OBJ-1: Proteger la continuidad del negocio digital**

Queremos ofrecer servicios 24/7 por Internet​. No podemos permitirnos parar nuestra actividad por factores externos. Debemos asegurarnos de que nuestros servicios están disponibles el mayor tiempo posible.  
Meta concreta:

* Disponibilidad del 99,5% (solo 1,8 días de caída al año)  
* Si algo falla, recuperarlo en menos de 4 horas  
* No perder más de 1 hora de datos

## **OBJ-2: Cumplir al 100% con RGPD y normativas**

Manejamos datos personales. Si no cumplimos, con el reglamento, no podríamos enfrentar a multas de hasta 20 millones de euros. No hace falta mencionar que no deberíamos enfrentarnos a ello.​  
Meta concreta:

* Políticas documentadas y aprobadas  
* Auditoría RGPD favorable  
* Capacidad interna (no depender de consultorías)

## **OBJ-3: Fortalecer la seguridad de accesos**

Con el crecimiento de la organización y los terceros con los que colaboramos y cuyos servicios hemos contratado, tenemos mucho personal externo entrando y saliendo de nuestros sistemas. Además, más servicios online \= más puertas de entrada​.  
Meta concreta:

* Doble factor de autenticación (MFA) en sistemas críticos  
* Control de accesos en todos los sistemas en los que ello pueda ser relevante.  
* Registro completo de toda actividad

## **OBJ-4: Poder recuperarnos de desastres**

Si nos atacan con ransomware, hay un incendio, tenemos una caída del servicio o pérdida de corriente, necesitamos recuperar todo lo más rápido posible. Va en línea con el OBJ-1.​  
Meta concreta:

* Plan de continuidad documentado y probado  
* Copias en múltiples ubicaciones  
* Equipo entrenado para responder a incidentes  
* Equipos de respaldo.

## **OBJ-5: Madurar como organización en seguridad**

Actualmente no tenemos políticas ni procesos formales: cualquier descuido puede hacer que se desmorone toda nuestra infraestructura y pause toda nuestra actividad, o peor, permita filtraciones de datos.  
Meta concreta:

* Pasar del nivel actual de madurez a un nivel objetivo definido  
* Políticas escritas y conocidas por todos  
* Cultura de seguridad en toda la empresa

## **5\. PROYECTOS E INICIATIVAS**

## **5.1 Nivel de madurez actual**

Usamos el modelo O-ISM3 (igual que INCIBE) para medir nuestra madurez:​

Niveles de madurez:

* Nivel 0 \- Inexistente:  No se lleva a cabo el control de seguridad en los sistemas de información.  
* Nivel 1 \- Inicial: Las salvaguardas existen, pero no se gestionan, no existe un proceso formal para realizarlas. Su éxito depende de la buena suerte y de tener personal de la alta calidad.  
* Nivel 2 \- Repetible: La medida de seguridad se realiza de un modo totalmente informal (con procedimientos propios, informales). La responsabilidad es individual. No hay formación.  
* Nivel 3 \- Definido: El control se aplica conforme a un procedimiento documentado, pero no ha sido aprobado ni por el Responsable de Seguridad ni el Comité de Dirección.  
* Nivel 4 \- Administrado: El control se lleva a cabo de acuerdo a un procedimiento documentado, aprobado y formalizado.  
* Nivel 5 \- Optimizado: El control se aplica de acuerdo a un procedimiento documentado, aprobado y formalizado, y su eficacia se mide periódicamente mediante indicadores.

## **Madurez por área**

| Área | Nivel actual (0-5) | Nivel objetivo (0-5) |
| :---- | ----: | ----: |
| Políticas de seguridad de la información | 0 | 4 |
| Organización de la seguridad de la información | 2 | 3 |
| Seguridad de los recursos humanos | 1 | 3 |
| Gestión de activos | 1 | 3 |
| Control de accesos | 1 | 3 |
| Criptografía | 1 | 4 |
| Seguridad física y ambiental | 2 | 3 |
| Seguridad de las operaciones | 2 | 3 |
| Seguridad de las comunicaciones | 2 | 3 |
| Adquisición, desarrollo y mantenimiento de sistemas de información | 1 | 2 |
| Relación con proveedores | 1 | 2 |
| Gestión de incidentes de seguridad de la información | 1 | 4 |
| Continuidad del negocio | 1 | 4 |
| Cumplimiento | 1 | 3 |

Esta tabla dá lugar a este gráfico:

![Descripción de la imagen](https://drive.google.com/uc?export=view&id=1vaauSYJj8uXLv1lYjxXIik2lymKyyIFJ)

## **Explicación por área**

Políticas de seguridad de la información

* Nivel actual: 0 (Inexistente)  
* Nivel objetivo: 4 (Administrado)  
* Justificación: Actualmente no existen políticas documentadas ni aprobadas, lo que genera inconsistencias y dependencia de la buena voluntad de nuestros empleados. El objetivo es alcanzar el nivel 4, donde las políticas estén documentadas, aprobadas y formalizadas, para tener un marco común al que agarrarnos.

Organización de la seguridad de la información

* Nivel actual: 2 (Repetible)  
* Nivel objetivo: 3 (Definido)  
* Justificación: Hay prácticas básicas y roles “informales”, pero no hay un comité formal ni coordinación regular con la dirección. La idea es alcanzar el nivel 3, donde las medidas se apliquen conforme a un procedimiento documentado para mejorar la coordinación y reducir la dependencia de personas clave.

Seguridad de los recursos humanos

* Nivel actual: 1 (Inicial)  
* Nivel objetivo: 3 (Definido)  
* Justificación: No hay procesos formales de alta/baja, confidencialidad ni formación estructurada. Queremos alcanzar el nivel 3, donde los procesos tendrán que estar bien documentados y aplicados, para asegurar la gestión adecuada de al formación y la concienciación periódica.

Gestión de activos

* Nivel actual: 1 (Inicial)  
* Nivel objetivo: 3 (Definido)  
* Justificación: El inventario y la clasificación de equipos y datos no son sistemáticos ni están definidos por escrito ni aprobados. Necesitamos alcanzar el nivel 3, en el que el inventario y la clasificación estén documentados y aplicados, para asegurar la trazabilidad y la asignación de responsables.

Control de accesos

* Nivel actual: 1 (Inicial)  
* Nivel objetivo: 3 (Definido)  
* Justificación: El uso de medidas como MFA y gestión de privilegios es limitado y no formal. El objetivo es alcanzar el nivel 3, donde las medidas estén documentadas y aplicadas, para asegurar el principio de mínimo privilegio y revisiones periódicas.

Criptografía

* Nivel actual: 1 (Inicial)  
* Nivel objetivo: 4 (Administrado)  
* Justificación: No hay requisitos formales de cifrado para datos en reposo y en tránsito. El objetivo es alcanzar el nivel 4, donde las políticas de cifrado estén documentadas, aprobadas y formalizadas, para proteger la confidencialidad, integridad y disponibilidad.

Seguridad física y ambiental

* Nivel actual: 2 (Repetible)  
* Nivel objetivo: 3 (Definido)  
* Justificación: Existe servicio externo básico, pero con poca integración documental con TIC. El objetivo es alcanzar el nivel 3, donde los procedimientos tendrán que estar documentados y aplicados, para alinearse con los acuerdos y procedimientos y con nuestros proveedores de seguridad física.

Seguridad de las operaciones

* Nivel actual: 2 (Repetible)  
* Nivel objetivo: 3 (Definido)  
* Justificación: Hay antivirus, firewall y backups básicos, pero sin procedimientos aprobados. El objetivo es llegar al nivel 3, donde los procedimientos estén documentados y aplicados, para estandarizar la aplicación de operaciones, parches, copias, monitorización, etc.

Seguridad de las comunicaciones

* Nivel actual: 2 (Repetible)  
* Nivel objetivo: 3 (Definido)  
* Justificación: Hay segmentación y firewall, pero sin normativas formales de protección de correo y redes. El objetivo es alcanzar el nivel 3, donde los controles estén documentados y aplicados, para proteger la integridad y confidencialidad de nuestras comunicaciones.

Adquisición, desarrollo y mantenimiento de sistemas de información

* Nivel actual: 1 (Inicial)  
* Nivel objetivo: 2 (Repetible)  
* Justificación: No hay requisitos de seguridad en compras y cambios. El objetivo es alcanzar el nivel 2, donde las medidas se apliquen de forma repetible, para incorporar seguridad en ellos. Este no es uno de nuestros objetivos prioritarios

Relación con proveedores

* Nivel actual: 1 (Inicial)  
* Nivel objetivo: 2 (Repetible)  
* Justificación: No se exigen requisitos de seguridad a terceros de consistente. El objetivo es alcanzar el nivel 2, donde las medidas se apliquen de forma repetible, para incorporar cláusulas y controles en los contratos clave.

Gestión de incidentes de seguridad de la información

* Nivel actual: 1 (Inicial)  
* Nivel objetivo: 4 (Administrado)  
* Justificación: No hay procedimiento formal de notificación, respuesta y aprendizaje. El objetivo es alcanzar el nivel 4, donde los procedimientos estén documentados, aprobados y formalizados, para asegurar una respuesta coordinada y eficaz ante incidentes.

Continuidad del negocio

* Nivel actual: 1 (Inicial)  
* Nivel objetivo: 4 (Administrado)  
* Justificación: No hay plan formal, pruebas ni copias fuera de sede. El objetivo es alcanzar el nivel 4, donde el plan esté documentado, aprobado y formalizado, para asegurar la recuperación rápida y eficaz ante desastres.

Cumplimiento

* Nivel actual: 1 (Inicial)  
* Nivel objetivo: 3 (Definido)  
* Justificación: No hay conocimiento interno ni procesos formales de cumplimiento. El objetivo es alcanzar el nivel 3, donde los procedimientos estén documentados y aplicados, para mantener el cumplimiento y extenderlo a otros marcos cuando aplique.

![][image1]  
Radar de madurez: situación actual (rojo), objetivo (turquesa) y óptimo (verde)

## **5.2 Catálogo de proyectos**

Organizamos los proyectos en 4 grupos:

**GRUPO A: Quick Wins (Victorias Rápidas)**

Son proyectos que podemos hacer en 1-2 meses con poco coste pero gran impacto.

* P16 \- Política de contraseñas robustas y bloqueo de intentos  
  Qué haremos: exigir contraseñas de 12+ caracteres, rotura de contraseñas débiles, gestor corporativo de contraseñas, bloqueo tras intentos fallidos y política de no caducidad si hay MFA en cuentas críticas.  
  Tiempo: 2-4 semanas | Coste: 2.000 €  
  Mitiga: R07 (accesos no autorizados por credenciales); apoya R01 y R05.  
* P17 \- Documentar configuración crítica y control de cambios  
  Qué haremos: documentar reglas del firewall, segmentación, VPN y configuraciones clave de servidores; establecer repositorio seguro con control de versiones y plan de suplencia del admin de red.  
  Tiempo: 1-2 semanas | Coste: 1.000 €  
  Mitiga: R09 (infraestructura sin documentación y dependencia de una persona); reduce R02.  
* P18 \- Control de USB y aplicaciones en puestos  
  Qué haremos: bloquear pendrives no autorizados con lista blanca y activar control de aplicaciones esencial en endpoints (vía EDR o política de software permitido).  
  Tiempo: 2 semanas | Coste: 3.000 €  
  Mitiga: R10 (malware/exfiltración por USB) y R08 (instalación de software malicioso).


**GRUPO B: Cumplimiento Normativo (OBLIGATORIO)**

* P01 \- Marco de Políticas de Seguridad  
  Qué haremos: Política general, Uso de email/Internet, Dispositivos móviles/teletrabajo, Contraseñas, Clasificación de información, Gestión de parches y cambios, Soportes extraíbles.  
  Entregables: documentos aprobados por dirección, comunicación a plantilla y acuse de recibo.  
  Tiempo: 3-4 meses | Coste: 15.000 €  
  Mitiga: R09 (incumplimiento); habilita madurez en Operaciones y RR.HH.  
    
* P02 \- Refuerzo RGPD interno (operativo)  
  Qué haremos: internalizar la gestión RGPD (registro de actividades, base jurídica, análisis de riesgo, procedimiento de brechas ≤72h, revisiones de acceso a datos personales, formación a responsables).  
  Entregables: procedimientos y evidencias, auditoría interna favorable.  
  Tiempo: 4-6 meses | Coste: 20.000 €  
  Mitiga: R03 y R09 (brechas y sanciones).  
    
* P03 \- Plan de Continuidad de Negocio con pruebas  
  Qué haremos: Planes de continuidad y recuperación, simulacro anual y lecciones aprendidas.  
  Entregables: PCN/DRP (Plan de continuidad de negocio, y plan de recuperación ante desastres) aprobados, informe de pruebas.  
  Tiempo: 6 meses | Coste: 35.000 €  
  Mitiga: R01, R02 y R06 (continuidad y desastres).


**GRUPO C: Proyectos Técnicos**

* P04 \- Sistema de copias de seguridad distribuido (3-2-1 con cifrado)  
  Qué haremos: 3-2-1 (local, sede secundaria, nube cifrada), automatización, validación de integridad y restauraciones semestrales; cifrado de copias offsite y separación lógica/air-gap cuando sea viable.  
  Tiempo: 2-3 meses | Coste: 25.000 €  
  Mitiga: R01 y R02 (ransomware, pérdida de datos); apoya R06.  
    
* P05 \- Seguridad de red avanzada y correo auténtico  
  Qué haremos: revisión/limpieza de regla VPN corporativa; robustecer correo; documentar y aprobar los cambios.  
  Tiempo: 4-6 meses | Coste: 35.000 €  
  Mitiga: R07 y R08 (accesos no autorizados) y R05 (suplantación y phishing técnico).  
    
* P06 \- Autenticación de doble factor (MFA)  
  Qué haremos: MFA en CRM/ERP, correo y VPN; registro de excepciones controladas y revisión periódica.  
  Tiempo: 3-4 meses | Coste: 10.000 €  
  Mitiga: R07; apoya R01 y R05.  
    
* P07 \- Cifrado y MDM en dispositivos  
  Qué haremos: cifrado de disco en portátiles/móviles, borrado remoto.  
  Tiempo: 3 meses | Coste: 20.000 €  
  Mitiga: R05 y R10; refuerza R03.  
    
* P08 \- Asegurar la página web/tienda externalizada  
  Qué haremos: acuerdos con proveedor con SLA (service level agreement) de seguridad mitigación DDoS en la medida de lo posible, auditoría/escaneo periódico y canal de notificación de incidentes con pruebas al menos trimestrales.  
  Tiempo: 2-3 meses | Coste: 22.000 €  
  Mitiga: R04 y R06.  
    
* P09 \- Monitorización y SIEM por fases  
  Qué haremos:   
  * Fase 1: centralizar logs críticos con alertas.  
    Fase 2: correlación avanzada/SIEM y casos de uso de detección priorizados.

Tiempo: 4-6 meses | Coste: 10.000 €  
	Mitiga: R07 (detección temprana); apoya R01 y R02.

* P10 \- Antivirus/EDR (Endpoint Detection and Response) mejorado y formalizado  
  Qué haremos: formalizar configuración y SLA, procedimiento aprobado.  
  Tiempo: 1-2 meses | Coste: 30.000 €  
  Mitiga: R01 y R10; reduce R08.

**GRUPO D: Proyectos Organizativos**

* P11 \- Programa de concienciación con métricas  
  Qué haremos: formación anual a todo nuestro personal, simulaciones de phishing trimestrales aleatorias y sin aviso, métricas de tasa de clic con objetivos de mejora; módulos cortos por rol.  
  Tiempo: Continuo | Coste: 12.000 €/año  
  Mitiga: R07; apoya R05, R08 y R10.  
    
* P12 \- Comité de Seguridad y nombramiento de un CISO (chief information security officer)  
  Qué haremos: designar CISO, comité con dirección y responsables, reuniones bimensuales y reporte de KPIs (indicadores de desempeño).  
  Tiempo: 1 mes | Coste: 5.000 €  
  Mitiga: gobernanza general y sostenibilidad del PDS.  
    
* P13 \- Procedimientos de gestión de incidentes y simulacro  
  Qué haremos: roles, clasificación, libro de guardia, plantillas de comunicación (interna/clientes cuando aplique), simulacro anual relevante (ransomware o caída web).  
  Tiempo: 2-3 meses | Coste: 10.000 €  
  Mitiga: R01 y R03; reduce impacto/tiempos de respuesta en R04–R06.  
    
* P14 \- Gestión de proveedores críticos  
  Qué haremos: evaluar seguridad de hosting, nube y otros (antivirus, seguridad física, etc.); cláusulas de seguridad en los contratos, notificación de incidentes, y comunicación de la ubicación de los datos.  
  Tiempo: 3 meses | Coste: 10.000 €  
  Mitiga: R04 y R11; apoya R03.  
    
* P15 \- Inventario y clasificación de activos con revisiones de permisos  
  Qué haremos: inventario HW/SW/servicios (incl. nube/web), clasificación de información (Pública/Interna/Confidencial), asignación de responsables y revisión trimestral de permisos en comparticiones/CRM-ERP.  
  Tiempo: 4-6 meses | Coste: 25.000 €  
  Mitiga: R03 y R08; reduce R07 y R12.

## **6\. PRIORIZACIÓN Y PLANIFICACIÓN**

## **Quick wins (hacer ya)**

| Proyecto | Esfuerzo | Plazo | Impacto | Prioridad | Motivo simple |
| :---- | ----: | ----: | ----: | ----: | :---- |
| P12 CISO y Comité de Seguridad | Bajo | Corto | Alto | 1 | Pone a alguien al mando y acelera decisiones. |
| P10 Antivirus/EDR formalizado | Medio | Corto | Alto | 1 | Mejora defensa y permite aislar equipos al instante. |
| P16 Contraseñas robustas y bloqueo | Bajo | Corto | Alto | 1 | Evita accesos por claves débiles con cambios rápidos. |
| P17 Documentar configuración y cambios | Bajo | Corto | Alto | 1 | Reduce la dependencia de una persona y errores de red/servidores. |
| P18 Control de USB y aplicaciones | Bajo | Corto | Alto | 1 | Evita malware y salida de datos por pendrive. |

## **Proyectos de medio plazo (3–6 meses)**

| Proyecto | Esfuerzo | Plazo | Impacto | Prioridad | Motivo simple |
| :---- | :---- | :---- | :---- | :---- | :---- |
| P01 Políticas de seguridad | Medio | Medio | Alto | 2 | Normas claras para toda la empresa; base para el resto. |
| P04 Copias 3‑2‑1 cifradas | Medio | Medio | Alto | 2 | Asegura recuperar datos si hay desastre o ransomware. |
| P06 MFA en sistemas críticos | Medio | Medio | Alto | 2 | Añade una segunda barrera al entrar en correo, VPN y ERP/CRM. |
| P05 Red y correo (fase 1\) | Medio | Medio | Alto | 2 | Limpia reglas, mejora VPN y evita suplantaciones de correo. |
| P11 Formación con métricas | Bajo | Medio | Medio‑Alto | 2 | Menos clics en phishing y mejores hábitos. |
| P15 Inventario y permisos | Medio | Medio | Medio‑Alto | 2 | Saber qué tenemos y quién accede reduce errores y fugas. |
| P08 Seguridad web externa | Medio | Medio | Alto | 2 | Asegura la “tienda/escaparate” donde llegan los clientes. |

## **Largo plazo y consolidación (6+ meses)**

| Proyecto | Esfuerzo | Plazo | Impacto | Prioridad | Motivo simple |
| :---- | :---- | :---- | :---- | :---- | :---- |
| P03 Continuidad y recuperación (PCN/DRP) | Alto | Largo | Muy alto | 3 | Plan para seguir operando y recuperarse rápido tras un incidente. |
| P09 Monitorización / SIEM (fase 1\) | Alto | Largo | Alto | 3 | Detecta problemas antes de que sean grandes. |
| P05 Red (fase 2\) | Medio‑Alto | Largo | Alto | 3 | Profundiza en detección/prevención en la red. |
| P02 RGPD operativo (cierre) | Medio‑Alto | Largo | Alto | 3 | Mantener papeles al día y demostrar cumplimiento. |

## 

## **Reglas simples para decidir**

* Primero lo que baja mucho riesgo y se hace rápido y barato (quick wins).  
* Lo obligatorio por ley o contrato sube de prioridad aunque cueste más.  
* Si un proyecto depende de otro (normas antes que monitorización), se programa después.

## **7\. RESPONSABLES Y RECURSOS**

Este apartado concreta qué tareas hay que realizar para implantar nuestro PDS, quién las lidera y con quién se tiene que coordinar. 

1. **Gobierno y marco normativo**  
* Constitución del Comité de Seguridad y CISO (P12)  
  * Qué se hace: nombrar CISO, definir calendario bimensual del comité y fijar objetivos principales.  
  * Responsable: Consejo de Administración.  
  * Colaboran: CISO, TIC, Legal, RRHH, responsables de área.  
* Aprobación y difusión del marco de políticas (P01)  
  * Qué se hace: aprobar políticas (seguridad, contraseñas, uso de email/Internet, móviles/teletrabajo, clasificación, parches y cambios, soportes), publicarlas y recabar acuse de recibo.  
  * Responsable: Dirección.  
  * Colaboran: CISO (redacción), Legal (alineación), RRHH (comunicación), TIC (aplicación técnica).  
      
2. **Identidad, accesos y cifrado**  
* Contraseñas robustas y bloqueo (P16)  
  * Qué se hace: parametrizar 12+ caracteres, bloqueo por intentos, saneamiento de credenciales débiles, despliegue de gestor corporativo.  
  * Responsable: TIC (directorio/sistemas).  
  * Colaboran: CISO, RRHH (avisos y guía de uso).  
* MFA en sistemas críticos y VPN (P06)  
  * Qué se hace: activar MFA en CRM/ERP, correo y acceso remoto; gestionar excepciones justificadas.  
  * Responsable: TIC.  
  * Colaboran: CISO, responsables de sistemas, mesa de ayuda.  
* Cifrado y MDM en endpoints (P07)  
  * Qué se hace: FDE en portátiles y móviles, borrado remoto, política BYOD vs corporativo, cifrado en tránsito para accesos administrativos.  
  * Responsable: TIC (MDM/endpoint).  
  * Colaboran: CISO, RRHH (comunicación).  
      
3. **Gestión de activos y permisos**  
* Inventario y clasificación de activos/info (P15)  
  * Qué se hace: inventario HW/SW/servicios (incl. nube y web), clasificación (Pública/Interna/Confidencial), asignar propietarios y custodios.  
  * Responsable: CISO.  
  * Colaboran: TIC (datos técnicos), responsables de departamento, Legal (datos personales).  
* Revisión trimestral de permisos (P15)  
  * Qué se hace: revisar accesos en comparticiones y CRM/ERP según mínimo privilegio, registrar evidencias y cambios.  
  * Responsable: Propietarios de información (por área).  
  * Colaboran: TIC (operativa), CISO (control).  
      
4. **Operaciones, red y endpoints**  
* Documentación y control de cambios (P17)  
  * Qué se hace: documentar firewall/segmentación/VPN y servidores, crear repositorio con control de versiones, definir suplencia del admin de red.  
  * Responsable: TIC (red/sistemas).  
  * Colaboran: CISO.  
* Seguridad de red y autenticidad de correo (P05)  
  * Qué se hace: limpieza de reglas y DMZ, IDS/IPS, VPN; configurar SPF/DKIM/DMARC y TLS en correo; aprobar cambios.  
  * Responsable: TIC (red/correo).  
  * Colaboran: CISO.  
* Control de USB y aplicaciones; EDR formalizado (P18, P10)  
  * Qué se hace: lista blanca de USB, política de aplicaciones permitidas, contrato/SLA EDR, capacidades de aislamiento y respuesta remota.  
  * Responsable: TIC (endpoint).  
  * Colaboran: CISO, Compras/Legal (contrato).  
      
      
5. **Backups, continuidad y recuperación**  
* Copias 3‑2‑1 con cifrado y pruebas (P04)  
  * Qué se hace: definir repositorios (local, sede secundaria, nube cifrada), automatizar, verificar integridad y realizar restauraciones semestrales con acta.  
  * Responsable: TIC (backup/almacenamiento).  
  * Colaboran: CISO, responsables de sistemas.  
* Continuidad (PCN/DRP) y simulacro (P03, P13)  
  * Qué se hace: BIA, fijar RTO/RPO, redactar procedimientos, ejecutar un simulacro anual (p. ej., ransomware o caída web) y documentar mejoras.  
  * Responsable: CISO.  
  * Colaboran: Dirección, TIC, responsables de proceso, Comunicación.  
      
6. **Web/tienda y proveedores/nube**  
* Gobierno del proveedor web/tienda (P08, P14)  
  * Qué se hace: SLA de seguridad, WAF/CDN si aplica, escaneos/auditorías periódicas, canal y tiempos de notificación de incidentes, evidencias trimestrales.  
  * Responsable: CISO.  
  * Colaboran: Compras/Legal (cláusulas), TIC (validaciones), proveedor.  
* Gobierno de la nube (P14, P15)  
  * Qué se hace: matriz de permisos, configuración segura, registro de accesos, ubicación del dato, tratamiento de datos personales y cláusulas de seguridad.  
  * Responsable: CISO.  
  * Colaboran: TIC, Legal, proveedor.  
      
7. **Monitorización e incidentes**  
* Monitorización por fases / centralización de logs (P09)  
  * Qué se hace: Fase 1 centralizar logs (AD, ERP/CRM, correo, firewall) y alertas base; Fase 2 correlación avanzada y casos de uso prioritarios.  
  * Responsable: TIC (observabilidad/seguridad).  
  * Colaboran: CISO, proveedores si aplica.  
* Gestión de incidentes y comunicación (P13)  
  * Qué se hace: procedimiento de clasificación, registro y escalado; libro de guardia; plantillas de comunicación interna/externa (incl. AEPD cuando proceda); simulacro anual.  
  * Responsable: CISO.  
  * Colaboran: TIC, Legal, Comunicación, Dirección.  
      
8. **Personas y cultura**  
* Concienciación con métricas (P11)  
  * Qué se hace: plan anual de formación, simulaciones de phishing trimestrales, objetivos de reducción de tasa de clic, refuerzos por rol.  
  * Responsable: RRHH.  
  * Colaboran: CISO, TIC (contenidos), Comunicación.

Con este reparto, cada tarea tiene dueño claro, colaboradores y relación directa con proyectos, riesgos y objetivos estratégicos. Esto facilita el seguimiento, la obtención de evidencias y la mejora de la madurez hasta hasta nuestro nivel objetivo..

## **8\. CONCLUSIONES**

**8.1 Resumen Ejecutivo**  
El Plan Director de Seguridad (PDS) establece la hoja de ruta para fortalecer la seguridad informática de nuestra organización y garantizar la continuidad operativa de la Empresa de Asesoría para Autónomos y PYMES en su proceso de transformación digital. Parte de una situación con controles básicos y falta de políticas formales, proponiendo una estrategia basada en la evaluación de riesgos, objetivos estratégicos y un conjunto de proyectos que han sido declarados prioritarios. Su implantación permitirá pasar de una madurez inicial a un nivel mucho más alto, con procesos estandarizados, responsables identificados y una cultura de seguridad más afianzada y extendida en toda la organización.

**8.2 Factores Críticos de Éxito**

* **Compromiso de la dirección** y apoyo activo al CISO y al Comité de Seguridad.  
* **Comunicación y formación continua** del personal para fomentar la concienciación y reducir errores humanos.  
* **Priorización adecuada de proyectos**, ejecutando primero los Quick Wins y los de cumplimiento normativo.  
* **Asignación clara de roles y recursos**, evitando la dependencia de individuos y garantizando la sostenibilidad del plan.  
* **Seguimiento periódico de resultados** mediante indicadores de madurez y eficacia de los controles.

**8.3 Riesgos del Propio Plan**

* **Resistencia al cambio** por parte de empleados o mandos intermedios ante nuevas políticas y procedimientos.  
* **Falta de recursos económicos o humanos** que retrase la ejecución de proyectos críticos.  
* **Descoordinación entre áreas** si no se mantienen reuniones periódicas del Comité de Seguridad.  
* **Pérdida de impulso o continuidad** si no se establecen métricas claras y revisiones regulares del PDS.  
* 

**8.4 Mensaje Final**  
La implantación del Plan Director de Seguridad no solo busca proteger la información, sino también reforzar la confianza de clientes y empleados, asegurar la continuidad del negocio y consolidar una cultura de ciberseguridad alineada con los objetivos de digitalizarse. 

---

## **BIBLIOGRAFÍA**

[https://educacionadistancia.juntadeandalucia.es/centros/cadiz/mod/assign/view.php?id=358290](https://educacionadistancia.juntadeandalucia.es/centros/cadiz/mod/assign/view.php?id=358290)

[https://ayudaleyprotecciondatos.es/2020/10/30/plan-director-de-seguridad/\#Ejemplos](https://ayudaleyprotecciondatos.es/2020/10/30/plan-director-de-seguridad/#Ejemplos)

[https://www.incibe.es/empresas/que-te-interesa/plan-director-seguridad](https://www.incibe.es/empresas/que-te-interesa/plan-director-seguridad)

[https://educacionadistancia.juntadeandalucia.es/centros/cadiz/pluginfile.php/670554/mod\_assign/introattachment/0/Plan-director-seguridad.pdf?forcedownload=1](https://educacionadistancia.juntadeandalucia.es/centros/cadiz/pluginfile.php/670554/mod_assign/introattachment/0/Plan-director-seguridad.pdf?forcedownload=1)

[https://revilofe.github.io/section2/u01/teoria/IS-U1.2.1.-PlanDirectorDeSeguridad/](https://revilofe.github.io/section2/u01/teoria/IS-U1.2.1.-PlanDirectorDeSeguridad/)

[image1]: <data:image/png;base64,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>