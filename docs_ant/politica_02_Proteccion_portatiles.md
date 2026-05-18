# Política 02: Protección de Equipos Portátiles

**Versión**: 1.0  
**Fecha de aprobación**: 23/11/2025  
**Fecha de última revisión**: 23/11/2025  
**Responsable**: Manuel Maye Piulestan  
**Alcance**: Trabajadores que utilizan portátiles para actividades laborales dentro y fuera de las instalaciones de la organización.

---

## Índice de Contenidos

1. [Propósito](#1-propósito)
2. [Alcance](#2-alcance)
3. [Riesgos](#3-riesgos)
4. [Medidas propuestas](#4-medidas-propuestas)
    - 4.1. [Cifrado de disco completo](#41-cifrado-de-disco-completo)
    - 4.2. [Autenticación multifactor (MFA)](#42-autenticación-multifactor-mfa)
    - 4.3. [Actualizaciones automáticas](#43-actualizaciones-automáticas)
    - 4.4. [Uso de VPN](#44-uso-de-vpn)
    - 4.5. [Programa para la gestión de dispositivos móviles (MDM)](#45-programa-para-la-gestión-de-dispositivos-móviles-mdm)
    - 4.6. [Prohibición de software no autorizado](#46-prohibición-de-software-no-autorizado)

---

## 1. Propósito

El propósito de esta política es establecer directrices claras para la protección y el uso adecuado de los equipos portátiles proporcionados por la organización. Dado que los portátiles son dispositivos móviles que pueden ser utilizados en diversos entornos, es crucial implementar medidas de seguridad para proteger la información confidencial y garantizar la integridad de los datos corporativos.

En esta política controlaremos los riesgos asociados a los portátiles de la empresa, específicamente el modelo estándar **Dell Latitude 3440**.

## 2. Alcance

Esta política se aplica a **todos los empleados** que utilicen portátiles proporcionados por la organización para realizar actividades laborales, tanto dentro como fuera de las instalaciones de la empresa.

## 3. Riesgos

Los riesgos asociados al uso de equipos portátiles incluyen, pero no se limitan a:

* **Pérdida o robo del dispositivo** (R92).
* **Acceso no autorizado** a la información almacenada en el portátil (R87).
* **Infecciones por malware** o software malicioso (R80).
* **Vulnerabilidades de seguridad** debido a conexiones a redes públicas o no seguras (R73).
* **Ingeniería social** para obtener acceso a la información del portátil (R95).

## 4. Medidas propuestas

### 4.1. Cifrado de disco completo
Todos los portátiles **Dell Latitude 3440** deben tener habilitado el cifrado de disco completo utilizando **BitLocker**. Esto garantizará que, en caso de pérdida o robo del dispositivo, la información almacenada permanezca protegida y no pueda ser accedida por personas no autorizadas.

### 4.2. Autenticación multifactor (MFA)
Se implementará la autenticación multifactor para acceder a los portátiles. Esto añadirá una capa adicional de seguridad, requiriendo que los usuarios proporcionen dos o más formas de verificación antes de acceder al dispositivo. Esto se conseguirá mediante el uso de una **passkey física con lector de huella dactilar**.

### 4.3. Actualizaciones automáticas
Los portátiles deben estar configurados para recibir actualizaciones automáticas del sistema operativo y del software de seguridad. Esto asegurará que los dispositivos estén protegidos contra las últimas vulnerabilidades y amenazas. La gestión se realizará de forma centralizada desde el servidor **WSUS** de la empresa cuando los portátiles estén conectados a la red corporativa.

### 4.4. Uso de VPN
Cuando los empleados utilicen portátiles fuera de las instalaciones de la organización, deberán conectarse obligatoriamente a través de una **Red Privada Virtual (VPN)** para garantizar una conexión segura y proteger la información transmitida. La infraestructura se basará en **OpenVPN** alojado en un servidor **Linux Ubuntu 24.04 LTS** corporativo.

### 4.5. Programa para la gestión de dispositivos móviles (MDM)
Se implementará una solución de **Gestión de Dispositivos Móviles (MDM)** para monitorear y administrar los portátiles de forma remota. Esto permitirá a la organización aplicar políticas de seguridad, realizar **borrados remotos** en caso de pérdida o robo, y asegurar que los dispositivos cumplan con las normativas establecidas.

### 4.6. Prohibición de software no autorizado
Los empleados no deben instalar software no autorizado en los portátiles. Se utilizará una solución de control de aplicaciones para restringir la instalación de software y garantizar que solo se utilicen aplicaciones aprobadas por la organización. Se usará un **repositorio interno de software aprobado** al que solo tendrán acceso los empleados autorizados.