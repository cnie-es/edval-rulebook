# CAPÍTULO 4: MARCO TÉCNICO Y ESTÁNDARES DE INTEROPERABILIDAD

**Versión:** 1.0.0  
**Estado:** Borrador para Validación de Arquitectura  
**Referencia del Proyecto:** Expediente 71-7-2.01-0004/2025 (Dimensión Técnica)

---

## 4.1. Arquitectura de Referencia
El EDNEL implementa una arquitectura distribuida y federada, alineada con el modelo **IDS-RAM 4.0** (International Data Spaces Reference Architecture Model) y las especificaciones de convergencia técnica del **DSSC** (Data Spaces Support Centre) `(Ref. Pliego: Apartado 5.5 y 6.1.4)`.

### Principios Arquitectónicos
1.  **Descentralización:** No existe un almacenamiento central de datos. Los activos residen en los sistemas de origen (infraestructura del Proveedor) y se transfieren *Peer-to-Peer* (P2P) al Consumidor.
2.  **Separación de Planos:** Se distingue estrictamente entre el **Plano de Control** (gestión de identidad, metadatos y contratos) y el **Plano de Datos** (transferencia del contenido real).
3.  **Neutralidad Tecnológica:** Los componentes son agnósticos a la infraestructura subyacente (Cloud, On-Premise, Edge) `(Ref. Pliego: Apartado 5.17.2)`.

---

## 4.2. Especificaciones del Paquete Conector
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

## 4.3. Estándares Semánticos y Metadatos
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

---

## 4.4. Marco de Identidad y Confianza (Trust Framework)
La seguridad del espacio se basa en una cadena de confianza criptográfica, alineada con los requisitos de **Gaia-X** y el futuro reglamento **eIDAS 2** `(Ref. Pliego: Apartado 5.18.3 y 6.1.11.3)`.

### Componentes de Identidad
1.  **Identificadores:** Uso de **DIDs (Decentralized Identifiers)** para identificar de forma única y persistente a cada Participante y Conector.
2.  **Credenciales:** Uso de **Verifiable Credentials (VCs)** firmadas por Emisores de Confianza (Trust Anchors) para acreditar atributos (ej. "Entidad certificada ENS", "Universidad").
3.  **Certificados de Transporte:** Uso obligatorio de certificados **X.509** emitidos por una CA reconocida para establecer túneles mTLS (autenticación mutua) entre conectores.

---

## 4.5. Seguridad y Cumplimiento Normativo (ENS)
Toda la infraestructura central y los conectores gestionados (SaaS) deben cumplir con los requisitos del **Esquema Nacional de Seguridad (ENS)** `(Ref. Pliego: Apartado 5.18.1.1)`.

* **Cifrado:**
    * *En tránsito:* TLS 1.3 obligatorio para todas las comunicaciones externas.
    * *En reposo:* Cifrado de claves y secretos mediante módulos HSM o Vault.
* **Integridad del Software:** Implementación de mecanismos de **Atestación Remota** (Remote Attestation) para verificar que el código del Conector no ha sido manipulado antes de autorizar una transferencia de datos `(Ref. Pliego: Apartado 6.1.8.7)`.
* **Trazabilidad:** Registro inmutable de transacciones (log de operaciones) en el componente *Clearing House* para fines de auditoría y no repudio `(Ref. Pliego: Apartado 6.1.10)`.

---