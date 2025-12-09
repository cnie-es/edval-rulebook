# CAPÍTULO 3: MARCO OPERATIVO Y PROCESOS

**Versión:** 1.0.0  
**Estado:** Borrador para Validación Operativa  
**Referencia del Proyecto:** Expediente 71-7-2.01-0004/2025 (Dimensión Operativa - Procesos)

---

## 3.1. Taxonomía de Roles Operativos
Se establece la siguiente matriz de responsabilidades para la operación diaria del EDNEL, conforme a la estructura definida en el Pliego `(Ref. Pliego: Apartado 6.1.5)`:

### A. Roles de Gestión (Infraestructura)
1.  **Autoridad del Espacio (CNIE):**
    * Responsable de la gobernanza, admisión (Onboarding) y expulsión (Offboarding) de miembros.
    * Administra las políticas de acceso globales y el catálogo raíz.
2.  **Operador de Servicios Centrales:**
    * Entidad técnica encargada del mantenimiento de los componentes comunes, como por ejemplo el *Identity Provider*.
    * Garantiza los SLAs de disponibilidad de la plataforma central `(Ref. Pliego: Apartado 6.1.12.2)`.
3.  **Emisor de Confianza (Trust Anchor):**
    * Entidad externa o interna habilitada para emitir y firmar Credenciales Verificables (VCs) y certificados X.509 que validan la identidad de los participantes `(Ref. Pliego: Apartado 6.1.11.3)`.

### B. Roles de Participación (Negocio)
1.  **Proveedor de Datos (Data Provider):**
    * Publica la oferta de activos en el catálogo.
    * Configura las políticas de uso y contrato en su Conector.
2.  **Consumidor de Datos (Data Consumer):**
    * Busca activos en el catálogo y negocia contratos de uso.
    * Consume los datos respetando las restricciones técnicas impuestas.
3.  **Intermediario / Proveedor Tecnológico:**
    * Facilita servicios de valor añadido (ej. limpieza de corpus, entrenamiento de modelos) o provee infraestructura técnica a terceros `(Ref. Pliego: Apartado 6.1.5)`.

---

## 3.2. Adhesión al Espacio de Datos: Derechos y Obligaciones
Los términos de adhesión definen las reglas básicas que rigen la relación entre los Participantes (Proveedores, Consumidores e Intermediarios) y la Autoridad del Espacio (CNIE), incluyendo derechos, obligaciones, limitaciones de responsabilidad, y consecuencias por incumplimiento. Esta sección se inspira en buenas prácticas de espacios de datos similares y adapta los principios del *Language Data Space* (LDS Beta) para el contexto del EDNEL `(Ref. Pliego: Apartado 6.1.11)`.

### 3.2.1. Derechos del Participante
1.  **Acceso a Metadatos:** El Participante tiene derecho a publicar y mantener metadatos de sus activos en el Catálogo Central para facilitar su descubribilidad.
2.  **Negociación de Contratos:** El Participante puede negociar acuerdos de uso con otros miembros del Espacio mediante su Conector y aceptar o proponer condiciones (políticas ODRL) de uso y explotación.
3.  **Reclamación y Soporte:** Derecho a recibir soporte por parte del Operador de Servicios Centrales en las incidencias relacionadas con conectividad, autenticación y seguridad, según los SLA vigentes.
4.  **Protección de la Propiedad Intelectual:** Conservación de derechos de autor y licencias sobre los activos publicados, sujetos a las condiciones definidas en el Acuerdo de Adhesión y en las políticas ODRL publicadas.

### 3.2.2. Obligaciones del Participante
1.  **Cumplir la Legislación Aplicable:** Respetar normativa nacional, UE y sectorial aplicable (protección de datos, propiedad intelectual, export control, etc.).
2.  **Identidad y Credenciales:** Mantener la veracidad de la información KYC y presentar las credenciales verificables (VCs) requeridas para operar en el Espacio. El Conector debe almacenar y presentar VCs y certificados X.509 válidos para mTLS `(Ref. Pliego: Apartado 6.1.11.3)`.
3.  **Políticas de Uso y Metadatos:** Publicar políticas ODRL correctas y metadatos conformes con DCAT-AP y JSON-LD; verificar que los `uid`, `profile` y `permission` se ajustan a los patrones del repositorio (`code/policies/`).
4.  **Garantías Técnicas:** Mantener el Conector en condiciones operativas, aplicar parches de seguridad y configurar políticas en el Motor de Políticas; cumplir las pruebas de homologación técnica (Sandbox) antes de acceder a Producción.
5.  **Confidencialidad y Buenas Prácticas:** Guardar confidencialidad sobre información clasificada y emplear medidas técnicas y organizativas para preservar la seguridad de los datos.
6.  **Responsabilidad y Auditoría:** Permitir auditorías técnicas cuando la Autoridad lo solicite, y mantener registros (logs) en el Conector que garanticen trazabilidad y no repudio (Clearing House) `(Ref. Pliego: Apartado 6.1.10)`.

### 3.2.3. Limitaciones, Exenciones y Responsabilidades
1.  **Limitación de Responsabilidad:** La Autoridad y los Operadores no asumen responsabilidad por el contenido de los activos publicados por terceros; cada Participante es responsable de su propio contenido y cumplimiento de licencias.
2.  **Indemnización:** Los Participantes se comprometen a indemnizar a la Autoridad por reclamaciones derivadas de su incumplimiento legal o contractual.
3.  **SLA y Soporte:** La disponibilidad y soporte de componentes centrales se describen en SLA; sin embargo, la Autoridad puede limitar servicios ante abuso o compromiso de seguridad.

### 3.2.4. Suspensión y Rescisión
1.  **Suspensión Temporal:** La Autoridad puede suspender temporalmente el acceso de un Participante en caso de riesgo inminente (vulnerabilidades, fraude, compromisos de seguridad) hasta la resolución del incidente.
2.  **Expulsión Definitiva:** Tras un proceso de investigación y notificación, la Autoridad podrá expulsar a un Participante por incumplimiento grave, con reserva de acciones legales y la revocación de credenciales (Offboarding). La expulsión no exime al Participante de obligaciones preexistentes.
3.  **Consecuencias Operativas:** La suspensión o expulsión conlleva la revocación de VCs, baja en el Catálogo y la obligación de ejecutar las acciones de eliminación/revocación requeridas por las políticas aplicables (ej. `delete` duty en ODRL con `elapsedTime`).

### 3.2.5. Disputa y Resolución
1.  **Canales de Reclamación:** Los Participantes deben usar los canales oficiales del CNIE para reclamar o escalar incidencias; el Comité de Dirección actúa como órgano de resolución.
2.  **Jurisdicción y Legislación:** Las controversias se resolverán conforme al ordenamiento jurídico aplicable y a lo acordado en el Acuerdo de Adhesión.

> Nota: Este apartado adapta principios generales de los Términos y Condiciones del *Language Data Space* (LDS Beta) para nuestro contexto, priorizando coherencia con el `Ref. Pliego` y con los estándares técnicos y legales aquí descritos. Cualquier cambio que afecte la interpretación legal del documento deberá revisarse por el Comité de Dirección y por los asesores legales del CNIE.

---

## 3.3. Proceso de Admisión (Onboarding)
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

---

## 3.4. Ciclo de Vida del Intercambio de Datos
Los participantes operan bajo el modelo "Publish-Find-Bind" (Publicar-Buscar-Vincular), ejecutado de forma descentralizada:

### 1. Publicación (Publish)
* El Proveedor registra los metadatos de su activo (título, descripción, idioma, formato) en su Conector local.
* El Conector sincroniza automáticamente estos metadatos con el **Catálogo Central** (Broker) para hacerlos descubribles, sin subir los datos reales `(Ref. Pliego: Apartado 6.1.6.2)`.

### 2. Negociación (Negotiation)
* El Consumidor localiza el activo en el Catálogo y envía una **Solicitud de Contrato** a través de su Conector.
* El Conector del Proveedor evalúa automáticamente si el Consumidor cumple las políticas (ej. "¿Es una universidad?").
* Si se acepta, se firma digitalmente un **Acuerdo de Contrato** que se almacena en ambos conectores `(Ref. Pliego: Apartado 6.1.11.4)`.

### 3. Transferencia y Registro (Transfer & Log)
* Se establece un canal seguro y cifrado punto a punto para la transferencia del activo.
* La transacción se registra (metadatos de la operación, hash del contrato) en el **Centro de Intercambio de Información (Clearing House)** para garantizar la trazabilidad y no repudio `(Ref. Pliego: Apartado 6.1.10)`.

---

## 3.5. Salida del Espacio (Offboarding)
* **Salida Voluntaria:** Mediante notificación a la Autoridad con 30 días de antelación. Implica la revocación de certificados y la baja en el Catálogo.
* **Expulsión Forzosa:** La Autoridad revocará inmediatamente las credenciales de cualquier participante que viole el Acuerdo de Adhesión o comprometa la seguridad del ecosistema.
* **Persistencia:** La salida no exime de las obligaciones de confidencialidad ni de los derechos de uso adquiridos legítimamente antes de la fecha de baja, salvo estipulación contraria en las políticas de uso (Cláusula de Supervivencia).

---

## 3.6. Modelo económico

El EDNEL promueve una economía federada basada en datos, servicios, calidad y confianza, donde la cadena de valor se articula en torno a:

- Provisión de datos lingüísticos y recursos asociados
- Valor añadido mediante IA u otros servicios avanzados
- Intermediación y certificación
- Servicios de confianza y gobernanza

### 3.6.1. Actores Económicos

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

### 3.6.2. Valor en el consumo

El consumo de datos puede ser:

- Gratuito (open data o licencias altruistas)
- Licenciado (uso académico)
- Comercial (uso intensivo o con explotación de derivados)

El modelo de coste será:

- Pay-per-use: Pago por unidad de dato
- Suscripción temporal: Pago por acceso durante un periodo
- Acceso por volumen: Pago según volumen de datos consumidos

### 3.6.3. Servicios de valor añadido

Valor económico de los derivados, especialmente modelos de IA entrenados sobre datos lingüísticos. Incluye:

- Licencias para entrenamiento ???
- Licencias sobre modelos resultantes
- Royalties por uso de derivados en entornos comerciales
- Tasas por distribución de modelos entrenados

### 3.6.4. Mecanismos de remuneración

**Monetización por volumen o tipo de dato**: precios diferenciados según sensibilidad, calidad, curación, granularidad o dominio.

**Prestación de servicios avanzados**: entrenamiento de modelos

**Incentivos**:

El modelo económico incluye incentivos: descuentos, prioridad de acceso, visibilidad en el catálogo.

Estos incentivos buscan fomentar la participación activa para: aportar datos, mejorar calidad, enriquecer terminología...

### 3.6.5. Modelos de licencia y propiedad intelectual

El espacio debe soportar licencias diferenciadas:

**Licencias abiertas**

Datos abiertos, aplicables a corpus públicos o terminología básica.

**Licencias restringidas**

- Solo investigación
- No comercial
- Comercial con límite de uso

**Licencias premium / comerciales**

Servicios avanzados, corpus curados, anotación experta, etc.

### 3.6.6. Servicios gratuitos para participantes

- Adhesión al espacio (onboarding)
- Acceso al catálogo y búsqueda de activos
- Emisión de credenciales verificables
- Acceso al clearing house y sus servicios de trazabilidad
- Soporte técnico básico

### 3.6.7 Método de Pago

El Espacio de Datos no actúa como intermediario financiero, plataforma de pago ni custodio de fondos.
Todos los pagos derivados del acceso a datos, licencias, servicios o productos derivados se realizan fuera del perímetro del Espacio, mediante acuerdos bilaterales o multilaterales entre los participantes implicados.

Los participantes pueden utilizar, de forma externa al Espacio:

- Transferencias bancarias
- Pagos mediante plataformas de pago electrónico
- Facturación directa entre partes
- Otros medios acordados contractualmente

### 3.6.8 Gestión de Transacciones

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


### 3.6.9 Mecanismo de resolución de disputas

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