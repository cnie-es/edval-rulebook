# CAPÍTULO 3: MARCO OPERATIVO Y PROCESOS

**Versión:** 1.0.0  
**Estado:** Borrador para Validación Operativa  
**Referencia del Proyecto:** Expediente 71-7-2.01-0004/2025 (Dimensión Operativa - Procesos)

---

## 3.1. Taxonomía de Roles Operativos
Se establece la siguiente matriz de responsabilidades para la operación diaria del NEL-DS, conforme a la estructura definida en el Pliego `(Ref. Pliego: Apartado 6.1.5)`:

### A. Roles de Gestión (Infraestructura)
1.  **Autoridad del Espacio (CNIE):**
    * Responsable de la gobernanza, admisión (Onboarding) y expulsión (Offboarding) de miembros.
    * Administra las políticas de acceso globales y el catálogo raíz.
2.  **Operador de Servicios Centrales:**
    * Entidad técnica encargada del mantenimiento de los componentes comunes: *Identity Provider*, *Metadata Broker* y *Clearing House* (Registro).
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

## 3.2. Proceso de Admisión (Onboarding)
El proceso para convertirse en Participante del NEL-DS consta de cuatro fases secuenciales obligatorias `(Ref. Pliego: Apartado 6.1.11.2)`:

### Fase 1: Identificación y Registro (KYC)
* El Solicitante completa el formulario de adhesión en el Portal Web del NEL-DS.
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

## 3.3. Ciclo de Vida del Intercambio de Datos
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

## 3.4. Salida del Espacio (Offboarding)
* **Salida Voluntaria:** Mediante notificación a la Autoridad con 30 días de antelación. Implica la revocación de certificados y la baja en el Catálogo.
* **Expulsión Forzosa:** La Autoridad revocará inmediatamente las credenciales de cualquier participante que viole el Acuerdo de Adhesión o comprometa la seguridad del ecosistema.
* **Persistencia:** La salida no exime de las obligaciones de confidencialidad ni de los derechos de uso adquiridos legítimamente antes de la fecha de baja, salvo estipulación contraria en las políticas de uso (Cláusula de Supervivencia).

---