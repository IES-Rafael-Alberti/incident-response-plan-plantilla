# Plantilla de Plan de Respuesta a Incidentes

## Acerca de

Esta plantilla fue desarrollada por el equipo de [Counteractive Security](https://www.counteractive.net) para ayudar a las organizaciones a partir de un plan de respuesta a incidentes conciso, directivo, específico, flexible y gratuito. El objetivo es construir un [plan que realmente se use](https://www.counteractive.net/posts/an-ir-plan-you-will-use/) para responder con eficacia, minimizar costes e impacto y recuperar la actividad lo antes posible.

Puedes descargar la última versión [aquí](https://github.com/counteractive/incident-response-plan-template/releases/latest). Si tienes comentarios, sugerencias o actualizaciones, crea una issue o envía una pull request.

## Instrucciones

**Nota:** si prefieres trabajar en Microsoft Word (`.docx`), descarga la [versión de ejemplo en Word](examples/plan.docx) y personalízala siguiendo las [instrucciones de adaptación](#personalizar-el-plan).

Si vas a trabajar con Markdown, HTML o PDF, continúa con las instrucciones siguientes.

### Descargar o bifurcar esta plantilla

La estructura del repositorio es la siguiente:

* `during.md`: núcleo del plan, con las acciones que se realizan durante la respuesta a un incidente.
* `playbooks/`: carpeta con playbooks que recogen sugerencias de investigación, remediación y comunicación para incidentes concretos. Crea playbooks para incidentes muy probables o de alto impacto para tu organización. `playbooks/index.md` contiene la cabecera de la sección, y cada playbook debe seguir la convención `playbooks/playbook-[AMENAZA].md`.
* `roles/`: carpeta con la descripción de cada rol del plan, sus responsabilidades y notas de formación. `roles/index.md` contiene la cabecera de la sección, y cada rol debe seguir la convención `roles/role-[ORDEN]-[NOMBRE].md`.
* `after.md`: guía de revisión posterior al incidente (_After Action Review_, _hotwash_, _debrief_ o _post-mortem_), con acciones posteriores a la respuesta.
* `about.md`: cierre con información sobre el plan y la plantilla.
* `info.yml`: fichero con los valores usados para sustituir variables de plantilla en todo el plan.
* `Makefile`: fuente ejecutable de verdad para ensamblar y generar los formatos de salida.

### Rellenar `info.yml` con la información de la organización

Los ficheros de la plantilla incluyen muchos placeholders con forma `{{LOOK_LIKE_THIS}}`. El propósito de cada placeholder debe deducirse por contexto, y el fichero [`info.yml`](./info.yml) incluye comentarios para mayor claridad.

La sintaxis corresponde a [Mustache](https://mustache.github.io/), un formato de plantillas ampliamente soportado. En este repositorio, el `Makefile` usa `mustache` directamente con `info.yml` para generar el plan.

La forma más sencilla de reemplazar estas variables es personalizar `info.yml` con la información de la organización y ejecutar `make`. Esto buscará y sustituirá automáticamente los valores relevantes.

Dependencias necesarias:

* `make`
* `mustache` (`ruby-mustache` en Debian/Ubuntu)
* `pandoc`
* `pdflatex`, solo si quieres generar PDF
* `git`, si prefieres clonar el repositorio en vez de descargar el ZIP

Si no tienes la información o herramientas referenciadas por las variables de plantilla, conviene resolverlo. Esto es especialmente importante para la lista de información crítica, es decir, los datos que quieres proteger, y para la lista de activos críticos, es decir, los sistemas que quieres proteger.

### Construir la plantilla

En una terminal Linux, macOS o [WSL](https://docs.microsoft.com/en-us/windows/wsl/faq):

```bash
# instalar dependencias principales si no están presentes
sudo apt-get install make ruby-mustache pandoc

# para formato PDF
sudo apt-get install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra

# entrar en el directorio del repositorio clonado
cd /path/to/incident-response-plan-template

# construir la plantilla
make
```

El proceso combina los componentes Markdown, aplica los datos personalizados de `info.yml` y genera los formatos soportados en el directorio `public/`.

Si solo quieres generar el Markdown:

```bash
make public/plan.md
```

Si solo quieres generar el HTML:

```bash
make public/plan.html
```

### Personalizar el plan

1. Rellena las variables pendientes de plantilla, es decir, las cadenas con forma `{{LOOK_LIKE_THIS}}`.
1. Revisa todos los avisos `TODO:` como puntos probables de personalización. Elimínalos solo cuando no haga falta ninguna adaptación.
1. Añade roles o playbooks relevantes para tu organización. También puedes incorporarlos progresivamente.
1. Adapta cualquier otra sección que mejore la utilidad del plan para tu contexto.
1. _Opcional:_ personaliza el formato directamente o mediante las [opciones de Pandoc](https://learnbyexample.github.io/customizing-pandoc/). El `Makefile` usa los estilos por defecto de Pandoc.

### Desplegar y usar el plan

El `Makefile` usa [Pandoc](https://pandoc.org) para crear varios formatos. También puedes usar los ficheros Markdown con [MkDocs](http://www.mkdocs.org/), [Hugo](https://gohugo.io/) u otras plataformas.

En este repositorio, los resultados generados se escriben en `public/` y los ficheros intermedios en `build/`. Ambos directorios están pensados como salida generada.

### Ejemplos

Hay ejemplos disponibles en distintos formatos dentro del directorio [`examples/`](./examples). La [versión Markdown](./examples/plan.md) es un buen punto de partida para revisar el resultado.

### Contacto

Para asistencia profesional en respuesta a incidentes, personalización, implantación o prueba del plan, contacta con Counteractive Security en contact@counteractive.net o en [(888) 925-5765](tel:+18889255765).

## Licencia

Esta plantilla se distribuye bajo la licencia Apache, versión 2.0. Consulta los ficheros [LICENSE](./LICENSE) y [NOTICE](./NOTICE) para más información.

## Referencias y lecturas adicionales

* [Awesome Incident Response](https://github.com/meirwah/awesome-incident-response)
* [NIST Computer Security Incident Handling Guide](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf) (NIST)
* [CERT Societe Generale Incident Response Methodologies](https://github.com/certsocietegenerale/IRM/tree/master/EN)
* [Incident Handler's Handbook](https://www.sans.org/reading-room/whitepapers/incident/incident-handlers-handbook-33901) (SANS)
* [Technical Approaches to Uncovering and Remediating Malicious Activity](https://us-cert.cisa.gov/ncas/alerts/aa20-245a) (Cybersecurity and Infrastructure Security Agency, CISA)
* [Responding to IT Security Incidents](https://technet.microsoft.com/en-us/library/cc700825.aspx) (Microsoft)
* [Defining Incident Management Processes for CSIRTs: A Work in Progress](http://resources.sei.cmu.edu/library/asset-view.cfm?assetid=7153) (CMU)
* [Creating and Managing Computer Security Incident Handling Teams (CSIRTS)](https://www.first.org/conference/2008/papers/killcrece-georgia-slides.pdf) (CERT)
* [Incident Management for Operations](http://shop.oreilly.com/product/0636920036159.do) (Rob Schnepp, Ron Vidal, Chris Hawley)
* [_Incident Response & Computer Forensics, Third Edition_](http://a.co/cUkFzMh) (Jason Luttgens, Matthew Pepe, Kevin Mandia)
* [_Incident Response_](http://shop.oreilly.com/product/9780596001308.do) (Kenneth R. van Wyk, Richard Forno)
* [The Checklist Manifesto](http://atulgawande.com/book/the-checklist-manifesto/) (Atul Gawande)
* [The Field Guide to Understanding Human Error](https://www.amazon.com/Field-Guide-Understanding-Human-Error/dp/0754648265) (Sidney Dekker)
* [Normal Accidents: Living with High-Risk Technologies](https://www.amazon.com/Normal-Accidents-Living-with-High-Risk-Technologies/dp/0691004129) (Charles Perrow)
* [Site Reliability Engineering](https://landing.google.com/sre/book.html) (Google)
* [Debriefing Facilitation Guide](http://extfiles.etsy.com/DebriefingFacilitationGuide.pdf) (Etsy)
* [Every Minute Counts: Leading Heroku's Incident Response](https://www.heavybit.com/library/video/every-minute-counts-coordinating-herokus-incident-response/) (Blake Gentry)
* [Three Analytical Traps in Accident Investigation](https://www.youtube.com/watch?v=TqaFT-0cY7U) (Dr. Johan Bergström)
* [US National Incident Management System (NIMS)](https://www.fema.gov/national-incident-management-system) (FEMA)
* [Informed's NIMS Incident Command System Field Guide](https://www.amazon.com/gp/product/1284038408) (Michael J. Ward)
* [PagerDuty IR Docs](https://response.pagerduty.com/)
* [NIST 800-61r2](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf)
* [NIST CSF](https://www.nist.gov/cyberframework)
* [CSO Online: 10 Steps](https://www.csoonline.com/article/3203705/security/10-steps-for-a-successful-incident-response-plan.html) (junio de 2017) y [CSO Online: 9 Steps](https://www.csoonline.com/article/3099684/disaster-recovery/9-steps-for-a-successful-incident-response-plan.html) (julio de 2016)
* [SecurityMetrics blog: 6 Steps to Making an IR Plan](http://blog.securitymetrics.com/2017/01/6-steps-to-making-incident-response-plan.html)
* [Cal Berkeley IR Plan Development](https://security.berkeley.edu/incident-response-planning-guideline)
* [EPA IR Plan](https://www.epa.gov/sites/production/files/2016-01/documents/cio_2150-p-08.2.pdf)
* [incidentresponse.com playbooks](https://www.incidentresponse.com/playbooks/)

## Hoja de ruta

Consulta la lista de [issues](https://github.com/counteractive/incident-response-plan-template/issues).

## Registro de cambios

Consulta la página de [releases](https://github.com/counteractive/incident-response-plan-template/releases).
