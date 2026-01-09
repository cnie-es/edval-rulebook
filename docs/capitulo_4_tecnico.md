# CAPÍTULO 4: MARCO TÉCNICO Y ESTÁNDARES DE INTEROPERABILIDAD
---

## Arquitectura de Referencia
El EDNEL implementa una arquitectura distribuida y federada, alineada con el modelo **IDS-RAM 4.0** (International Data Spaces Reference Architecture Model) y las especificaciones de convergencia técnica del **DSSC** (Data Spaces Support Centre) `(Ref. Pliego: Apartado 5.5 y 6.1.4)`, y alineado con el ecosistema europeo de espacios de datos lingüísticos (LDS)

### Principios Arquitectónicos
1. **Soberanía del dato** Los datos residen siempre en los sistemas del proveedor y se transfieren *Peer-to-Peer* (P2P) al Consumidor. Las políticas de uso viajan con el activo y se aplican en tiempo real mediante el conector.
2.  **Descentralización:** No existe un almacenamiento central de datos. Los activos residen en los sistemas de origen (infraestructura del Proveedor) 
3.  **Separación de Planos:** Se distingue estrictamente entre el **Plano de Control** (gestión de identidad, metadatos, contratos, trazabilidad y polític) y el **Plano de Datos** (transferencia del contenido real).
4.  **Neutralidad Tecnológica:** Los componentes son agnósticos a la infraestructura subyacente (Cloud, On-Premise, Edge) `(Ref. Pliego: Apartado 5.17.2)`.
5.  **Interoperabilidad garantizada**: Dataspace Protocol (alineado con EDC, IDS y LDS), DCAT-AP / JSON-LD, ODRL para políticas, DIDs/VCs para identidad (eIDAS 2)
6.  **Seguridad y confianza verificable**: Autenticación mutua (mTLS), cifrado E2E y auditoría automatizada.

---

## Procesos técnicos fundamentales

### Onboarding técnico de Participantes
Para integrarse en el EDNEL, cada Participante debe completar un proceso de onboarding técnico `(Ref. Pliego: Apartado 6.1.5)` que incluye:
* **Instalación del conector (On-Premise o SaaS):** Configuración inicial del conector certificado.
* **Validación de identidad y certificados:** Emisión y verificación de DIDs y VCs.
* **Pasar las pruebas automáticas del Sandbox:**: Validación de interoperabilidad y seguridad mediante un entorno de pruebas controlado. `(Ref. Pliego: Apartado 6.1.6)`.
* **Activar autenticación 2FA:** Configuración de mecanismos de doble factor para accesos administrativos.
* **Recepción de Credenciales Verificables oficiales:** Acreditación de atributos relevantes (ej. "Entidad certificada ENS", "Universidad").

### Publicación y Descubrimiento de Recursos
Los Proveedores deben seguir un proceso estandarizado para publicar sus recursos lingüísticos en el catálogo federado `(Ref. Pliego: Apartado 6.1.9)`:

* **Validación de formatos:** Verificación de compatibilidad con los formatos estándar de recursos lingüísticos (ej. .txt, .wav, .onnx).
* **Validación de metadatos DCAT-AP:** Asegurar que los metadatos cumplan con el estándar DCAT-AP y estén correctamente estructurados.
* **Asignación de políticas ODRL:** Aplicación de políticas de uso definidas en ODRL para controlar el acceso a los recursos.
* **Sincronización automática con el catálogo central:** Actualización automática del catálogo federado con los nuevos recursos publicados.
* **Validación semántica (cuando aplique):** Verificación de la coherencia semántica de los metadatos y recursos publicados.

### Negociación Técnica del Contrato

La negociación sigue un flujo estándar compatible con LDS y EDC:

1. Solicitud
2. Oferta
3. Propuesta de condiciones
4. Validación de políticas
5. Registro del contrato en ambos conectores
6. Validación del pago externo (Opcional)
7. Emisión de autorización de uso

### Transferencia y Acceso Remoto

Dos modalidades: (????)

**1. Transferencia segura peer-to-peer**

* Cifrado TLS 1.3
* mTLS obligatorio
* Control de integridad
* Evaluación previa de políticas

**2. Acceso in situ (no mueve datos)**

* Sandboxes
* Infraestructura de ejecución controlada
* Uso típico: corpus sensibles, vídeo, voz, datos biométricos

### Registro y Auditoría

Con el fin de garantizar la trazabilidad y el no repudio, todos los eventos relevantes se registran en el componente *Clearing House* `(Ref. Pliego: Apartado 6.1.10)`. Cada operación relevante (publicación, negociación, transferencia, acceso) genera un registro inmutable que incluye:

* Hash del contrato digital
* Identidad del consumidor
* Fecha, hora, duración
* Operación ejecutada (entrenamiento, descarga, inferencia)
* Estado final (completado, cancelado, suspendido)
  
Estas evidencias se almacenan en el Clearing House.

---

## Especificaciones del Paquete Conector
El **Conector** es el componente de software obligatorio que actúa como puerta de enlace segura para cualquier participante. Debe cumplir las siguientes especificaciones técnicas `(Ref. Pliego: Apartado 6.1.8)`:

### A. Requisitos Funcionales del Conector
* **Protocolo de Comunicación:** Debe soportar **IDSCP2** (IDS Communication Protocol) o **HTTPS sobre mTLS** para asegurar el canal de datos.
* **Motor de Políticas (Policy Engine):** Capacidad nativa para interpretar y ejecutar políticas de uso escritas en lenguaje **ODRL** (W3C), bloqueando la transferencia si no se cumplen las condiciones `(Ref. Pliego: Apartado 6.1.8.5)`.
* **Gestión de Identidad:** Integración con carteras de identidad (Wallets) para almacenar y presentar Credenciales Verificables (VCs) y certificados X.509.

### B. Modalidades de Despliegue Permitidas
Para garantizar la universalidad del acceso, se soportan dos topologías de despliegue `(Ref. Pliego: Apartado 6.1.8 - Alojamiento)`:
1.  **Conector On-Premise (Self-Hosted):** Despliegue mediante contenedores (Docker/Kubernetes) en la infraestructura propia del Participante. Requiere IP pública estática y certificados válidos.
2.  **Conector SaaS (Managed):** Instancia gestionada ("Connectors-as-a-Service") alojada en la infraestructura de computación del CNIE (Lote 4), facilitando el acceso a entidades con menor madurez digital.

---

## Estándares Semánticos y Metadatos
Para evitar silos de información y garantizar la descubribilidad de los recursos lingüísticos, se imponen los siguientes estándares de interoperabilidad semántica `(Ref. Pliego: Apartado 6.1.9 y 6.1.12.1)`:

### Modelo de Datos del Catálogo
* **Vocabulario Base:** Se adopta el estándar **DCAT-AP** (Data Catalog Vocabulary - Application Profile) como esquema raíz para la publicación de metadatos.
* **Extensiones Sectoriales:** Se incorporarán propiedades específicas del dominio lingüístico alineadas con el **Language Data Space (LDS)** y **ELG (European Language Grid)**, tales como:
    * `lds:language` (Código ISO 639-1/3)
    * `lds:dialect` (Región/Variante)
    * `lds:mediaType` (audio/wav, text/plain, model/onnx)
    * `lds:domain` (Legal, Médico, Turismo)

### Intercambio de Información
* Las interfaces de metadatos (Broker) deben exponerse mediante **API REST** documentadas con **OpenAPI 3.0** `(Ref. Pliego: Apartado 6.1.12.1)`.
* Los metadatos se serializarán preferentemente en formato **JSON-LD** para facilitar su vinculación semántica.

### Políticas de Uso
* Las políticas de uso asociadas a cada recurso se definirán utilizando el estándar **ODRL** (Open Digital Rights Language) `(Ref. Pliego: Apartado 6.1.8.5)`.

---

## Marco de Identidad y Confianza (Trust Framework)
La seguridad del espacio se basa en una cadena de confianza criptográfica, alineada con los requisitos de **Gaia-X** y el futuro reglamento **eIDAS 2** `(Ref. Pliego: Apartado 5.18.3 y 6.1.11.3)`.

### Componentes de Identidad
1.  **Identificadores:** Uso de **DIDs (Decentralized Identifiers)** para identificar de forma única y persistente a cada Participante y Conector.
2.  **Credenciales:** Uso de **Verifiable Credentials (VCs)** firmadas por Emisores de Confianza (Trust Anchors) para acreditar atributos (ej. "Entidad certificada ENS", "Universidad").
3.  **Certificados de Transporte:** Uso obligatorio de certificados **X.509** emitidos por una CA reconocida para establecer túneles mTLS (autenticación mutua) entre conectores.

---

## Seguridad y Cumplimiento Normativo (ENS)
Toda la infraestructura central y los conectores gestionados (SaaS) deben cumplir con los requisitos del **Esquema Nacional de Seguridad (ENS)** `(Ref. Pliego: Apartado 5.18.1.1)`.

* **Cifrado:**
    * *En tránsito:* TLS 1.3 obligatorio para todas las comunicaciones externas.
    * *En reposo:* Cifrado de claves y secretos mediante módulos HSM o Vault.
* **Integridad del Software:** Implementación de mecanismos de **Atestación Remota** (Remote Attestation) para verificar que el código del Conector no ha sido manipulado antes de autorizar una transferencia de datos `(Ref. Pliego: Apartado 6.1.8.7)`.
* **Trazabilidad:** Registro inmutable de transacciones (log de operaciones) en el componente *Clearing House* para fines de auditoría y no repudio `(Ref. Pliego: Apartado 6.1.10)`.
* **Política Zero Trust:** Autenticación y autorización estricta basada en el principio de mínimo privilegio para todos los accesos a recursos. 
* **Separación de datos personales y no personales:** Implementación de técnicas de anonimización y pseudonimización para proteger la privacidad de los usuarios.
* **Protección de Datos Personales:** Cumplimiento con el **RGPD** y la **LOPDGDD**, incluyendo mecanismos para la gestión de consentimientos y derechos ARCO.

---

## Interoperabilidad con Ecosistemas Externos

Para maximizar la integración del EDNEL en el panorama europeo de espacios de datos, se garantiza la interoperabilidad técnica con los principales ecosistemas existentes `(Ref. Pliego: Apartado 5.17.1)`.

EDNEL es plenamente compatible con:

**LDS**

* Misma arquitectura federada
* Misma semántica para metadatos lingüísticos
* Mismo protocolo de contrato
* Intercambio directo de activos (???)

**IDSA**

* Conectores soberanos con policy enforcement
* Clearing House centralizada de registros
* Identidad descentralizada con DIDs/VCs
* Contract negotiation framework

**DSSC**

* Convergencia técnica en arquitectura
* Alineamiento con estándares europeos de referencia
* Misma arquitectura federada
* Misma semántica para metadatos lingüísticos
* Mismo protocolo de contrato
* Intercambio directo de activos

---

## Gobernanza Técnica y Evolución del Ecosistema
Para asegurar la evolución sostenible del EDNEL, se establecerá un marco de gobernanza técnica que incluya `(Ref. Pliego: Apartado 5.19)`:
* **Comité Técnico de Gobernanza:** Responsable de la definición y actualización de estándares, políticas y procedimientos técnicos.
* **Proceso de Certificación de Conectores:** Mecanismo formal para certificar que los conectores cumplen con las especificaciones técnicas y de seguridad establecidas.
* **Estrategia de Actualización:** Planificación de revisiones periódicas para incorporar nuevas tecnologías y estándares emergentes en el ámbito de los espacios de datos.
* **Soporte y Formación:** Programas de capacitación para los participantes sobre el uso correcto del conector y las mejores prácticas de seguridad y gestión de datos.

---

