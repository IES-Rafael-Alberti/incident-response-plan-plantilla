# Plan de Respuesta a Incidentes
## Indice
1. [Introducción](#introducción)  
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
## 1. Introducción
¿Qué es un plan de respuesta a incidentes?  
Un plan de respuesta a incidentes es un conjunto de procedimientos y políticas diseñadas para ayudar a una organización a detectar, responder y recuperarse de eventos que puedan comprometer la seguridad de sus activos de información.  
Vamos a realizar este proyecto basandonos en los estudios realizados anteriormente para esta empresa.

## 1.1 Identificación de activos

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

## 1.2 Análisis de las amenazas
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
## 1.3 Establecimiento de las vulnerabilidades
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

## 1.4 Evaluación y cálculo de riesgo
Por lo tanto, una vez tenido en cuenta estos puntos, hemos decidido que cualquier riesgo
bajo la nota de 6 no será considerado como prioritario y se asumirá:
![Evaluación de riesgos](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/Images/riesgos.png)

## 1.5 Clasificación y priorización de los proyectos
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

## 1.6 Definición de proyectos
Teniendo en cuenta los objetivos e iniciativas de la tabla exterior se le añade la fecha de
inicio y de finalización para dichos proyectos:  
![Proyectos](https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2024-4.1-G1/Images/proyectos.png)

## 2. Plan de respuesta a incidentes
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

## 3. PlayBooks

## 4. Respuesta a las preguntas

1.a   ¿Que relacción existe entre el trabajo que has hecho con las matrices MITRE ATT&CK y RE&CT y el plan de respuesta que estás planteando? ¿De que manera te ha ayudado el trabajo previo sobre las matrices a la hora de generar el plan? Deja evidencias del trabajo que has realizado sobre le navigator de las matrices, para obtener la información.  

Estos dos enfoques son fundamentales para entender y responder de manera efectiva a los ataques cibernéticos. Utilizando sus matrices y modelos respectivamente garantiza una respuesta integral y coordinada que aborda todas las etapas del incidente y ayuda a minimizar el impacto en la organización afectada.

1.b   ¿Qué playbooks has identificado como necesarios en este plan de respuesta y en que te has basado para identificar esos playbooks y saber que son los necesarios? Deja algún diagrama que describa el flujo de un playbook.  

Hemos identificado que los playbooks de incidentes de seguridad cibernética abordan los pasos a seguir en caso de un ataque cibernético, como una violación de datos, un ransomware, o un ataque de denegación de servicio (DDoS). Se basa en las mejores prácticas de seguridad cibernética, incluidas las pautas de organizaciones como el NIST o el CERT, que es la especialización que estamos estudiando.

1.c   ¿Como te has asegurado que has cubierto todas las fases del plan de respuesta? ¿Qué fase consideras que está más floja en un plan? ¿Cuál de ellas consideras que está mejor trabajada en tu plan? Asegúrate de hablar de todas las fases y como las cubres.  

Para asegurarme de cubrir todas las fases del plan de respuesta, he seguido una estructura clara y detallada que abarca desde la preparación hasta la recuperación y seguimiento. Cada fase se ha diseñado para garantizar una respuesta integral y efectiva ante incidentes de seguridad.  

En cuanto a la fase que considero más floja en un plan de respuesta, podría ser la fase de preparación si no se realiza de manera adecuada. Una preparación insuficiente puede dejar lagunas en la identificación de activos críticos, en la evaluación de riesgos o en la implementación de medidas de seguridad adecuadas.  

Por otro lado, considero que la fase de respuesta está mejor trabajada en mi plan. Esto se debe a que se establecen claramente los pasos a seguir para contener el incidente, evaluar el riesgo, eliminar las amenazas y coordinar con los equipos internos y externos necesarios para manejar la situación de manera efectiva.  

2.a   ¿En que consiste el Flujo de Toma de Decisiones y Escalado de tu plan de respuesta? ¿Existe un plan de comunicación, protocolos, etc? Si la respuesta es correcta, haz un resumen del plan y protocolos. Deja evidencias del flujo, mediante un diagrama. 

3.a  ¿Como te has asegurado de que tu plan tiene respuestas resilientes? ¿Porque son resilientes y en qué fases se centran?


## 5. Conclusiones
