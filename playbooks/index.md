# Playbooks

Los siguientes playbooks recogen los pasos de investigación, remediación, comunicación y recuperación para los incidentes que se consideran más probables o más perjudiciales para la empresa del caso.

La selección se ha realizado teniendo en cuenta:

* El tipo de actividad de la empresa, centrada en la asesoría a autónomos y pymes;
* El tratamiento de datos personales, documentación interna sensible e información financiera y laboral;
* La dependencia de servicios cloud y de proveedores externos;
* La existencia de página web y tienda online alojadas en un tercero;
* La madurez de seguridad básica descrita en el escenario;
* Los incidentes que, por impacto operativo, reputacional, legal o económico, requieren una respuesta estructurada.

## Playbooks incluidos

1. [Playbook: Phishing](./playbook-phishing.md)
   Incidente especialmente probable por el uso intensivo del correo electrónico, la interacción con clientes y proveedores, y la madurez básica del entorno.

2. [Playbook: Ransomware](./playbook-ransomware.md)
   Incidente de alto impacto por la posible afectación a puestos, carpetas compartidas, datos de clientes, continuidad de negocio y copias de seguridad.

3. [Playbook: Compromiso de identidad y acceso](./playbook-identity-and-access.md)
   Relevante por el uso de servicios corporativos, correo, nube y posibles accesos remotos o privilegios indebidos.

4. [Playbook: Compromiso de la cadena de suministro](./playbook-supply-chain.md)
   Necesario por la dependencia de terceros como el proveedor de hosting, la subcontrata del antivirus, servicios cloud y consultoría externa.

5. [Playbook: Desaparición de sitios web](./playbook-defacement.md)
   Importante por la exposición pública de la web y la tienda online, y por el impacto reputacional directo ante clientes.

6. [Playbook: Ataque DDoS](./playbook-ddos.md)
   Relevante por el riesgo de indisponibilidad de la web, tienda online y servicios expuestos a Internet.

7. [Playbook: Fuga de datos / Exfiltración de información](./playbook-fuga-de-datos.md)
   Necesario por el tratamiento de datos personales, documentación contractual y otra información sensible.

8. [Playbook: Explotación de aplicación expuesta a Internet](./playbook-explotacion-aplicacion-publica.md)
   Justificado por la existencia de servicios web públicos y por el riesgo de explotación de vulnerabilidades en aplicaciones accesibles desde Internet.

## Observaciones

Estos playbooks no sustituyen al plan general de respuesta a incidentes, sino que lo desarrollan para escenarios concretos. Su objetivo es facilitar una respuesta más rápida, homogénea y coordinada ante los incidentes más relevantes para la empresa analizada.

Todos los playbooks deberán aplicarse bajo la cadena de mando, los canales de coordinación, las reglas de comunicación, la gestión del expediente, la custodia de evidencias y el cierre mediante AAR definidos en [`plan.md`](../plan.md).


