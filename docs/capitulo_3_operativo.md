# CAPÍTULO 3: MARCO OPERATIVO Y PROCESOS

---

## Taxonomía de Roles 

### Roles de Gobernanza

Son roles exclusivos de la Autoridad de Gobernanza. No manejan datos de los participantes y se centran en la operación, supervisión, administración y control del espacio de datos.

**Ejecutivos y administrativos**

* *Administrador*: responsable máximo de la gestión global del espacio de datos. Puede nombrar a cualquier rol de Gobernanza.

* *Operador*: Gestiona la operación diaria del EDNEL: altas y bajas de participantes, gestión de conectores, informes, control de uso.

**Técnicos de operación**

* *Operador técnico*: Supervisa infraestructura, monitorización, logs, entorno de pruebas y mantenimiento.

**Gestión del portal**

* *Gestor de Portal*: Administra la estructura y configuración general del portal público.

* *Gestor de Contenidos*: Crea, edita y elimina contenidos del portal público.

### Roles de Participantes

Asignables por cada entidad participante a sus miembros. Permiten interactuar con los datos, conectores, ofertas, contratos y procesos del espacio.

**Corporativos**

* *Representante Legal*: Actúa como punto de contacto oficial; solicita la participación en EDNEL y gestiona el estado de la entidad.

* *Administrador de Usuarios*: Gestiona las cuentas y roles internos del participante.

**Técnicos vinculados a conectores**

* *Administrador de Conector*: Instala y mantiene los conectores del participante, gestiona su información y realiza pruebas en entorno de test.

**Funcionales asociados al ciclo de datos**

* *Consumidor de Datos*: Busca y consulta activos, negocia contratos de consumo y ejecuta transferencias entrantes.

* *Proveedor de Datos*: Define y gestiona los metadatos de sus activos y supervisa contratos y transferencias salientes.

* *Gestor de Ofertas de Datos*: Establece políticas y precios de activos, crea ofertas y gestiona negociaciones asociadas.

**Financieros**

* *Administrador Financiero*: Gestiona operaciones económicas vinculadas a contratos, facturación y pagos; accede a todas las transferencias y negociaciones.

### Roles de Usuario Público

* *Usuario no autenticado*: Accede al portal público, consulta contenidos y puede explorar el catálogo público de datos.


## Adhesión al Espacio de Datos: Derechos y Obligaciones
Los términos de adhesión definen las reglas básicas que rigen la relación entre los Participantes (Proveedores, Consumidores e Intermediarios) y la Autoridad del Espacio (CNIE), incluyendo derechos, obligaciones, limitaciones de responsabilidad, y consecuencias por incumplimiento. Esta sección se inspira en buenas prácticas de espacios de datos similares y adapta los principios del *Language Data Space* (LDS Beta) para el contexto del EDNEL `(Ref. Pliego: Apartado 6.1.11)`.

### Derechos del Participante
1.  **Acceso a Metadatos:** El Participante tiene derecho a publicar y mantener metadatos de sus activos en el Catálogo Central para facilitar su descubribilidad.
2.  **Negociación de Contratos:** El Participante puede negociar acuerdos de uso con otros miembros del Espacio mediante su Conector y aceptar o proponer condiciones (políticas ODRL) de uso y explotación.
3.  **Reclamación y Soporte:** Derecho a recibir soporte por parte del Operador de Servicios Centrales en las incidencias relacionadas con conectividad, autenticación y seguridad, según los SLA vigentes.
4.  **Protección de la Propiedad Intelectual:** Conservación de derechos de autor y licencias sobre los activos publicados, sujetos a las condiciones definidas en el Acuerdo de Adhesión y en las políticas ODRL publicadas.

### Obligaciones del Participante
1.  **Cumplir la Legislación Aplicable:** Respetar normativa nacional, UE y sectorial aplicable (protección de datos, propiedad intelectual, export control, etc.).
2.  **Identidad y Credenciales:** Mantener la veracidad de la información KYC y presentar las credenciales verificables (VCs) requeridas para operar en el Espacio. El Conector debe almacenar y presentar VCs y certificados X.509 válidos para mTLS `(Ref. Pliego: Apartado 6.1.11.3)`. Además, será obligatorio para todos los participantes habilitar mecanismos de autenticación en dos factores (2FA) antes de acceder a cualquier funcionalidad del Espacio de Datos.
3.  **Políticas de Uso y Metadatos:** Publicar políticas ODRL correctas y metadatos conformes con DCAT-AP y JSON-LD; verificar que los `uid`, `profile` y `permission` se ajustan a los patrones del repositorio (`code/policies/`).
4.  **Garantías Técnicas:** Mantener el Conector en condiciones operativas, aplicar parches de seguridad y configurar políticas en el Motor de Políticas; cumplir las pruebas de homologación técnica (Sandbox) antes de acceder a Producción.
5.  **Confidencialidad y Buenas Prácticas:** Guardar confidencialidad sobre información clasificada y emplear medidas técnicas y organizativas para preservar la seguridad de los datos.
6.  **Responsabilidad y Auditoría:** Permitir auditorías técnicas cuando la Autoridad lo solicite, y mantener registros (logs) en el Conector que garanticen trazabilidad y no repudio (Clearing House) `(Ref. Pliego: Apartado 6.1.10)`.

### Limitaciones, Exenciones y Responsabilidades
1.  **Limitación de Responsabilidad:** La Autoridad y los Operadores no asumen responsabilidad por el contenido de los activos publicados por terceros; cada Participante es responsable de su propio contenido y cumplimiento de licencias.
2.  **Indemnización:** Los Participantes se comprometen a indemnizar a la Autoridad por reclamaciones derivadas de su incumplimiento legal o contractual.
3.  **SLA y Soporte:** La disponibilidad y soporte de componentes centrales se describen en SLA; sin embargo, la Autoridad puede limitar servicios ante abuso o compromiso de seguridad.

### Suspensión y Rescisión
1.  **Suspensión Temporal:** La Autoridad puede suspender temporalmente el acceso de un Participante en caso de riesgo inminente (vulnerabilidades, fraude, compromisos de seguridad) hasta la resolución del incidente.
2.  **Expulsión Definitiva:** Tras un proceso de investigación y notificación, la Autoridad podrá expulsar a un Participante por incumplimiento grave, con reserva de acciones legales y la revocación de credenciales (Offboarding). La expulsión no exime al Participante de obligaciones preexistentes.
3.  **Consecuencias Operativas:** La suspensión o expulsión conlleva la revocación de VCs, baja en el Catálogo y la obligación de ejecutar las acciones de eliminación/revocación requeridas por las políticas aplicables (ej. `delete` duty en ODRL con `elapsedTime`).

### Disputa y Resolución
1.  **Canales de Reclamación:** Los Participantes deben usar los canales oficiales del CNIE para reclamar o escalar incidencias; el Comité de Dirección actúa como órgano de resolución.
2.  **Jurisdicción y Legislación:** Las controversias se resolverán conforme al ordenamiento jurídico aplicable y a lo acordado en el Acuerdo de Adhesión.

> Nota: Este apartado adapta principios generales de los Términos y Condiciones del *Language Data Space* (LDS Beta) para nuestro contexto, priorizando coherencia con el `Ref. Pliego` y con los estándares técnicos y legales aquí descritos. Cualquier cambio que afecte la interpretación legal del documento deberá revisarse por el Comité de Dirección y por los asesores legales del CNIE.


## Proceso de Admisión (Onboarding)
El proceso para convertirse en Participante del EDNEL consta de cuatro fases secuenciales obligatorias `(Ref. Pliego: Apartado 6.1.11.2)`:

### Fase 1: Identificación y Registro (KYC)
* El Solicitante completa el formulario de adhesión en el Portal Web del EDNEL.
* Debe aportar la documentación legal requerida (NIF, escrituras) para verificar su identidad jurídica.
* **Resultado:** Validación administrativa por la Autoridad.

### Fase 2: Despliegue del Conector
El Solicitante debe seleccionar una de las dos modalidades de despliegue permitidas `(Ref. Pliego: Apartado 6.1.8)`:
* **Modalidad A (On-Premise):** El participante descarga e instala el Paquete Conector en su propia infraestructura.
* **Modalidad B (SaaS):** El participante solicita una instancia gestionada en la nube de la Fundación (CNIE).

### Fase 3: Homologación Técnica
* El Conector del Solicitante debe conectarse al **Entorno de Pruebas (Sandbox)**.
* Se ejecuta una batería automática de tests de conectividad, seguridad e interoperabilidad (Test de Interoperabilidad).
* **Resultado:** Informe de Aptitud Técnica `(Ref. Pliego: Apartado 6.1.11.1 - III. Pruebas)`.

### Fase 4: Emisión de Credenciales
* Tras superar la homologación, el Emisor de Confianza expide una **Credencial Verificable (VC)** vinculada al DID (Identidad Digital) del participante.
* El Participante carga esta credencial en su Conector para acceder al Entorno de Producción.


## Ciclo de Vida del Intercambio de Datos
Los participantes operan bajo el modelo "Publish-Find-Bind" (Publicar-Buscar-Vincular), ejecutado de forma descentralizada:

### Publicación (Publish)
* El Proveedor registra los metadatos de su activo (título, descripción, idioma, formato) en su Conector local.
* El Conector sincroniza automáticamente estos metadatos con el **Catálogo Central** (Broker) para hacerlos descubribles, sin subir los datos reales `(Ref. Pliego: Apartado 6.1.6.2)`.
* Para cada activo se publican: metadatos descriptivos(mencionados en el punto anterior), condiciones de uso y licencia, restricciones (p. ej., solo investigación / no comercial),requisitos de seguridad y privacidad, posibles condiciones económicas (aunque el pago se hará fuera del espacio).
* Esta información es accesible a través de los conectores y del Marketplace.

### Descubrimiento y solicitud

* El Consumidor busca activos en el catálogo (por idioma, dominio, tipo de recurso, licencia, precio…).
* Selecciona el activo y envía una solicitud de acceso a través de su conector.
* El Intermediario / Marketplace registra la solicitud y la asocia a la oferta del Proveedor.

### Verificación de elegibilidad e identidad

Antes de negociar:

* El sistema verifica que ambas partes están onboarded y autorizadas en el espacio (on-/offboarding según DSSC).
* Se comprueba el rol (proveedor, consumidor) y el cumplimiento de requisitos (p.ej. entidad académica, empresa, organismo público).
* Se valida la identidad mediante las credenciales verificables (VCs) almacenadas en los conectores.
* Solo si ambas partes cumplen los requisitos, se procede a la negociación del contrato.

### Negociación (Negotiation)

 El Proveedor y el Consumidor, a través de los conectores, negocian un **contrato de datos**:

- Licencia y derechos de uso

- Ámbito (territorial, sectorial, temporal)

- Límite de volumen/llamadas (si aplica)

- Fines permitidos (entrenamiento IA, evaluación, demo, producción…)

- Precio y forma de pago

Una vez acordadas las condiciones, el contrato de datos se registra en ambos conectores y, opcionalmente, en un servicio central de evidencias gestionado por la Autoridad de Gobernanza.

### Confirmación de pago (si aplica)

Aunque el pago se realiza en canales externos:

* El Consumidor realiza el pago según lo acordado

* El Proveedor (o un sistema de terceros) marca la transacción como pagada en el espacio, proporcionando una referencia (ID factura, hash, etc.),

* El Espacio solo registra el estado y la referencia, nunca datos financieros sensibles

* Solo cuando la transacción aparece como “pago confirmado”, el conector del Proveedor puede habilitar el acceso.

### Evaluación de políticas y autorización

Previo a cualquier transferencia o acceso:

El conector del Proveedor evalúa las políticas de uso asociadas al activo (licencia, restricciones, reglas de privacidad).

Se realiza una decisión de acceso que tiene en cuenta:

- El contrato negociado
- El rol del Consumidor
- El contexto (finalidad, entorno de ejecución, periodo de tiempo, etc.). 

Si todo es conforme, se autoriza el intercambio; si no, la operación se deniega o se requiere una nueva negociación.

Este paso es clave para hacer efectiva la soberanía del dato: las políticas del Proveedor se aplican antes de cada uso, no solo en el momento del contrato.

Las políticas que se aplican en cada intercambio se organizan en cuatro capas: 

* **Políticas globales**

Derivadas de la legislación UE (GDPR, DGA, Data Act, AI Act…).

Aplican a todos los participantes.

* **Políticas del espacio de datos**

Definidas en el Rulebook del Espacio de la Nueva Economía de la Lengua.

Condicionan: tipos de activos, comportamientos permitidos, requisitos de certificación, etc.

* **Políticas del proveedor**

Específicas de cada activo: licencia, restricciones, requisitos éticos, términos sectoriales.

* **Políticas de la transacción**

Acordadas en cada contrato concreto (por ejemplo, proyecto de investigación concreto, límite de llamadas a una API, etc.).


### Transferencia y Registro (Transfer & Log)
* Se establece un canal seguro y cifrado punto a punto para la transferencia del activo.
* La transacción se registra (metadatos de la operación, hash del contrato) en el **Centro de Intercambio de Información (Clearing House)** para garantizar la trazabilidad y no repudio `(Ref. Pliego: Apartado 6.1.10)`.

Cada transacción genera:

* Evidencias de contrato (hash/ID)

* Evidencias de acceso (quién, cuándo, qué)

* Evidencias de uso (volumen, operaciones)

* Estado final de la transacción (completada, parcial, cancelada)


## Salida del Espacio (Offboarding)
* **Salida Voluntaria:** Mediante notificación a la Autoridad con 30 días de antelación. Implica la revocación de certificados y la baja en el Catálogo.
* **Expulsión Forzosa:** La Autoridad revocará inmediatamente las credenciales de cualquier participante que viole el Acuerdo de Adhesión o comprometa la seguridad del ecosistema.
* **Persistencia:** La salida no exime de las obligaciones de confidencialidad ni de los derechos de uso adquiridos legítimamente antes de la fecha de baja, salvo estipulación contraria en las políticas de uso (Cláusula de Supervivencia).


## Modelo económico

El EDNEL promueve una economía federada basada en datos, servicios, calidad y confianza, donde la cadena de valor se articula en torno a:

- Provisión de datos lingüísticos y recursos asociados
- Valor añadido mediante IA u otros servicios avanzados
- Intermediación y certificación
- Servicios de confianza y gobernanza

### Actores Económicos

**Autoridad de gobernanza**

La autoridad de gobernanza (CNIE) participa en la economía del espacio sin ánimo de lucro.

**Data Providers (Proveedores de Datos)**

Aportan corpus, recursos lingüísticos, terminología, audio, vídeo, metadatos y documentación.
Obtienen beneficios por:

- Tasas de acceso
- Licencias de uso
- Acuerdos comerciales por datasets premium
- Ingresos derivados de modelos entrenados o derivados

**Data Consumers (Consumidores)**

Entidades que acceden a datos para investigación, entrenamiento de IA, desarrollo de productos, traducción, análisis lingüístico o localización.

Contribuyen económicamente mediante:

- Tarifas de acceso
- Suscripciones
- Servicios asociados

### Valor en el consumo

El consumo de datos puede ser:

- Gratuito (open data o licencias altruistas)
- Licenciado (uso académico)
- Comercial (uso intensivo o con explotación de derivados)

El modelo de coste será:

- Pay-per-use: Pago por unidad de dato
- Suscripción temporal: Pago por acceso durante un periodo
- Acceso por volumen: Pago según volumen de datos consumidos

### Servicios de valor añadido

Valor económico de los derivados, especialmente modelos de IA entrenados sobre datos lingüísticos. Incluye:

- Licencias para entrenamiento ???
- Licencias sobre modelos resultantes
- Royalties por uso de derivados en entornos comerciales
- Tasas por distribución de modelos entrenados

### Mecanismos de remuneración

**Monetización por volumen o tipo de dato**: precios diferenciados según sensibilidad, calidad, curación, granularidad o dominio.

**Prestación de servicios avanzados**: entrenamiento de modelos

**Incentivos**:

El modelo económico incluye incentivos: descuentos, prioridad de acceso, visibilidad en el catálogo.

Estos incentivos buscan fomentar la participación activa para: aportar datos, mejorar calidad, enriquecer terminología...

### Modelos de licencia y propiedad intelectual

El espacio debe soportar licencias diferenciadas:

**Licencias abiertas**

Datos abiertos, aplicables a corpus públicos o terminología básica.

**Licencias restringidas**

- Solo investigación
- No comercial
- Comercial con límite de uso

**Licencias premium / comerciales**

Servicios avanzados, corpus curados, anotación experta, etc.

### Servicios gratuitos para participantes

- Adhesión al espacio (onboarding)
- Acceso al catálogo y búsqueda de activos
- Emisión de credenciales verificables
- Acceso al clearing house y sus servicios de trazabilidad
- Soporte técnico básico

### Método de Pago

El Espacio de Datos no actúa como intermediario financiero, plataforma de pago ni custodio de fondos.
Todos los pagos derivados del acceso a datos, licencias, servicios o productos derivados se realizan fuera del perímetro del Espacio, mediante acuerdos bilaterales o multilaterales entre los participantes implicados.

Los participantes pueden utilizar, de forma externa al Espacio:

- Transferencias bancarias
- Pagos mediante plataformas de pago electrónico
- Facturación directa entre partes
- Otros medios acordados contractualmente

### Gestión de Transacciones

El Espacio **no impone ni gestiona** un proveedor de pagos concreto. Aunque el pago se realiza externamente, el Espacio sí registra la existencia de la transacción, exclusivamente con fines de: trazabilidad, auditoría, control de cumplimiento, resolución de disputas.
El registro no incluye información financiera sensible, sino metadatos de transacción.

**Estados de la transacción**

- *Propuesta*: el proveedor publica las condiciones (precio, licencia, uso permitido). El consumidor solicita acceso o contratación.

- *Aceptada*: ambas partes aceptan las condiciones contractuales y se genera un registro de acuerdo en el Espacio.

- *Pago pendiente* (externo): se indica que el pago debe realizarse fuera del Espacio. El acceso a los datos/servicios no está aún habilitado.

- *Pago confirmado*: una de las partes registra la confirmación del pago externo (con referencia verificable).

- *Acceso habilitado / Servicio activo*: se concede acceso a los datos o se activa el servicio conforme a lo acordado. Se inicia el registro de evidencias de uso.

- *En ejecución / Consumo*: el consumidor utiliza los datos o servicios bajo las condiciones de la licencia. Se mantienen logs y trazabilidad.

- *Finalizada*: se cumple el periodo o condiciones de uso y se registra la finalización satisfactoria.

- *Suspendida*: la transacción se suspende por incumplimiento, disputa, incidencia técnica o legal.

- *Cancelada*: la transacción se cancela antes de su finalización, conforme a lo pactado.


### Mecanismo de resolución de disputas

**Fase 1 – Resolución bilateral**

Las partes implicadas intentan resolver la disputa de manera directa, utilizando:

- El contrato bilateral acordado entre ellas
- Las evidencias registradas en el Espacio
- Las referencias externas de pago.

Duración orientativa: 15 días naturales.

**Fase 2 – Mediación de la Autoridad de Gobernanza**

Si no hay acuerdo, cualquiera de las partes puede solicitar la mediación de la Autoridad de Gobernanza.

La Autoridad:

- Analiza las evidencias
- Revisa los registros del Espacio (contrato, logs, estados)
- Emite una recomendación no vinculante
- Puede ordenar suspensión temporal del acceso mientras dure la mediación.

**Fase 3 – Resolución contractual externa**

Si la mediación no resulta satisfactoria:

- La disputa se resolverá conforme a lo previsto en el contrato bilateral
- Mediante arbitraje, mediación formal o jurisdicción competente,
- Sin perjuicio de las medidas internas de gobernanza del Espacio (suspensión o revocación)
