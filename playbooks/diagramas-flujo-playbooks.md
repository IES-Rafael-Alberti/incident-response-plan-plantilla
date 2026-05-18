# Diagramas de flujo de playbooks

Este archivo se genera automaticamente desde scripts/generate-playbook-diagrams.ps1. Cada diagrama resume el flujo operativo del playbook y mantiene la relacion con las evidencias MITRE ATT&CK y RE&CT.

Para regenerarlo:

```powershell
.\scripts\generate-playbook-diagrams.ps1
```

## Compromiso de servicios cloud

Playbook fuente: `playbooks/playbook-cloud-services.md`

Evidencias MITRE/RE&CT: `evidencias-mitre/attack-cloud-services-layer.json` y `evidencias-mitre/react-response-layer.json`.

```mermaid
flowchart TD
    A["Deteccion: Acceso cloud anomalo, token/API key expuesta o almacenamiento publico"] --> B["Abrir expediente y nombrar incidente"]
    B --> C["Investigar con ATT&CK: vector, alcance, evidencias e IOCs"]
    C --> Q["Responder preguntas clave de investigacion del playbook"]
    Q --> D["Clasificar severidad S1-S4"]
    D --> E{"S1/S2, datos personales o activo critico?"}
    E -- "Si" --> F["Escalar a Incident Commander, Direccion, Legal y Comunicacion"]
    E -- "No" --> G["Gestionar por TIC/CISO con seguimiento del IC"]
    F --> H{"Compromiso confirmado?"}
    G --> H
    H -- "No" --> I["Cerrar como evento, documentar y monitorizar"]
    H -- "Si" --> J["Contener con RE&CT: Revocar tokens, bloquear cuentas y cerrar comparticiones"]
    J --> K["Erradicar causa raiz, persistencia y configuraciones debiles"]
    K --> L["Recuperar: Restaurar servicio cloud con permisos, MFA y logs reforzados"]
    L --> M["Validar servicio/datos con propietario de negocio"]
    M --> N["Monitorizar 72h y actualizar detecciones"]
    N --> O["Informe, AAR y mejora del playbook: Compromiso de servicios cloud"]
```

## Fuga de datos personales / brecha RGPD

Playbook fuente: `playbooks/playbook-data-breach.md`

Evidencias MITRE/RE&CT: `evidencias-mitre/attack-data-breach-layer.json` y `evidencias-mitre/react-response-layer.json`.

```mermaid
flowchart TD
    A["Deteccion: Acceso, perdida, exposicion o exfiltracion de datos personales"] --> B["Abrir expediente y nombrar incidente"]
    B --> C["Investigar con ATT&CK: vector, alcance, evidencias e IOCs"]
    C --> Q["Responder preguntas clave de investigacion del playbook"]
    Q --> D["Clasificar severidad S1-S4"]
    D --> E{"S1/S2, datos personales o activo critico?"}
    E -- "Si" --> F["Escalar a Incident Commander, Direccion, Legal y Comunicacion"]
    E -- "No" --> G["Gestionar por TIC/CISO con seguimiento del IC"]
    F --> H{"Compromiso confirmado?"}
    G --> H
    H -- "No" --> I["Cerrar como evento, documentar y monitorizar"]
    H -- "Si" --> J["Contener con RE&CT: Cerrar exposicion, bloquear salida y preservar evidencias"]
    J --> K["Erradicar causa raiz, persistencia y configuraciones debiles"]
    K --> L["Recuperar: Restaurar datos integros y reabrir permisos revisados"]
    L --> M["Validar servicio/datos con propietario de negocio"]
    M --> N["Monitorizar 72h y actualizar detecciones"]
    N --> O["Informe, AAR y mejora del playbook: Fuga de datos personales / brecha RGPD"]
```

## Desfiguración o compromiso web

Playbook fuente: `playbooks/playbook-defacement.md`

Evidencias MITRE/RE&CT: `evidencias-mitre/attack-web-provider-layer.json` y `evidencias-mitre/react-response-layer.json`.

```mermaid
flowchart TD
    A["Deteccion: Contenido web no autorizado, web shell o caida de web/tienda"] --> B["Abrir expediente y nombrar incidente"]
    B --> C["Investigar con ATT&CK: vector, alcance, evidencias e IOCs"]
    C --> Q["Responder preguntas clave de investigacion del playbook"]
    Q --> D["Clasificar severidad S1-S4"]
    D --> E{"S1/S2, datos personales o activo critico?"}
    E -- "Si" --> F["Escalar a Incident Commander, Direccion, Legal y Comunicacion"]
    E -- "No" --> G["Gestionar por TIC/CISO con seguimiento del IC"]
    F --> H{"Compromiso confirmado?"}
    G --> H
    H -- "No" --> I["Cerrar como evento, documentar y monitorizar"]
    H -- "Si" --> J["Contener con RE&CT: Activar mantenimiento, aislar web y bloquear origen malicioso"]
    J --> K["Erradicar causa raiz, persistencia y configuraciones debiles"]
    K --> L["Recuperar: Restaurar contenido limpio y validar tienda, formularios y DNS"]
    L --> M["Validar servicio/datos con propietario de negocio"]
    M --> N["Monitorizar 72h y actualizar detecciones"]
    N --> O["Informe, AAR y mejora del playbook: Desfiguración o compromiso web"]
```

## Compromiso de identidad y acceso

Playbook fuente: `playbooks/playbook-identity-and-access.md`

Evidencias MITRE/RE&CT: `evidencias-mitre/attack-identity-layer.json` y `evidencias-mitre/react-response-layer.json`.

```mermaid
flowchart TD
    A["Deteccion: Inicio de sesion anomalo, cuenta abusada o permisos sospechosos"] --> B["Abrir expediente y nombrar incidente"]
    B --> C["Investigar con ATT&CK: vector, alcance, evidencias e IOCs"]
    C --> Q["Responder preguntas clave de investigacion del playbook"]
    Q --> D["Clasificar severidad S1-S4"]
    D --> E{"S1/S2, datos personales o activo critico?"}
    E -- "Si" --> F["Escalar a Incident Commander, Direccion, Legal y Comunicacion"]
    E -- "No" --> G["Gestionar por TIC/CISO con seguimiento del IC"]
    F --> H{"Compromiso confirmado?"}
    G --> H
    H -- "No" --> I["Cerrar como evento, documentar y monitorizar"]
    H -- "Si" --> J["Contener con RE&CT: Bloquear cuentas, revocar sesiones y retirar permisos"]
    J --> K["Erradicar causa raiz, persistencia y configuraciones debiles"]
    K --> L["Recuperar: Restaurar acceso legitimo con minimo privilegio y monitorizacion"]
    L --> M["Validar servicio/datos con propietario de negocio"]
    M --> N["Monitorizar 72h y actualizar detecciones"]
    N --> O["Informe, AAR y mejora del playbook: Compromiso de identidad y acceso"]
```

## Phishing

Playbook fuente: `playbooks/playbook-phishing.md`

Evidencias MITRE/RE&CT: `evidencias-mitre/attack-phishing-layer.json` y `evidencias-mitre/react-response-layer.json`.

```mermaid
flowchart TD
    A["Deteccion: Correo sospechoso, enlace malicioso o adjunto peligroso"] --> B["Abrir expediente y nombrar incidente"]
    B --> C["Investigar con ATT&CK: vector, alcance, evidencias e IOCs"]
    C --> Q["Responder preguntas clave de investigacion del playbook"]
    Q --> D["Clasificar severidad S1-S4"]
    D --> E{"S1/S2, datos personales o activo critico?"}
    E -- "Si" --> F["Escalar a Incident Commander, Direccion, Legal y Comunicacion"]
    E -- "No" --> G["Gestionar por TIC/CISO con seguimiento del IC"]
    F --> H{"Compromiso confirmado?"}
    G --> H
    H -- "No" --> I["Cerrar como evento, documentar y monitorizar"]
    H -- "Si" --> J["Contener con RE&CT: Purgar mensajes, bloquear URL/dominios y aislar equipos afectados"]
    J --> K["Erradicar causa raiz, persistencia y configuraciones debiles"]
    K --> L["Recuperar: Reactivar cuentas tras credenciales rotadas, MFA y validacion"]
    L --> M["Validar servicio/datos con propietario de negocio"]
    M --> N["Monitorizar 72h y actualizar detecciones"]
    N --> O["Informe, AAR y mejora del playbook: Phishing"]
```

## Ransomware

Playbook fuente: `playbooks/playbook-ransomware.md`

Evidencias MITRE/RE&CT: `evidencias-mitre/attack-ransomware-layer.json` y `evidencias-mitre/react-response-layer.json`.

```mermaid
flowchart TD
    A["Deteccion: Cifrado, nota de rescate o actividad masiva anomala"] --> B["Abrir expediente y nombrar incidente"]
    B --> C["Investigar con ATT&CK: vector, alcance, evidencias e IOCs"]
    C --> Q["Responder preguntas clave de investigacion del playbook"]
    Q --> D["Clasificar severidad S1-S4"]
    D --> E{"S1/S2, datos personales o activo critico?"}
    E -- "Si" --> F["Escalar a Incident Commander, Direccion, Legal y Comunicacion"]
    E -- "No" --> G["Gestionar por TIC/CISO con seguimiento del IC"]
    F --> H{"Compromiso confirmado?"}
    G --> H
    H -- "No" --> I["Cerrar como evento, documentar y monitorizar"]
    H -- "Si" --> J["Contener con RE&CT: Aislar equipos, proteger backups y cortar SMB/RDP/VPN no imprescindible"]
    J --> K["Erradicar causa raiz, persistencia y configuraciones debiles"]
    K --> L["Recuperar: Restaurar desde copias limpias y validar CRM/ERP, servidores y datos"]
    L --> M["Validar servicio/datos con propietario de negocio"]
    M --> N["Monitorizar 72h y actualizar detecciones"]
    N --> O["Informe, AAR y mejora del playbook: Ransomware"]
```

## Compromiso de la cadena de suministro

Playbook fuente: `playbooks/playbook-supply-chain.md`

Evidencias MITRE/RE&CT: `evidencias-mitre/attack-supply-chain-layer.json` y `evidencias-mitre/react-response-layer.json`.

```mermaid
flowchart TD
    A["Deteccion: Proveedor, integracion o actualizacion sospechosa"] --> B["Abrir expediente y nombrar incidente"]
    B --> C["Investigar con ATT&CK: vector, alcance, evidencias e IOCs"]
    C --> Q["Responder preguntas clave de investigacion del playbook"]
    Q --> D["Clasificar severidad S1-S4"]
    D --> E{"S1/S2, datos personales o activo critico?"}
    E -- "Si" --> F["Escalar a Incident Commander, Direccion, Legal y Comunicacion"]
    E -- "No" --> G["Gestionar por TIC/CISO con seguimiento del IC"]
    F --> H{"Compromiso confirmado?"}
    G --> H
    H -- "No" --> I["Cerrar como evento, documentar y monitorizar"]
    H -- "Si" --> J["Contener con RE&CT: Suspender accesos de proveedor y pausar integraciones"]
    J --> K["Erradicar causa raiz, persistencia y configuraciones debiles"]
    K --> L["Recuperar: Restablecer proveedor limpio o servicio alternativo validado"]
    L --> M["Validar servicio/datos con propietario de negocio"]
    M --> N["Monitorizar 72h y actualizar detecciones"]
    N --> O["Informe, AAR y mejora del playbook: Compromiso de la cadena de suministro"]
```

