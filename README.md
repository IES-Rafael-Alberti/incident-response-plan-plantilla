# Plan de Respuesta a Incidentes - Nexo Lebrija

Este repositorio contiene el Plan de Respuesta a Incidentes desarrollado para Nexo Lebrija en la actividad 4.01. El trabajo parte de la plantilla pública `counteractive/incident-response-plan-template`, pero ha sido adaptado al contexto de una asesoría que presta servicios a autónomos y PYMES.

El objetivo es disponer de un plan operativo, coherente con el Plan Director de Seguridad, que permita identificar, contener, erradicar, comunicar y recuperar incidentes de ciberseguridad manteniendo la continuidad del negocio siempre que sea posible.

Enlace al plan: https://github.com/IES-Rafael-Alberti/incident-response-plan-plantilla/blob/2526-4.1-G3/2526-4.1-G3.md

## Contenido

* `during.md`: procedimiento principal durante el incidente, con evaluación, activación, investigación, remediación, comunicación, MISP y recuperación.
* `after.md`: revisión posterior al incidente, métricas, resiliencia, acciones correctivas y mejora continua.
* `playbooks/`: procedimientos específicos para ransomware, phishing, identidad, web, cadena de suministro, fuga de datos y servicios cloud.
* `playbooks/diagramas-flujo-playbooks.md`: diagramas Mermaid generados desde `scripts/generate-playbook-diagrams.ps1`.
* `roles/`: responsabilidades del equipo de respuesta.
* `reference/glossary.md`: glosario técnico del plan.
* `evidencias-mitre/`: capas ATT&CK Navigator, capa RE&CT y matriz de trazabilidad.
* `info.yml`: variables usadas para generar el plan final.
* `about.md`: alcance, base documental, referencias y procedencia de la plantilla.

## Base documental

El plan se apoya en:

* `PlanDirectorSeguridad.md`
* `1.b - Política de seguridad del puesto de trabajo (3).md`
* Matriz de trazabilidad `evidencias-mitre/matriz-trazabilidad-mitre-react.md`
* Capas JSON de MITRE ATT&CK Navigator y RE&CT Navigator
* Playbooks y roles adaptados a Nexo Lebrija

## MITRE ATT&CK y RE&CT

MITRE ATT&CK se usa para identificar tácticas y técnicas probables del atacante: acceso inicial, ejecución, persistencia, movimiento lateral, acceso a credenciales, exfiltración e impacto.

RE&CT se usa para traducir esas técnicas en acciones de respuesta: preparación, identificación, contención, erradicación, recuperación y lecciones aprendidas.

La relación entre activos, riesgos, técnicas y acciones está documentada en `evidencias-mitre/matriz-trazabilidad-mitre-react.md`.

## Playbooks incluidos

* Ransomware
* Phishing
* Compromiso de identidad y acceso
* Desfiguración o compromiso web
* Compromiso de cadena de suministro
* Fuga de datos personales / brecha RGPD
* Compromiso de servicios cloud

Cada playbook incluye relación con MITRE ATT&CK y RE&CT, investigación, preguntas clave, remediación, comunicación, recuperación y recursos.

## Generación del plan

El `Makefile` permite generar el plan final sustituyendo las variables de `info.yml`.

```bash
make
```

La salida esperada se genera en `public/`:

* `public/plan.md`
* `public/plan.html`
* `public/plan.docx`
* `public/plan.pdf`

Para generar todos los formatos se necesitan `make`, `mustache` y `pandoc`. La generación de PDF puede requerir una instalación LaTeX.

## Evidencias

Las evidencias de uso de matrices se encuentran en `evidencias-mitre/`:

* Capas ATT&CK por escenario.
* Capa RE&CT de acciones de respuesta.
* Matriz de trazabilidad entre PDS, incidentes, ATT&CK, RE&CT y playbooks.

## Mantenimiento

El plan debe revisarse tras incidentes reales, simulacros, cambios de infraestructura, cambios de proveedor crítico o modificaciones relevantes del Plan Director de Seguridad.

Después de cada incidente debe actualizarse, si procede:

* `during.md`
* `after.md`
* `playbooks/`
* `roles/`
* `evidencias-mitre/`
* `reference/glossary.md`
* `info.yml`

## Licencia y procedencia

Este trabajo se basa en la plantilla `incident-response-plan-template` de Counteractive Security, distribuida bajo licencia Apache 2.0. La adaptación sectorial, los playbooks, la trazabilidad MITRE ATT&CK / RE&CT, la integración de MISP y el contenido específico de Nexo Lebrija han sido desarrollados para esta actividad.
