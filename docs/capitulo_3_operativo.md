# CAPÍTULO 3: MARCO OPERATIVO Y PROCESOS

---

## Roles y responsabilidades

### Autoridad de Gobernanza

La Autoridad de Gobernanza es responsable de la operación, supervisión y control del espacio de datos, sin acceso al contenido de los datos de los participantes. Sus funciones incluyen:

* Dirección y administración del espacio de datos
* Operación de los servicios centrales, como el Catálogo Central y el Clearing House
* Supervisión técnica, auditoría y cumplimiento de políticas
* Gestión del portal y de los servicios de soporte
* Definición y actualización del Rulebook
* Gestión del proceso de onboarding y offboarding de participantes
* Facilitación y mediación en la resolución de disputas y reclamaciones entre participantes

### Participante

Cada entidad participante es responsable de:

* Su representación ante el EDNEL
* La generación y gestión de sus usuarios internos
* La operación de su conector
* La publicación y/o consumo de datos y servicios
* El cumplimiento de las políticas y términos del espacio
* La gestión de sus contratos y acuerdos bilaterales

Los roles específicos son: 
* *Proveedor de Datos*: Publica activos de datos en el espacio, define políticas de uso y gestiona solicitudes de acceso.
* *Consumidor de Datos*: Busca, solicita y consume activos de datos publicados por otros participantes.
* *Administrador*: Gestiona la configuración, seguridad y operación del conector local de su organización.

### Usuario Público

El EDNEL podrá ofrecer acceso público al portal y al catálogo en modalidad de consulta, sin autenticación y sin acceso a datos protegidos.

Los permisos concretos asociados a cada rol se definen en el diseño funcional y en la implementación técnica del sistema.


## Adhesión al Espacio de Datos: Derechos y Obligaciones
Los términos de adhesión definen las reglas básicas que rigen la relación entre los Participantes y la Autoridad del Espacio, incluyendo derechos, obligaciones, limitaciones de responsabilidad, y consecuencias por incumplimiento.

### Derechos del Participante
1. Publicar y mantener metadatos en el Catálogo Central para hacer sus activos descubribles.
2. Negociar contratos de uso de datos mediante los conectores.
3. Acceder a los servicios centrales del Espacio (Catálogo, Clearing House, Portal).
4. Recibir soporte técnico y operativo según los SLA definidos.
5. Conservar la propiedad intelectual y derechos sobre sus datos y activos.

### Obligaciones del Participante
1. Cumplir con el Acuerdo de Adhesión y las políticas del Espacio.
2. Mantener la seguridad y confidencialidad de sus credenciales y datos.
3. Mantener su conector operativo y seguro.
4. Publicar metadadatos y politicas de uso conforme a los estándares del Espacio.
5. Aceptar auditorías y revisiones por parte de la Autoridad.

### Limitaciones, Exenciones y Responsabilidades
1.  **Limitación de Responsabilidad:** La Autoridad y los Operadores no asumen responsabilidad por el contenido de los activos publicados por terceros; cada Participante es responsable de su propio contenido y cumplimiento de licencias.
2.  **Indemnización:** Los Participantes se comprometen a indemnizar a la Autoridad por reclamaciones derivadas de su incumplimiento legal o contractual.
3.  **SLA y Soporte:** La disponibilidad y soporte de componentes centrales se describen en SLA; sin embargo, la Autoridad puede limitar servicios ante abuso o compromiso de la seguridad.

### Suspensión y Rescisión
1.  **Suspensión Temporal:** La Autoridad puede suspender temporalmente el acceso de un Participante en caso de riesgo inminente (vulnerabilidades, fraude, compromisos de seguridad) hasta la resolución del incidente.
2.  **Expulsión Definitiva:** Tras un proceso de investigación y notificación, la Autoridad podrá expulsar a un Participante por incumplimiento grave, con reserva de acciones legales y la revocación de credenciales (Offboarding). La expulsión no exime al Participante de obligaciones preexistentes.
3.  **Consecuencias Operativas:** La suspensión o expulsión conlleva la revocación de credenciales, baja en el Catálogo y la obligación de ejecutar las acciones de eliminación/revocación requeridas por las políticas aplicables.

## Proceso de Admisión y Salida (Onboarding / Offboarding)
El EDNEL establece un proceso de incorporación de participantes basado en cuatro fases:

1. Verificación legal y registro.
2. Despliegue del conector.
3. Homologación técnica en entorno de pruebas.
4. Emisión de credenciales y acceso a producción.

De la misma forma, se define un proceso de salida voluntaria o forzosa:
- Revocación de credenciales.
- Baja en los servicios del Espacio de Datos.
- Aplicación de las obligaciones de salida y persistencia de responsabilidades.


## Ciclo de Vida del Intercambio de Datos
Los participantes operan bajo el modelo "Publish-Find-Bind" (Publicar-Buscar-Vincular), ejecutado de forma descentralizada a través de sus conectores locales. El ciclo de vida de un intercambio de datos consta de las siguientes fases:

1. Publicación de metadatos y condiciones de uso.
2. Descubrimiento de activos mediante el Catálogo Central.
3. Negociación de condiciones de uso y contrato.
4. Evaluación de políticas y autorización previa al acceso.
5. Ejecución del acceso o transferencia.
6. Registro de evidencias y trazabilidad en el Clearing House.

La evaluación de políticas y la autorización previa a cada uso del dato constituyen un principio esencial del EDNEL para garantizar la soberanía del dato durante todo su ciclo de vida, y no únicamente en el momento de la formalización del contrato.

## Modelo económico

El EDNEL promueve una economía federada basada en datos, servicios, calidad y confianza, donde la cadena de valor se articula en torno a:

- Provisión de datos y recursos lingüísticos
- Valor añadido mediante IA u otros servicios avanzados
- Intermediación y certificación
- Servicios de confianza y gobernanza

La Autoridad de Gobernanza no participa en las transacciones económicas entre participantes y *no actúa con ánimo de lucro*.

El modelo económico se basa en la remuneración directa entre participantes, sin que el Espacio actúe como intermediario financiero ni custodio de fondos. Este modelo incluyen:

- Tasas de acceso
- Licencias de uso
- Suscripciones
- Ingresos derivados de modelos entrenados o derivados conforme a contratos 

### Modelos de licencia y propiedad intelectual

El espacio debe soportar licencias diferenciadas:

**Licencias abiertas**

Datos abiertos, aplicables a corpus públicos o terminología básica.

**Licencias restringidas**

- Solo investigación
- No comercial
- Comercial con límite de uso

**Licencias comerciales**

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

- *Activa*: se concede acceso a los datos o se activa el servicio conforme a lo acordado. Se inicia el registro de evidencias de uso (logs y trazabilidad).

- *Finalizada*: se cumple el periodo o condiciones de uso y se registra la finalización satisfactoria.

- *Suspendida*: la transacción se suspende por incumplimiento, disputa, incidencia técnica o legal.

- *Cancelada*: la transacción se cancela antes de su finalización, conforme a lo pactado.


### Mecanismo de resolución de disputas

**Fase 1 – Resolución bilateral**

Las partes implicadas intentan resolver la disputa de manera directa, utilizando:

- El contrato bilateral acordado entre ellas
- Las evidencias registradas en el Espacio
- Las referencias externas de pago.

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
