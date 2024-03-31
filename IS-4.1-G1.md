# Plan de Respuesta a Incidentes
## Indice
1. [Introducción](#iintroduccion)  
    1.1. [Identificación de activos](#identificación-de-activos)  
    1.2. [Análisis de amenazas](#análisis-de-amenazas)  
    1.3. [Establecimiento de vulnerabilidades](#establecimiento-de-vulnerabilidades)  
    1.4. [Evaluación y cálculo de riesgo](#evaluación-y-cálculo-de-riesgo)  
    1.5. [Clasificación y priorización de proyectos](#clasificación-y-priorización-de-proyectos)  
    1.6. [Definición de proyectos](#definicion-de-proyectos)  
3. [Plan de respuesta](#plan-de-respuesta)
4. [Playbooks](#playbooks)
5. [Respuesta a las preguntas](#respuesta-a-las-preguntas)
6. [Conclusiones](#conclusiones)  
## 1. Introducción <div id='introduccion' />
¿Qué es un plan de respuesta a incidentes?  
Un plan de respuesta a incidentes es un conjunto de procedimientos y políticas diseñadas para ayudar a una organización a detectar, responder y recuperarse de eventos que puedan comprometer la seguridad de sus activos de información.  
Vamos a realizar este proyecto basandonos en los estudios realizados anteriormente para esta empresa.

## 1.1 Identificación de activos <div id='identificación-de-activos' />

Comenzaremos con identificar los activos que pueden ser vulnerados y a los cuales iran orientados este plan de respuesta:  

- Pendrives y discos duros externos: Aunque no puedan ser accedidos fácilmente si
no están conectados a los ordenadores, pueden llegar a perderse o robarse,
perdiendo el dispositivo y la información. Además de que no hay medidas para evitar
que se infecten de virus o programas maliciosos, junto con la falta de lugar para
almacenarlos.

- Todos los ordenadores, tabletas y móviles tienen un antivirus básico, más no está
certificado ni aprobado, haciendo que pueda ser vulnerado con más facilidad que
uno certificado.

- La página web y tienda online no son propiedad de la empresa, sino subcontratado,
haciendo que sus vulnerabilidades no puedan tratarse con facilidad debido a no
tener constancia de la seguridad que posee la empresa la cual tenemos contratada.

- La seguridad física de la empresa, siendo contratada en una sede, y proporcionada
por el edificio en la otra, no garantiza la seguridad total debido al acceso continuado
de clientes y personal externo a la empresa.

- Los servidores de archivos, aplicaciones y correos, se supone que tienen el mismo
antivirus que el resto de ordenadores, sin mención de otras medidas de seguridad
adicionales para su acceso.

- Las copias de seguridad se realizan, pero no a intervalos regulares.

- Los teléfonos suponemos que no son teléfonos IP, evitando que supongan una
vulnerabilidad a corto plazo, pero si se quieren renovar a teléfonos IP, habrá que
ajustarlos.

## 1.2 Análisis de las amenazas <div id='análisis-de-amenazas' />
Las amenazas que pueden afectar a nuestros activos son varias:
* Amenazas internas:
   - Averías de hardware
   - Colapso en la red
   - Mala administración de la red
   - Mal uso de los equipos
   - Errores humanos
   - Fallos de configuración
   - Robo interno
* Amenazas Externas:
  - Ataques DDoS
  - Ataques de malware
  - Robo de información
  - Ataque de Ingeniería social
  - Suplantación de página web
  - Desastres naturales
## 1.3 Establecimiento de las vulnerabilidades <div id='establecimiento-de-vulnerabilidades' />
Para establecer las vulnerabilidades, vamos a seguir los siguientes pasos:  

1. Identificación de Activos y Elementos Clave: En primer lugar, se identifican los
activos y elementos clave del sistema, proceso o entidad que se están evaluando.

2. Análisis de Procesos: Se examina en detalle cómo funcionan los procesos y las
operaciones relacionadas con los activos identificados.

3. Evaluación de Controles y Seguridad: Se revisan los controles de seguridad
existentes que se han implementado para proteger los activos.

4. Identificación de Debilidades: Durante este proceso, se buscan y se identifican las
debilidades, fallos o vulnerabilidades en los sistemas, procesos y controles de
seguridad.

5. Clasificación y Priorización: Las vulnerabilidades se clasifican y priorizan en función
de su gravedad y del riesgo que representan.

6. Desarrollo de planes de Mitigación: Una vez que se han identificado y priorizado las
vulnerabilidades, se desarrollan planes de mitigación para abordarlas.

7. Implementación de Medidas Correctivas: Finalmente se implementan las medidas
correctivas necesarias para abordar las vulnerabilidades identificadas y reducir el
riesgo.

## 1.4 Evaluación y cálculo de riesgo <div id='evaluación-y-cálculo-de-riesgo' />
Por lo tanto, una vez tenido en cuenta estos puntos, hemos decidido que cualquier riesgo
bajo la nota de 6 no será considerado como prioritario y se asumirá:
![Evaluación de riesgos](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/Images/riesgos.png)

## 1.5 Clasificación y priorización de los proyectos <div id='clasificación-y-priorización-de-proyectos' />
Tenemos que organizar y dar importancia a las tareas o acciones que deben llevarse a
cabo. Después de identificar las acciones específicas que se deben realizar, es útil
agruparlas en diferentes criterios para tomar decisiones informadas sobre cuáles son las
más importantes. Vamos a usar dos criterios para la clasificación:  

● Origen de las acciones: Se trata de determinar de dónde vienen estas acciones.
Pueden derivar de diferentes fuentes, como obligaciones legales, análisis técnicos,
entre otros… Clasificarlas según su origen ayuda a comprender por qué son
necesarias y a quién deben reportarse.  

● Tipo de acción: Este criterio se refiere a la naturaleza de las acciones. Pueden ser
acciones técnicas (relacionadas con aspectos técnicos o de ingeniería).
organizativas, regulatorias. Clasificar las acciones por tipo ayuda a comprender en
qué aspectos de la operación de la empresa impactarán.  

Una vez que se han clasificado las acciones, se procede a priorizarlas. En este caso, se
menciona que se dará prioridad a aquellas acciones que se requieran menos esfuerzo para
llevar a cabo y que, al mismo tiempo, generen mejoras significativas en la seguridad. En
otras palabras, se enfocarán primero en las tareas que son relativamente fáciles de
implementar y que tienen un impacto significativo en la seguridad de la empresa. Esto
garantiza que los recursos se utilicen de manera más eficiente para abordar las áreas más
críticas o vulnerables en términos de seguridad.  

## 1.6 Definición de proyectos <div id='definicion-de-proyectos' />
Teniendo en cuenta los objetivos e iniciativas de la tabla exterior se le añade la fecha de
inicio y de finalización para dichos proyectos:  
![Proyectos](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/Images/proyectos.png)

## 2. Plan de respuesta a incidentes <div id='plan-de-respuesta-a-incidentes' />
Una vez detallado todo lo anterior comenzamos a realizar nuestro plan para responder en el caso de que se de un incidente que no podemos tolerar en uno de nuestros activos.

Este plan consta de los siguientes puntos:

1. Preparación. Este punto abordamos los temas tratados anteriormente, la identificación de activos, el analisis de riesgo y la evaluación de vulnerabilidades.
2. Detección y análisis. El objetivo de esta fase es monitorizar los eventos de seguridad para detectar, alertar e informar sobre posibles incidentes. Para una mayor eficacia es recomendable seguir el siguiente orden:
   
   - Supervisar: Monitorizar los principales activos de la organización en busca de posibles amenazas.  
     
   - Detectar: Detectar posibles amenazas de seguridad y determinar su posible impacto.  
     
   - Alertar: Asignar una clasificación al ataque y analizar los indicadores de compromiso recopilados.  
     
   - Informar: Notificar el incidente de seguridad a los equipos de respuesta ante incidentes para que se inicien los procedimientos de contención.  
     
3. Respuesta. Este punto va enlazado con el anterior, ya que se basa en la información sacada de la detección y del análisis. Consta de los siguientes puntos:
    - Contener inmediatamente sistemas, redes, almacenes de datos y dispositivos para minimizar la amplitud del incidente y aislarlo.  
      
    - Determinar si datos sensibles han sido robados o corrompidos y valorar el riesgo potencial.  
      
    - Eliminar ficheros maliciosos.  
      
    - Preservar todos los dispositivos y sistemas asociados al incidente para análisis posteriores de impacto, origen e intenciones.  
      
    - Involucración del equipo legal para examinar el cumplimiento y determinar si el incidente impacta alguna norma vigente.  
      
    - Ponerse en contacto con los cuerpos de seguridad si corresponde ante posibles hechos que pudieran ser constitutivos de delito.  

4. Recuperación y seguimiento.
Durante la fase de recuperación se han de restaurar los sistemas al estado anterior al incidente asegurando que se recuperan la integridad, disponibilidad y confidencialidad de los sistemas y datos.  

Además, se deben llevar a cabo una serie de medidas preventivas para detectar y corregir otras posibles vulnerabilidades dentro de los sistemas de la organización.  

Por último, dentro de las medidas de seguimiento y mejora continua del Plan de Respuesta, éste ha de ser revisado para corregir posibles fallos detectados durante el incidente o puntos débiles.  

## 3. PlayBooks <div id='playbooks' />

En este apartado, nos centraremos en el desarrollo de playbooks de respuesta a incidentes, que son guías detalladas que proporcionan procedimientos paso a paso para manejar incidentes de seguridad. Estos documentos son esenciales para garantizar una respuesta rápida, eficaz y organizada ante cualquier amenaza de seguridad.

El desarrollo de un playbook de ciberseguridad implica una comprensión profunda de la infraestructura de TI de la organización, las amenazas potenciales y las mejores prácticas de seguridad. Cada playbook debe ser único y adaptado a las necesidades específicas de la organización.

Un aspecto crucial en el desarrollo de un playbook es el procedimiento de toma de decisiones y el escalado de incidentes. 

La toma de decisiones suele tomarse a nivel de equipo. En el caso de un incidente de ciberseguridad, el equipo de TI y de respuesta a incidentes debería reunirse para discutir la situación y decidir el mejor curso de acción. 

Respecto al escalado de incidentes: Si el incidente es grave, puede ser necesario involucrar a la alta dirección. Sin embargo, en la mayoría de los casos, el equipo de TI y de respuesta a incidentes debería ser capaz de manejar el incidente por sí mismo. Si el caso es demasiado grave para que lo maneje el equipo de respuesta a incidentes, este puede ser externalizado a otra empresa.

El flujo de toma de decisiones y el escalado de privilegios es el siguiente:

1. Detección del incidente: Los sistemas de monitoreo y el personal de TI detectan y reportan posibles incidentes de seguridad.
1. Evaluación inicial: El equipo de respuesta a incidentes realiza una evaluación inicial para determinar la gravedad del incidente.
1. Decisión de nivel 1: Si el incidente es de bajo riesgo, el equipo de respuesta a incidentes puede manejarlo directamente.
1. Escalado de nivel 1 a nivel 2: Si el incidente es de riesgo moderado, se escala al gerente del equipo de respuesta a incidentes.
1. Decisión de nivel 2: El gerente del equipo de respuesta a incidentes puede decidir tomar medidas adicionales, como aumentar los recursos asignados al incidente o implementar medidas de contención adicionales.
1. Escalado de nivel 2 a nivel 3: Si el incidente es de alto riesgo, se escala a la alta dirección.
1. Decisión de nivel 3: La alta dirección puede decidir tomar medidas estratégicas, como informar a las partes interesadas externas, contratar a consultores externos, o, en casos extremos, cerrar operaciones hasta que el incidente sea resuelto.
1. Revisión post-incidente: Una vez resuelto el incidente, se realiza una revisión post-incidente para aprender de la experiencia y mejorar los futuros procesos de toma de decisiones y escalado de incidentes.


Los playbooks se han diseñado con un enfoque en la ciberresiliencia. Esto significa que no sólo deben centrarse en cómo responder a un incidente de seguridad, sino también en cómo la organización puede recuperarse y aprender de estos incidentes. 

La ciberresiliencia no sólo se trata de prevenir incidentes de ciberseguridad, sino también de manejarlos de manera efectiva cuando ocurren.

Según una investigación sobre los tipos de técnicas recopiladas en la MITRE ATT&CK, se ha desarrollado unos playbooks de respuesta a los ataques más significativos y dañinos para nuestra empresa. Cada playbook está diseñado para responder a una técnica específica de ataque cibernético. 

Aquí están los playbooks que hemos creado y las técnicas correspondientes de MITRE ATT&CK:
- [Explotación de Aplicaciones de Cara al Público (T1190)](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/playbooks/playbook-Exploit-Public-Facing-Application.md): Este playbook se centra en cómo responder a los incidentes donde los atacantes explotan las vulnerabilidades en las aplicaciones que son accesibles al público.
- [Phishing (T1566)](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/playbooks/playbook-phishing.md): Este playbook proporciona una guía sobre cómo manejar los incidentes de phishing, donde los atacantes intentan engañar a los usuarios para que revelen información sensible.
- [Trusted Relationship (T1199)](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/playbooks/playbook%20Insider%20Threats.md): Este playbook se centra en los incidentes donde los atacantes explotan las relaciones de confianza dentro de las redes y sistemas.
- [Data Encrypted for Impact (T1486)](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/playbooks/playbook-ransomware.md): Este playbook es para incidentes de ransomware, donde los atacantes cifran los datos y exigen un rescate para su descifrado.
- [Data Manipulation (T1565)](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/playbooks/playbook-Manipulacion-de-Datos.md): Este playbook proporciona una guía sobre cómo manejar los incidentes donde los atacantes manipulan o alteran los datos para causar impacto.
- [Disk Wipe (T1561)](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/playbooks/playbook-diskwipe.md): Este playbook se centra en los incidentes donde los atacantes borran los datos o los sistemas operativos de los discos duros.
- [Network Denial of Service (T1498)](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/playbooks/playbook-DDOS-Atack.md): Este playbook proporciona una guía sobre cómo manejar los incidentes de denegación de servicio.
- [Identity and Access Attacks](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/playbooks/playbook-identity-and-access.md): Este playbook engloba tres técnica diferentes.
    - Gather Victim Identity Information (T1589): Se centra en los incidentes donde los atacantes recopilan información de identificación de las víctimas.
    - Acquire Access (T1588): Se centra sobre cómo manejar los incidentes donde los atacantes adquieren acceso a las cuentas, sistemas o datos.
    - Compromise Accounts (T1586): Se centra en los incidentes donde los atacantes comprometen las cuentas de los usuarios.

## 4. Respuesta a las preguntas <div id='respuesta-a-las-preguntas' />

**1.a  ¿Que relacción existe entre el trabajo que has hecho con las matrices MITRE ATT&CK y RE&CT y el plan de respuesta que estás planteando? ¿De que manera te ha ayudado el trabajo previo sobre las matrices a la hora de generar el plan? Deja evidencias del trabajo que has realizado sobre le navigator de las matrices, para obtener la información.**

Estos dos enfoques son fundamentales para entender y responder de manera efectiva a los ataques cibernéticos. Utilizando sus matrices y modelos respectivamente garantiza una respuesta integral y coordinada que aborda todas las etapas del incidente y ayuda a minimizar el impacto en la organización afectada.

**1.b  ¿Qué playbooks has identificado como necesarios en este plan de respuesta y en que te has basado para identificar esos playbooks y saber que son los necesarios? Deja algún diagrama que describa el flujo de un playbook.**

Hemos identificado que los playbooks de incidentes de seguridad cibernética abordan los pasos a seguir en caso de un ataque cibernético, como una violación de datos, un ransomware, o un ataque de denegación de servicio (DDoS). Se basa en las mejores prácticas de seguridad cibernética, incluidas las pautas de organizaciones como el NIST o el CERT, que es la especialización que estamos estudiando.

A raíz del estudio del marco de MITRE ATT&CK, hemos identificado una serie de técnicas específicas que afectarían al sistema crítico de nuestra empresa, en la siguiente imagen podemos observar la tabla MITRE ATT&CK con las técnicas seleccionadas:

![MITRE](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/Images/mitreatt.png)

**1.c  ¿Como te has asegurado que has cubierto todas las fases del plan de respuesta? ¿Qué fase consideras que está más floja en un plan? ¿Cuál de ellas consideras que está mejor trabajada en tu plan? Asegúrate de hablar de todas las fases y como las cubres.**

Para asegurarme de cubrir todas las fases del plan de respuesta, he seguido una estructura clara y detallada que abarca desde la preparación hasta la recuperación y seguimiento. Cada fase se ha diseñado para garantizar una respuesta integral y efectiva ante incidentes de seguridad.  

En cuanto a la fase que considero más floja en un plan de respuesta, podría ser la fase de preparación si no se realiza de manera adecuada. Una preparación insuficiente puede dejar lagunas en la identificación de activos críticos, en la evaluación de riesgos o en la implementación de medidas de seguridad adecuadas.  

Por otro lado, considero que la fase de respuesta está mejor trabajada en mi plan. Esto se debe a que se establecen claramente los pasos a seguir para contener el incidente, evaluar el riesgo, eliminar las amenazas y coordinar con los equipos internos y externos necesarios para manejar la situación de manera efectiva.  

**2.a   ¿En que consiste el Flujo de Toma de Decisiones y Escalado de tu plan de respuesta? ¿Existe un plan de comunicación, protocolos, etc? Si la respuesta es correcta, haz un resumen del plan y protocolos. Deja evidencias del flujo, mediante un diagrama.**  

Consiste en un proceso estructurado que determina cómo se toman las decisiones y cómo se escalan los problemas a medida que se desarrolla el incidente.  

Sí, dentro del plan de respuesta a incidentes, es fundamental contar con un plan de comunicación.
### Resumen Plan de comunicación
* Objetivos de comunicación: Establecer los objetivos generales de comunicación durante un incidente, como mantener a todas las partes interesadas informadas, minimizar la confusión y mitigar el impacto en la reputación de la organización.

* Equipo de comunicación: Designar un equipo de comunicación responsable de coordinar y gestionar la comunicación durante el incidente. Este equipo puede incluir representantes de relaciones públicas, comunicaciones internas, equipos técnicos y líderes de gestión.

* Canales de comunicación: Identificar los canales de comunicación a utilizar para transmitir información durante el incidente. Esto puede incluir correo electrónico, mensajería instantánea, reuniones en línea, líneas telefónicas dedicadas y redes sociales, según la naturaleza y la gravedad del incidente.

* Protocolos de comunicación interna: Establecer protocolos claros para la comunicación interna entre los diferentes equipos y niveles jerárquicos de la organización. Esto puede incluir procedimientos para reportar incidentes, compartir actualizaciones y coordinar acciones de respuesta.

* Protocolos de comunicación externa: Definir protocolos para la comunicación externa con partes interesadas clave, como clientes, socios comerciales, reguladores, medios de comunicación y el público en general. Estos protocolos pueden incluir la designación de portavoces autorizados y la preparación de mensajes específicos para cada audiencia.

* Mensajes clave: Desarrollar mensajes clave que comuniquen de manera clara y concisa la naturaleza del incidente, las acciones tomadas para abordarlo y las medidas de mitigación implementadas. Estos mensajes deben ser consistentes en todos los canales de comunicación y adaptados a la audiencia correspondiente.

* Procedimientos de aprobación: Establecer procedimientos claros para la aprobación de mensajes y la divulgación de información durante el incidente. Esto puede incluir la revisión y aprobación previa de comunicaciones por parte de líderes clave de la organización.

* Evaluación y revisión: Programar evaluaciones periódicas del plan de comunicación para identificar áreas de mejora y realizar ajustes según sea necesario. Esto garantiza que el plan esté actualizado y sea efectivo en la gestión de futuros incidentes.

**3.a  ¿Como te has asegurado de que tu plan tiene respuestas resilientes? ¿Porque son resilientes y en qué fases se centran?**

Mi plan de respuesta a incidentes se centra en promover la resiliencia en todas las fases, desde la preparación hasta la recuperación y el seguimiento.

Esto se logra mediante la implementación de medidas preventivas, la detección temprana, la respuesta rápida y coordinada, y la revisión y mejora continua del plan.

## 5. Conclusiones <div id='conclusiones' />
