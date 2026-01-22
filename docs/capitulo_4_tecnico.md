# CAPÍTULO 4: MARCO TÉCNICO Y ESTÁNDARES DE INTEROPERABILIDAD

---

## Arquitectura de Referencia
El EDNEL implementa una arquitectura distribuida y federada, alineada con los principios del **IDS-RAM** (International Data Spaces Reference Architecture Model), las especificaciones de convergencia técnica del **DSSC** (Data Spaces Support Centre), y alineado con el ecosistema europeo de espacios de datos lingüísticos (LDS).


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
* Representar la **identidad técnica** del participante y operar únicamente en su nombre.
* **Autenticar y verificar** la identidad y atributos.
* Participar en la **negociación**, formalización y gestión de contratos de datos.
* Evaluar y aplicar las **políticas de uso** antes de cada acceso o uso efectivo.
* Decidir y ejecutar técnicamente la **autorización o denegación** del acceso.
* **Controlar la ejecución** del acceso y transferencia conforme a lo autorizado. 
* Registrar **evidencias** de las operaciones realizadas para fines de trazabilidad, auditoría y no repudio.

El conector garantiza técnicamente la soberanía del dato, asegurando que los datos solo se utilicen conforme a las políticas acordadas y registrando todas las operaciones para su posterior auditoría, siendo obligatorio su uso para cualquier intercambio dentro del ecosistema. Solo los conectores certificados por la Autoridad de Gobernanza podrán operar en el entorno productivo del EDNEL.

Queda expresamente **prohibido**:

* El acceso directo a los datos de un participante eludiendo el Conector.
* El establecimiento de flujos paralelos fuera del marco del EDNEL.
* El uso de credenciales, APIs o accesos no gobernados por el Conector.
  

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

## Gobierno técnico del Dato y de los derivados

El EDNEL establece reglas técnicas para gobernar:

* El linaje de los datos (origen, transformaciones, combinaciones)
* La trazabilidad de los activos derivados (modelos entrenados, corpus procesados, datasets enriquecidos/complejos)
* El control de las restricciones heredadas de los datos originales
* La asociación de políticas de uso a los resultados derivados

Se consideran **activos derivados** aquellos que resultan de la transformación, combinación o procesamiento de uno o más activos originales, incluyendo pero no limitándose a:
* Datasets limpiados, anotados, combinados o enriquecidos.
* Corpus lingüísticos procesados o segmentados.
* Modelos de IA entrenados o ajustados utilizando datos del EDNEL.
* Cualquier otro recurso generado a partir de los datos originales.

Todo activo derivado:

* Hereda automáticamente las restricciones, obligaciones y condiciones de uso de los activos de origen
* No puede ser publicado, transferido o explotado en condiciones más permisivas que las de sus fuentes
* Debe reflejar explícitamente: qué políticas aplican, que restricciones se heredan, y que usos están permitidos o prohibidos.

En cuanto al **linaje**, el EDNEL exige a cada activo:
* Tener un origen claro y verificable.
* Registrar todas las transformaciones aplicadas.
* Estar vinculado a uno o mas activos, uno o más contratos y un conjunto de políticas de uso.

Para permitir la **trazabilidad** de todos los activos, se debe permitir:
* Reconstruir el árbol de linaje de cualquier activo.
* Identificar las fuentes originales.


## Interoperabilidad con Ecosistemas Externos e iniciativas Europeas

Para maximizar la integración del EDNEL en el panorama europeo de espacios de datos, se garantiza la interoperabilidad técnica con los principales ecosistemas existentes en particular con LDS, y alineado con IDSA y DSSC.

EDNEL es compatible con:

**LDS**

* Misma arquitectura federada
* Misma semántica para metadatos lingüísticos
* Mismo protocolo de contrato

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

Para asegurar la evolución sostenible del EDNEL, se establecerá un marco de gobernanza técnica que incluya:
* **Comité Técnico de Gobernanza:** Responsable de la definición y actualización de estándares, políticas y procedimientos técnicos.
* **Proceso de Certificación de Conectores:** Mecanismo formal para certificar que los conectores cumplen con las especificaciones técnicas y de seguridad establecidas.
* **Estrategia de Actualización:** Planificación de revisiones periódicas para incorporar nuevas tecnologías y estándares emergentes en el ámbito de los espacios de datos.
* **Soporte y Formación:** Programas de capacitación para los participantes sobre el uso correcto del conector y las mejores prácticas de seguridad y gestión de datos.
