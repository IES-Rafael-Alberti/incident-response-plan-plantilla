# Documentación del plan

<br>

## Índice

1. [Introducción](#introducción)
2. [Plan de respuesta a incidentes](#plan-de-respuesta-a-incidentes)
3. [Playbooks](#playbooks)
4. [Conclusiones](#conclusiones)
5. [Bibliografía](#bibliografía)


<br>

## Introducción

El presente documento forma parte del conjunto de medidas diseñadas para fortalecer la postura de ciberseguridad de **Grupo 1 S.L.**, empresa tecnológica con operaciones distribuidas y activos críticos en diversos departamentos. El objetivo es establecer una respuesta eficaz y coordinada ante incidentes de ciberseguridad, minimizando el impacto en la confidencialidad, integridad y disponibilidad de los activos más relevantes para el negocio.

Este trabajo se apoya en la identificación y valoración de activos, el análisis de riesgos, la definición de roles y responsabilidades, y la utilización de marcos de referencia reconocidos como **MITRE ATT&CK** y **RE&CT**. Además, se han desarrollado playbooks específicos para los escenarios de mayor impacto, alineados con la taxonomía de incidentes y amenazas detectadas en el sector.

<br>

## Plan de respuesta a incidentes

El **Plan de respuesta a incidentes** de Grupo 1 S.L. establece los principios, procedimientos y responsabilidades para gestionar de manera eficiente cualquier incidente de ciberseguridad que pueda afectar a la organización. El plan cubre todas las fases clave de la gestión de incidentes: preparación, identificación, contención, erradicación, recuperación y lecciones aprendidas.

Para consultar el detalle completo de roles, procedimientos, flujos de escalado, protocolos de comunicación y medidas específicas para cada fase, acceda al documento extenso:  
[Plan de respuesta a incidentes – Grupo 1 S.L.](./Plan%20de%20respuesta.md)

<br>

## Playbooks

Como complemento al plan general, se han desarrollado playbooks específicos para los incidentes más relevantes y probables en el contexto de **Grupo 1 S.L**.

A continuación, se presenta una breve descripción de cada playbook implementado:

- [**Amenaza interna (Insider Threat):**](./playbooks/playbook-amenaza-interna.md)

  Responde a situaciones en las que empleados, exempleados o colaboradores abusan de sus privilegios para causar daño, filtrar información o sabotear activos críticos. Incluye procedimientos de detección, contención y análisis forense interno.

- [**Compromiso de credenciales:**](./playbooks/playbook-compromiso-credenciales.md)

  Aborda incidentes relacionados con el robo, filtración o uso indebido de credenciales de acceso. Define acciones para revocar accesos, forzar cambios de contraseñas y analizar el alcance del compromiso.

- [**Ataque DDoS:**](./playbooks/playbook-ddos.md)
  
  Establece los pasos para identificar, mitigar y recuperar la disponibilidad de servicios ante ataques de denegación de servicio distribuida. Incluye coordinación con proveedores de servicios y activación de medidas de mitigación.

- [**Defacement de página Web:**](./playbooks/playbook-defacement.md)

  Describe la respuesta ante la alteración no autorizada de la apariencia o contenido de la web corporativa. Incluye restauración de copias seguras, análisis de vectores de ataque y comunicación con partes interesadas.

- [**Fuga de datos / Exfiltración de información:**](./playbooks/playbook-fuga-de-datos.md)

  Detalla las acciones ante la detección de salida no autorizada de información sensible. Incluye análisis de logs, contención, notificación a afectados y cumplimiento de obligaciones legales.

- [**Malware:**](./playbooks/playbook-malware.md)

  Proporciona los procedimientos para la detección, aislamiento, erradicación y recuperación de sistemas afectados por software malicioso, así como recomendaciones para evitar reinfecciones.

- [**Phishing:**](./playbooks/playbook-phishing.md)

  Guía la respuesta ante campañas de suplantación de identidad dirigidas a empleados o clientes. Incluye análisis de correos, bloqueo de enlaces maliciosos, formación y comunicación interna.

- [**Ransomware:**](./playbooks/playbook-ransomware.md)

  Establece los pasos para contener, analizar y recuperar sistemas cifrados por ransomware, priorizando la restauración desde backups y la comunicación con las autoridades competentes.

- [**Compromiso de la cadena de suministro:**](./playbooks/playbook-supply-chain.md)

  Define la respuesta ante incidentes originados en proveedores o socios externos que puedan impactar la seguridad de la organización. Incluye evaluación de dependencias, comunicación y medidas de mitigación conjunta.

## Respuestas a las preguntas

<br>

## Conclusiones

La elaboración de este plan de respuesta a incidentes nos ha permitido conocer en profundidad la situación actual de la seguridad en **Grupo 1 S.L**. y darnos cuenta de la importancia de tener procedimientos claros y bien definidos para actuar ante cualquier incidente. A lo largo del trabajo hemos identificado los activos más críticos, analizado los riesgos y amenazas más probables y hemos aprendido a priorizar los escenarios que pueden tener mayor impacto en la empresa.

El uso de marcos reconocidos como ``MITRE ATT&CK`` y ``RE&CT`` nos ha ayudado a estructurar mejor tanto la identificación de amenazas como la respuesta, y los playbooks desarrollados nos servirán como guías prácticas para actuar de forma rápida y coordinada en caso de que se produzca un incidente real.

Creemos que este plan es un buen punto de partida, aunque somos conscientes de que la seguridad es un proceso continuo que requiere revisión y mejora constante. Por eso, consideramos fundamental seguir formando al personal, realizar simulacros y actualizar los procedimientos según vayan cambiando las amenazas y las tecnologías.

En definitiva, con este trabajo hemos sentado las bases para que **Grupo 1 S.L**. pueda responder de manera más eficaz y resiliente ante los incidentes de ciberseguridad, minimizando el impacto y asegurando la continuidad del negocio.

<br>

## Bibliografía

- NIST Computer Security Incident Handling Guide (SP 800-61r2). National Institute of Standards and Technology.  
  https://csrc.nist.gov/publications/detail/sp/800-61/rev-2/final

- MITRE ATT&CK® Framework.  
  https://attack.mitre.org/

- RE&CT Navigator.  
  https://www.reactproject.org/

- INCIBE (Instituto Nacional de Ciberseguridad).  
  https://www.incibe.es/

- ISO/IEC 27035:2016 - Gestión de incidentes de seguridad de la información.

- Incident Handler's Handbook. SANS Institute.  
  https://www.sans.org/white-papers/17401/
