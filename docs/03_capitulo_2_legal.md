# 3. MARCO LEGAL Y DE CONFIANZA

---

## 3.1.El Acuerdo de Adhesión (Accession Agreement)
La participación en el EDNEL se formaliza mediante la firma electrónica de un único **Acuerdo de Adhesión** con la Autoridad del Espacio (CNIE).

* **Modelo de Contratación:** Se establece un esquema de "Club" o Ecosistema. Los participantes no firman contratos bilaterales entre sí para unirse, sino que se adhieren a este *Rulebook*.
* **Efecto Vinculante:** La firma implica la aceptación de las reglas operativas, técnicas y legales aquí descritas.
* **Transitividad de la Confianza:** Todo participante acepta reconocer como válida la identidad de cualquier otro participante que haya sido homologado por la Autoridad bajo los mismos criterios.

El acuerdo debe contemplar los elementos que se describen a continuación:

**Identificación del participante y su rol en el ecosistema**

* La identidad jurídica del participante.
* Su naturaleza (empresa privada, organismo público, universidad, centro de investigación, proveedor tecnológico, etc.).
* El rol que desempeñará dentro del espacio de datos, según las categorías previstas en el modelo: proveedor de datos, consumidor de datos, intermediario, proveedor de servicios, etc.
Cada rol implica obligaciones específicas en materia de provisión, uso, trazabilidad, seguridad y calidad del dato.

**Aceptación del marco de gobernanza**

El participante debe aceptar expresamente:

* Las políticas y reglas de gobernanza del espacio.
* Los mecanismos de supervisión y control establecidos.
* Los procedimientos operativos comunes.
* Las reglas de participación y coordinación entre actores.
* La adhesión a los principios de interoperabilidad, confianza, transparencia y no discriminación.
La aceptación implica asumir los estándares técnicos, semánticos, operativos y legales definidos para garantizar el funcionamiento harmonizado del espacio.

**Condiciones de uso y acceso a los datos**

El acuerdo define:

* Los datos accesibles para el participante
* Las finalidades permitidas
* Los límites de reutilización y redistribución
* Las prohibiciones (como la reidentificación o usos no autorizados)

**Responsabilidades del participante**

* Cumplir los requisitos técnicos y de seguridad,
* Respetar los metadatos, licencias y reglas definidas por los proveedores
* Garantizar calidad, integridad y veracidad de los datos que aporte
* Mantener compatibilidad con los servicios y estándares del ecosistema
* Colaborar en auditorías y supervisiones.

**Protección de datos, privacidad y consentimiento**

El participante se compromete a:

* Aplicar principios de privacidad por diseño
* Cumplir el RGPD y normativa europea asociada
* Gestionar correctamente el consentimiento digital cuando aplique
* Proteger los datos personales y reportar incidentes de forma inmediata

**Interoperabilidad y estándares técnicos**

La adhesión implica respetar:

* Los modelos semánticos comunes
* Las APIs y protocolos oficiales
* Los servicios de confianza y trazabilidad
* Los requisitos de interoperabilidad con otros espacios europeos

**Supervisión, control y auditoría**

La entidad acepta:

* Monitorización continua de sus operaciones
* Auditorías periódicas técnicas y legales
* Revisión de evidencias de uso
* Posibles medidas de corrección, suspensión o limitación en caso de incumplimiento

**Condiciones de incorporación, permanencia y salida**

El acuerdo establece:

* El proceso de adhesión
* Las reglas de permanencia
* Los motivos de suspensión o expulsión
* Las obligaciones tras la salida (eliminación de datos, no uso indebido, conservación de evidencias cuando proceda).

[Términos y condiciones](capitulo_5_anexo3_concidiones.md)

## 3.2. Soberanía del Dato y Propiedad Intelectual

El principio fundamental del EDNEL es que la compartición de datos no implica la cesión de la propiedad, sino la licencia de uso bajo condiciones específicas.

Los participantes reconocen y aceptan que la **soberanía del dato** corresponde al Data Owner que aporta el activo. Dicho propietario mantiene el control sobre: 

1. La localización física o lógica del dato 
2. Las políticas de acceso y uso
3. Las condiciones contractuales y de licencia aplicables 
4. La revocación de permisos

La aportación de datos al Espacio no supone transferencia de los **derechos de propiedad intelectual** subyacentes, salvo que se acuerde expresamente por escrito. El proveedor declarará la titularidad y otorgará una licencia de uso que podrá ser:

* **Abierta**: especificando la licencia
* **Condicionada**: uso restringido para investigación, no comercial, etc.
* **De pago (comercial)**: la licencia incluirá reglas sobre redistribución y la explotación de derivados (incluyendo modelos entrenados).

**No Exclusividad:** La publicación de un activo en el EDNEL no impide al Proveedor explotarlo por otros canales.

## 3.3. Publicación de Activos

Cada activo (corpus, vocabulario, modelo o herramienta/servicio) publicado en el catálogo debe incluir metadatos obligatorios que contengan: identificador, titular,la **política de uso** (*conditions-of-use*), la licencia aplicable, esquema semántico, y contrato o template asociado. La ausencia de metadatos impide la publicación.

## 3.4. Políticas de Uso y Licencias.
Cada activo publicado en el catálogo debe incluir una **pólitica de uso** que defina los derechos y obligaciones del consumidor respecto al activo. Esta política se asocia al activo mediante metadatos y se aplica automáticamente durante el proceso de intercambio peer-to-peer, a través del conector del proveedor.

La política se interpreta y se aplica antes de permitir cualquier transferencia o acceso. El control se ejerce mediante el *Motor de Políticas del Conector*, que permite expresar y hacer cumplir las políticas del Data Owner sin necesidad de centralizar los datos.

**Pólitica de uso** El Proveedor tiene el derecho inalienable de definir técnicamente:

1. **Quién** puede acceder (ej. "Solo Universidades").
2. **Para qué** (ej. "Solo investigación", "Entrenamiento de IA", "Atribución obligatoria", "Prohibido uso comercial").
3. **Durante cuánto tiempo** (ej. "30 días").

### 3.4.1. Políticas de Uso Estandarizadas (ODRL)
Para automatizar la negociación de contratos, las reglas legales deben expresarse en lenguaje **ODRL (Open Digital Rights Language)**.

## 3.5. Derechos sobre Derivados y Modelos

Salvo pacto en contrario, los resultados derivados (modelos, índices, anotaciones) serán propiedad del desarrollador del derivado, pudiendo su explotación estar sujeta a obligaciones contractuales frente al proveedor original (por ejemplo, remuneración, atribución, limitaciones comerciales). Siempre que el derivado contenga datos personales, sus responsables deberán respetar las obligaciones de protección de datos que correspondan.

## 3.6. Protección de Datos y Ética (RGPD/AI Act)
El EDNEL opera en estricto cumplimiento de la normativa europea y nacional.

Para activos que incluyan datos personales o sensibles, el proveedor y el consumidor deberán aplicar medidas de privacidad por diseño y por defecto; la Autoridad podrá imponer técnicas PET (anonimización, pseudonimización, enclaves seguros, procesamiento in-situ) y limitaciones de exportación de datos si procede

* **Datos Personales (RGPD):** 
    *  Queda prohibida la publicación de datos personales no anonimizados, salvo base legitimadora expresa.
    * Para el **Corpus Oral**, es obligatorio aplicar técnicas de anonimización de voz y supresión de metadatos identificativos antes de su ingesta.
    * **Ética de la IA:** Los participantes se comprometen a utilizar los datos para entrenar modelos que respeten los principios de no discriminación y transparencia de la *AI Act* europea.

## 3.7. Responsabilidad e Indemnización
* **Entre Pares:** El proveedor garantiza que ostenta los derechos necesarios sobre los datos que aporta y exime a otros participantes de reclamaciones por infracción de IPR debidas a la titularidad de esos datos; en tal caso, el proveedor asumirá responsabilidad e indemnizará a las partes afectadas, salvo que el contrato de asset indique limitaciones específicas.

* **De la Autoridad:** El CNIE, como operador de la plataforma, no inspecciona los datos y se exime de responsabilidad sobre el contenido intercambiado peer-to-peer, limitando su responsabilidad a la disponibilidad de los servicios centrales (Catálogo, Identidad).

## 3.8. Legistación Aplicable al Espacio de Datos (Propuesta a espera de hablar con Legal)

### 3.8.1.Normativa europea de obligado cumplimiento

**3.8.1.1. Reglamento General de Protección de Datos (GDPR – Reglamento (UE) 2016/679)**

Marco fundamental para cualquier flujo de **datos personales** dentro del espacio. Regula la base jurídica de tratamiento, derechos de los interesados, responsabilidades del responsable y encargado, medidas de seguridad, transferencias internacionales y los principios de privacidad desde el diseño y por defecto.

**3.8.1.2. Data Act: Reglamento (UE) 2023/28554 del Parlamento Europeo y del Consejo, de 13 de diciembre de 2023, sobre normas armonizadas para un acceso justo a los datos y su utilización, que modifica el Reglamento (UE) 2017/2394 y la Directiva (UE) 2020/1828 (Reglamento de datos)**

Establece derechos y obligaciones en torno al acceso, compartición y reutilización de datos generados por usuarios y sistemas. Relevante para:

* Acuerdos contractuales entre proveedores y consumidores
* Condiciones de portabilidad
* Compartición B2B y B2G
* Interoperabilidad entre servicios cloud y espacios de datos

**3.8.1.3 Reglamento (UE) 2024/1183 del Parlamento y del Consejo Europeo de 11 de abril de 2024, establecimiento del marco europeo de identidad digital (eIDAS 2.0)**

Proporciona el marco común seguro e interoperable de identidad electrónica y servicios de confianza, que busca permitir a personas físicas y jurídicas participar de forma segura en la sociedad digital.


**3.8.1.4. Data Governance Act (Reglamento (UE) 2022/868)**

Aplica directamente al **modelo organizativo** del espacio de datos, especialmente en lo relativo a:

* Servicios de intermediación de datos
* Neutralidad, transparencia y requisitos de certificación de intermediarios
* Mecanismos de altruismo de datos
* Reutilización de datos públicos protegidos


**3.8.1.5. Directiva sobre Derechos de Autor en el Mercado Único Digital (DSM – Directiva 2019/790)**

Especialmente relevante para:

* Text and Data Mining (TDM), tanto con fines de investigación como comerciales
* Gestión de corpus y materiales sujetos a derechos de autor
* Opt-outs de titulares
* Derechos sobre obras derivadas y reutilización de contenido protegido

**3.8.1.6. Reglamento de Inteligencia Artificial (AI Act – 2024)**

Aplicable a cualquier sistema de IA entrenado o desplegado mediante datos del espacio.
Incluye requisitos sobre:

* Calidad y gobernanza de datos de entrenamiento
* Transparencia
* Riesgos elevados
* Obligaciones del proveedor, usuario y distribuidor de IA generativa o de propósito general

**3.8.1.7. Directiva 2002/58/CE del Parlamento Europeo y del Consejo, de 12 de julio de 2002, relativa al tratamiento de datos personales y a la protección de intimidad en el sector de las comunicaciones electrónicas (Directiva sobre la privacidad y las comunicaciones electrónicas)**

Aplicación en comunicaciones electrónicas, metadatos de comunicaciones y herramientas de captura o transmisión de contenido lingüístico, de voz o vídeo.
Armoniza las disposiciones de los Estados miembros necesarias para garantizar un nivel equvalente de protección de las libertades y de los derechos fundamentales y, en particular, del derecho a la intimidad, en lo querespecta al tratamiendo de los datos personales en el sector de las comunicaciones electrónicas, así como la libe circulacioó de dichos datos y de los equipos y servicios de comunicaciones electrónicas de la Unión.

**3.8.1.8. Reglamento de Ciberseguridad (Cybersecurity Act – Reglamento 2019/881)**

Establece el marco europeo de ciberseguridad y certificación de productos y servicios TIC que soportan l infraestructura del espacio de datos, reforzanco la gestión de riesgos, la confianza entre los participantes, la interoperabilidad transfronteriza y la seguridad del intercambio de datos.

**3.8.1.9. Directiva NIS2 (Directiva (UE) 2022/2555)**

Norma aplicable a entidades esenciales o importantes, que trata de garantizar un elevado nivel común de ciberseguridad en toda la Unión Europea, mediante el establecimiento de medidas de gestión de riesgos de ciberseguridad y obligaciones de notificación de incidentes, para entidades esenciales e importantes, con el fin de proteger las redes y sistemas de información, y asegurar la continuidad de los servicios críticos.

**3.8.1.10. Directiva de Datos Abiertos (Directiva (UE) 2019/1024)**

Obligatoria cuando participen administraciones públicas que aporten recursos lingüísticos, terminológicos o documentales.
Establece las reglas básicas para la puesta a disposición, el acceso y la reutilización de la información del sector público, imponiendo principios de transpariencia, acceso no discriminatorio, uso de formatos abiertos e interoperables, asi como la disponibildad de determinados conjuntos de datos de alto valor.

### 3.8.2. Legislación española aplicable. Normativa española de servicios digitales y ciberseguridad

**3.8.2.1. Ley Orgánica de Protección de Datos y Garantía de Derechos Digitales (LO 3/2018)**

Complementa el GDPR en ámbitos como:

* Tratamiento de datos biométricos (voz, imagen)
* Derechos digitales
* Datos especialmente protegidos
* Tratamiento por entidades públicas

**3.8.2.2. Texto Refundido de la Ley de Propiedad Intelectual (TRLPI – Real Decreto Legislativo 1/1996)**

Esencial para regular la propiedad intelectual sobre:

* Corpus textuales
* Grabaciones de audio y vídeo
* Anotaciones lingüísticas
* Bases de datos
* Recursos terminológicos
* Modelos derivados entrenados

**3.8.2.3. Ley 37/2007, de 16 de noviembre sobre reutilización del la información del sector público (RISP)**

Aplica a datasets aportados por administraciones públicas o entidades del sector público.
A través de esta ley, se regulan las condiciones en las que la información elaborada o custodiada por las administraciones públicas y entidades del sector público puede ser reutilizada, garantizando el acceso no discriminatorio, la transparencia y la interoperabilidad, y fomentando la innovación, el desarrollo económico y la creación de valor a partir de los datos públicos.

**3.8.2.4. Real Decreto 4/2010, de 8 de enero, por el que se regula el Esquema Nacional de Interoperabilidad (ENI) en el ámbito de la Administración Electrónica, y sus normas técnicas de interoperabilidad**

Establece los principios y directrices de interoperabilidad en el intercambio, reutilización y conservación de la información electrónica por parte de las Administraciones Públicas.

**3.8.2.5. Real Decreto 311/2022, de 3 de mayo, por el que regula el Esquema Nacional de Seguridad (ENS)**
Tiene como objetivo asegurar el acceso, la confidencialidad, la integridad, la trazabilidad, la autenticidad, la disponibilidad y la conservación de los datos, la información y los servicios utilizados por medios electrónicos en el ejercicio de las competencias de las entidades obligadas. El ENS resulta de aplicación cuando intervienen Administraciones Públicas o entidades del sector público, o cuando los sistemas que lo soportan tratan información o prestan servicios para dichas entidades, afectando directamente al diseño, la arquitectura, la operación y la gobernanza.

**3.8.2.6. Ley 34/2002, de 11 de julio, de servicios de la sociedad de la información y de comercio electrónico**

Regulación del régimen jurídico de los servicios de la sociedad de la información y de la contratación por vía electrónica, en lo referente a las obligaciones de los prestadores de servicios incluidos los que actúan como intermediarios en la transmisión de contenidos por las redes de telecomunicaciones, las comunicaciones comerciales por vía electrónica, la información previa y posterior a la celebración de contratos electrónicos, las condiciones relativas a su validez y eficacia y el régimen sancionador aplicable a los prestadores de servicios de la sociedad de la información.


### 3.8.3. Marcos técnicos y de gobernanza internacionales aplicables

*  **LDS Rulebook** (Language Data Space): asegura la interoperabilidad y confianza entre los dos espacios de datos lingüísticos.
*  **GAIA-X Trust Framework** y **GAIA-X Compliance Rules**: marco europeo de identidad, confianza, soberanía del dato, transparencia y conformidad.
*  **DSSC – Data Spaces Support Centre Blueprint**
*  Centro Criptológico Nacional (CCN-CERT). **Guías CCN-STIC – Serie 800**: Esquema Nacional de Seguridad (ENS). CCN-CNI
* **Especificación UNE 0087**: Definición y caracterización de los Espacios de Datos
* **ISO 24622-1:2015** Gestión de recursos del lenguaje — Infraestructura de Metadatos Componentes (CMDI)
* **ISO/IEC 38507**:2022: Tecnologías de la información — Gobernanza de TI — Implicaciones de gobernanza del uso de inteligencia artificial por parte de las organizaciones
* **ISO/IEC 42001:2023**: Sistema de gestión de la inteligencia artificial (SGIA)
* **UNE-ISO 24495-1:2024**: Lenguaje claro. Parte 1: Principios rectores y directrices.
