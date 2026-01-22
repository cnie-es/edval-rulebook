# CAPÍTULO 4: MARCO TÉCNICO Y ESTÁNDARES DE INTEROPERABILIDAD

---

## Arquitectura de Referencia
El EDNEL implementa una arquitectura distribuida y federada, alineada con los principios del **IDS-RAM** (International Data Spaces Reference Architecture Model), las especificaciones de convergencia técnica del **DSSC** (Data Spaces Support Centre), y alineado con el ecosistema europeo de espacios de datos lingüísticos (LDS).

El EDNEL adopta como infraestructura base de referencia el ecosistema **Simpl-Open** promovido a nivel europeo, garantizando la compatibilidad con los servicios comunes de espacios de datos, en particular en los ámbitos de identidad, confianza, federación y observabilidad.

### Principios Arquitectónicos
1. **Soberanía del dato** Los datos permanecen bajo control del proveedor en todo momento. El acceso o uso solo se permite conforme a políticas explícitas y verificables.
2.  **Descentralización:** No existe un almacenamiento central de datos. Los activos residen en los sistemas de origen (infraestructura del Proveedor) 
3.  **Separación de Planos:** Se distingue estrictamente entre el **Plano de Control** (gestión de identidad, metadatos, contratos, trazabilidad y políticas) y el **Plano de Datos** (transferencia del contenido real).
4.  **Neutralidad Tecnológica:** El marco de gobernanza no impone tecnologías de implementación concretas, sino requisitos funcionales y normativos.
5.  **Seguridad y confianza verificable**: Todo intercambio debe realizarse sobre una base de identidad autenticada, políticas ejecutables y trazabilidad verificable.

## Componentes técnicos fundamentales

El ecosistema del EDNEL se compone, como mínimo, de los siguientes tipos de componentes:

### Componentes de los Participantes:
Cada Participante (Proveedor o Consumidor) debe disponer de:
* Un **Conector** certificado que actúe como puerta de enlace segura.
* Un sistema de gestión de **identidad, credenciales y secretos**, compatible con el marco de confianza.
* Mecanismos de **integración** con sus sistemas internos de datos o servicios.
* Capacidades de **control, monitoreo y registro** de sus operaciones.

### Componentes Centrales de la Autoridad de Gobernanza:
La Autoridad de Gobernanza operará, como mínimo, los siguientes servicios técnicos centrales:
* **Portal** del Espacio de Datos.
* Servicios de **Identidad y Confianza**.
* **Catálogo Semántico** y Servicio de **Descubrimiento**.
* Servicio registro de evicencia (**Clearing House**).
* Servicios de **certificación** y entorno de **pruebas**.

## Conector

Los conectores son componentes técnicos fundamentales que actúan como puerta de enlace segura entre los participantes del EDNEL y el ecosistema. Cada participante debe desplegar un conector certificado, que garantiza la interoperabilidad técnica y la seguridad en las operaciones de intercambio de datos.

Todo conector deberá:
* Representar la identidad técnica del participante.
* Autenticar a las partes/participantes del intercambio.
* Evaluar y aplicar políticas antes de cada uso.
* Gestionar contratos y autorizaciones.
* Controlar la ejecución efectiva del acceso.
* Registrar evidencias técnicas de cada operación.

El conector garantiza técnicamente la soberanía del dato, asegurando que los datos solo se utilicen conforme a las políticas acordadas y registrando todas las operaciones para su posterior auditoría, siendo obligatorio su uso para cualquier intercambio dentro del ecosistema.

## Obligaciones Técnicas de los Participantes

Todo participante está obligado a:

* Mantener su infraestructura técnica en condiciones de seguridad y operatividad.
* Garantizar la correcta ejecución de las políticas de uso asociadas a sus recursos.
* Asegurar la trazabilidad de las operaciones realizadas dentro del ecosistema.
* Someterse a procesos de certificación y auditoría técnica por parte de la Autoridad de Gobernanza.
* Notificar incidentes de seguridad relevantes que puedan afectar al ecosistema, así como
cooperar en la resolución de incidentes y procesos de supervisión


## Servicios Técnicos Centrales de la Autoridad de Gobernanza

La Autoridad de Gobernanza del EDNEL operará, como mínimo, los siguientes servicios técnicos centrales:

* Portal del Espacio de Datos: punto de acceso web para la gestión administrativa, documentación y soporte a los participantes.
* Servicios de Identidad y Confianza: gestión de identidades, credenciales y atributos de los participantes.
* Catálogo Semántico y Servicio de Descubrimiento: repositorio centralizado de metadatos y vocabularios para facilitar la localización de recursos.
* Registro de Vocabularios y Esquemas Semánticos: gestión de estándares semánticos utilizados en el espacio.
* Servicio de Observabilidad y Clearing House: registro de evidencias técnicas de las operaciones realizadas.
* Servicios de Certificación y entorno de Pruebas: mecanismos para certificar conectores y validar su conformidad técnica.

Estos servicios constituyen la infraestructura mínima obligatoria para garantizar la coherencia, seguridad, supervisión y operabilidad del espacio de datos.


## Marco de identidad, atributos y confianza

El EDNEL establece un marco descentralizado de identidad que garantiza:

* Identificación verificable de organizaciones y componentes, para la admisión de participantes.
* Acreditación de atributos relevantes (jurídicos, técnicos, sectoriales).
* Autenticación mutua entre participantes.
* Uso de emisores de confianza reconocidos.

### Identidades organizativas vs. identidades técnicas

En lo referente a las identidades, se distingue entre:

* **Identidades organizativas:** representan a las entidades jurídicas participantes (proveedores, consumidores, autoridades). Gestionadas por la Autoridad de Gobernanza.
* **Identidades técnicas:** representan a los componentes técnicos (conectores), y que actuan en nombre de las anteriores. Gestionadas por los propios participantes.

Cada operación deberá estar vinculada de forma inequívoca a:
* Una organización responsable
* Un componente técnico autenticado

### Atributos y roles

Además de la identidad básica, el EDNEL utiliza atributos verificables para expresar:

* El rol del participante (proveedor, consumidor, intermediario, etc.)
* Su naturaleza (empresa, universidad, organismo público, etc.)
* Certificaciones o cualificaciones relevantes
* Condiciones de elegibilidad para determinados tipos de activos o usos

Estos atributos:

* Son emitidos o reconocidos por emisores de confianza
* Son utilizados por los conectores para evaluar políticas de acceso y uso
* Pueden ser requeridos como condición previa para participar en una transacción

La **identidad** y los **atributos** no son solo mecanismos de acceso, sino elementos centrales del modelo de soberanía del dato:

Las políticas de uso pueden exigir determinados atributos o cualificaciones. El incumplimiento de condiciones de identidad o elegibilidad debe impedir técnicamente el acceso.


## Seguridad y control de uso de los datos

La seguridad del EDNEL se basa en un modelo de control soberano del uso del dato, fundamentado en:

* Identidad verificable de los participantes y componentes
* Políticas de uso formalizadas y ejecutables
* Decisiones de autorización previas a cada acceso o uso
* Registro obligatorio de evidencias y trazabilidad completa

En el EDNEL, todo acceso o uso de un activo está sujeto a una decisión explícita de autorización, evaluada por el Conector del proveedor en función de:

* La identidad y atributos del solicitante.
* El contrato vigente.
* Las políticas del espacio, del proveedor y de la transacción
* El contexto de uso (finalidad, entorno, periodo, límites, etc.)

### Políticas de control

El control de uso de los datos se organiza en cuatro niveles:

* **Políticas legales y regulatorias** derivadas de la normativa aplicable (protección de datos, gobernanza de datos, IA, etc.).
* **Políticas del espacio de datos** definidas en este Rulebook y en las normas del EDNEL (tipos de activos permitidos, requisitos de certificación, condiciones de uso, etc.).
* **Políticas del proveedor** asociadas a cada activo concreto (licencia, restricciones, finalidades, condiciones sectoriales, etc.)
* **Políticas contractuales de la transacción** acordadas entre proveedor y consumidor en cada transacción específica.

### Trazabilidad, supervisión y no repudio

El EDNEL establece como obligación:

* El registro de todas las operaciones relevantes
* La generación de evidencias técnicas de contratos, accesos, usos y transferencias.

Estas evidencias:

* Permiten auditoría y supervisión por la Autoridad de Gobernanza
* Soportan la resolución de disputas
* Garantizan el no repudio entre las partes



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


## Marco de Identidad y Confianza (Trust Framework)
La seguridad del espacio se basa en una cadena de confianza criptográfica, alineada con los requisitos de **Gaia-X** y el futuro reglamento **eIDAS 2** `(Ref. Pliego: Apartado 5.18.3 y 6.1.11.3)`.

### Componentes de Identidad
1.  **Credenciales:** Uso de **Verifiable Credentials (VCs)** firmadas por Emisores de Confianza (Trust Anchors) para acreditar atributos (ej. "Entidad certificada ENS", "Universidad").
2.  **Certificados de Transporte:** Uso obligatorio de certificados **X.509** emitidos por una CA reconocida para establecer túneles mTLS (autenticación mutua) entre conectores.


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


## Gobierno técnico del Dato y de los derivados

El EDNEL establece reglas técnicas para gobernar:

* El linaje de los datos (origen, transformaciones, combinaciones)
* La trazabilidad de los activos derivados (modelos entrenados, corpus procesados, datasets enriquecidos/complejos)
* El control de las restricciones heredadas de los datos originales
* La asociación de políticas de uso a los resultados derivados

Los activos derivados estarán sujetos a las mismas obligaciones de soberanía, trazabilidad y control de uso que los datos originales.


## Interoperabilidad con Ecosistemas Externos e iniciativas Europeas

Para maximizar la integración del EDNEL en el panorama europeo de espacios de datos, se garantiza la interoperabilidad técnica con los principales ecosistemas existentes `(Ref. Pliego: Apartado 5.17.1)`, en particular con LDS, y alineado con IDSA y DSSC.

EDNEL es compatible con:

**LDS**

* Misma arquitectura federada
* Misma semántica para metadatos lingüísticos
* Mismo protocolo de contrato
* Intercambio directo de activos (???)

Además, se asegura la compatibilidad técnica con los marcos de referencia más relevantes:

**IDSA**

* Conectores soberanos con policy enforcement
* Clearing House centralizada de registros
* Identidad descentralizada con VCs
* Contract negotiation framework

**DSSC**

* Convergencia técnica en arquitectura
* Alineamiento con estándares europeos de referencia
* Misma arquitectura federada
* Misma semántica para metadatos lingüísticos
* Mismo protocolo de contrato
* Intercambio directo de activos


## Gobernanza Técnica y Evolución del Ecosistema

Para asegurar la evolución sostenible del EDNEL, se establecerá un marco de gobernanza técnica que incluya `(Ref. Pliego: Apartado 5.19)`:
* **Comité Técnico de Gobernanza:** Responsable de la definición y actualización de estándares, políticas y procedimientos técnicos.
* **Proceso de Certificación de Conectores:** Mecanismo formal para certificar que los conectores cumplen con las especificaciones técnicas y de seguridad establecidas.
* **Estrategia de Actualización:** Planificación de revisiones periódicas para incorporar nuevas tecnologías y estándares emergentes en el ámbito de los espacios de datos.
* **Soporte y Formación:** Programas de capacitación para los participantes sobre el uso correcto del conector y las mejores prácticas de seguridad y gestión de datos.
