# CAPÍTULO 2: MARCO LEGAL Y DE CONFIANZA
---

## 2.1. El Acuerdo de Adhesión (Accession Agreement)
La participación en el EDNEL se formaliza mediante la firma electrónica de un único **Acuerdo de Adhesión** con la Autoridad del Espacio (CNIE).

* **Modelo de Contratación:** Se establece un esquema de "Club" o Ecosistema. Los participantes no firman contratos bilaterales entre sí para unirse, sino que se adhieren a este *Rulebook*.
* **Efecto Vinculante:** La firma implica la aceptación de las reglas operativas, técnicas y legales aquí descritas `(Ref. Pliego: Apartado 6.1.3 - Dimensión Legal)`.
* **Transitividad de la Confianza:** Todo participante acepta reconocer como válida la identidad de cualquier otro participante que haya sido homologado por la Autoridad bajo los mismos criterios.

El acuerdo debe contemplar los elementos que se describen a continuación:

**Identificación del participante y su rol en el ecosistema**

- La identidad jurídica del participante.
- Su naturaleza (empresa privada, organismo público, universidad, centro de investigación, proveedor tecnológico, etc.).
- El rol que desempeñará dentro del espacio de datos, según las categorías previstas en el modelo: proveedor de datos, consumidor de datos, intermediario, proveedor de servicios, etc.
Cada rol implica obligaciones específicas en materia de provisión, uso, trazabilidad, seguridad y calidad del dato.

**Aceptación del marco de gobernanza**

El participante debe aceptar expresamente:
- Las políticas y reglas de gobernanza del espacio.
- Los mecanismos de supervisión y control establecidos.
- Los procedimientos operativos comunes.
- Las reglas de participación y coordinación entre actores.
- La adhesión a los principios de interoperabilidad, confianza, transparencia y no discriminación.

La aceptación implica asumir los estándares técnicos, semánticos, operativos y legales definidos para garantizar el funcionamiento harmonizado del espacio.

**Condiciones de uso y acceso a los datos**

El acuerdo define:

- Los datos accesibles para el participante
- Las finalidades permitidas
- Los límites de reutilización y redistribución
- Las prohibiciones (como la reidentificación o usos no autorizados)

**Responsabilidades del participante**

- Cumplir los requisitos técnicos y de seguridad,
- Respetar los metadatos, licencias y reglas definidas por los proveedores
- Garantizar calidad, integridad y veracidad de los datos que aporte
- Mantener compatibilidad con los servicios y estándares del ecosistema
- Colaborar en auditorías y supervisiones.

**Protección de datos, privacidad y consentimiento**

El participante se compromete a:
- Aplicar principios de privacidad por diseño
- Cumplir el RGPD y normativa europea asociada
- Gestionar correctamente el consentimiento digital cuando aplique
- Proteger los datos personales y reportar incidentes de forma inmediata

**Interoperabilidad y estándares técnicos**

La adhesión implica respetar:
- Los modelos semánticos comunes
- Las APIs y protocolos oficiales
- Los servicios de confianza y trazabilidad
- Los requisitos de interoperabilidad con otros espacios europeos

**Supervisión, control y auditoría**

La entidad acepta:
- Monitorización continua de sus operaciones
- Auditorías periódicas técnicas y legales
- Revisión de evidencias de uso
- Posibles medidas de corrección, suspensión o limitación en caso de incumplimiento

**Condiciones de incorporación, permanencia y salida**

El acuerdo establece:
- El proceso de adhesión
- Las reglas de permanencia
- Los motivos de suspensión o expulsión
- Las obligaciones tras la salida (eliminación de datos, no uso indebido, conservación de evidencias cuando proceda).

[Contrato de adhesión](capitulo_5_confianza_y_anexos.md#4-el-acuerdo-de-adhesi%C3%B3n-accession-agreement)

## 2.2. Soberanía del Dato y Propiedad Intelectual

El principio fundamental del EDNEL es que la compartición de datos no implica la cesión de la propiedad, sino la licencia de uso bajo condiciones específicas.

Los participantes reconocen y aceptan que la **soberanía del dato** corresponde al Data Owner que aporta el activo. Dicho propietario mantiene el control sobre: 
1) La localización física o lógica del dato 
2) Las políticas de acceso y uso
3) Las condiciones contractuales y de licencia aplicables 
4) La revocación de permisos

La aportación de datos al Espacio no supone transferencia de los **derechos de propiedad intelectual** subyacentes, salvo que se acuerde expresamente por escrito. El proveedor declarará la titularidad y otorgará una licencia de uso que podrá ser: 
- **Abierta**: especificando la licencia
- **Condicionada**: uso restringido para investigación, no comercial, etc.
- **De pago (comercial)**: la licencia incluirá reglas sobre redistribución y la explotación de derivados (incluyendo modelos entrenados).

**No Exclusividad:** La publicación de un activo en el EDNEL no impide al Proveedor explotarlo por otros canales.

## 2.3. Publicación de Activos

Cada activo (corpus, vocabulario, modelo o herramienta/servicio) publicado en el catálogo debe incluir metadatos obligatorios que contengan: identificador, titular,la **política de uso** (*conditions-of-use*), la licencia aplicable, esquema semántico, y contrato o template asociado. La ausencia de metadatos impide la publicación.

## 2.4. Políticas de Uso y Licencias.

Cada activo publicado en el catálogo debe incluir una **pólitica de uso** que defina los derechos y obligaciones del consumidor respecto al activo. Esta política se asocia al activo mediante metadatos y se aplica automáticamente durante el proceso de intercambio peer-to-peer, a través del conector del proveedor.

La política se interpreta y se aplica antes de permitir cualquier transferencia o acceso. El control se ejerce mediante el *Motor de Políticas del Conector*, que permite expresar y hacer cumplir las políticas del Data Owner sin necesidad de centralizar los datos.

**Pólitica de uso** El Proveedor tiene el derecho inalienable de definir técnicamente:
1. **Quién** puede acceder (ej. "Solo Universidades").
2. **Para qué** (ej. "Solo investigación", "Entrenamiento de IA", "Atribución obligatoria", "Prohibido uso comercial").
3. **Durante cuánto tiempo** (ej. "30 días").

### 2.4.1. Políticas de Uso Estandarizadas (ODRL)
Para automatizar la negociación de contratos, las reglas legales deben expresarse en lenguaje **ODRL (Open Digital Rights Language)**. Se definen las siguientes políticas marco que los participantes pueden seleccionar:

| ID Política | Nombre Descriptivo        | Descripción Legal (Resumen)                                                                                                                                           | Código ODRL                          |
| :---------- | :------------------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------------------------------- |
| **POL-N1**  | *Solo Entrenamiento IA*   | El Licenciatario puede usar los datos para entrenar modelos (machine learning), pero no puede reconstruir, visualizar ni extraer el contenido original (texto/audio). | `/code/policies/n1_training.json`    |
| **POL-N2**  | *Investigación Académica* | Uso permitido exclusivamente para proyectos de investigación no comercial. Requiere acreditar estatus de Universidad/Centro I+D.                                      | `/code/policies/n2_academic.json`    |
| **POL-N3**  | *Ventana Temporal*        | El derecho de uso expira automáticamente tras un periodo definido (ej. 30 días) desde la descarga.                                                                    | `/code/policies/n3_timelimit.json`   |
| **POL-N4**  | *Atribución Obligatoria*  | Se permite el uso comercial, condicionado a citar la fuente original en los metadatos del producto resultante.                                                        | `/code/policies/n4_attribution.json` |

## 2.5. Derechos sobre Derivados y Modelos

Salvo pacto en contrario, los resultados derivados (modelos, índices, anotaciones) serán propiedad del desarrollador del derivado, pudiendo su explotación estar sujeta a obligaciones contractuales frente al proveedor original (por ejemplo, remuneración, atribución, limitaciones comerciales). Siempre que el derivado contenga datos personales, sus responsables deberán respetar las obligaciones de protección de datos que correspondan.

## 2.6. Protección de Datos y Ética (RGPD/AI Act)
El EDNEL opera en estricto cumplimiento de la normativa europea y nacional.

Para activos que incluyan datos personales o sensibles, el proveedor y el consumidor deberán aplicar medidas de privacidad por diseño y por defecto; la Autoridad podrá imponer técnicas PET (anonimización, pseudonimización, enclaves seguros, procesamiento in-situ) y limitaciones de exportación de datos si procede

* **Datos Personales (RGPD):** * Queda prohibida la publicación de datos personales no anonimizados, salvo base legitimadora expresa `(Ref. Pliego: Apartado 5.18.2)`.
    * Para el **Corpus Oral**, es obligatorio aplicar técnicas de anonimización de voz y supresión de metadatos identificativos antes de su ingesta `(Ref. Pliego: Apartado 6.2.4.3)`.
* **Ética de la IA:** Los participantes se comprometen a utilizar los datos para entrenar modelos que respeten los principios de no discriminación y transparencia de la *AI Act* europea.

## 2.7. Responsabilidad e Indemnización
* **Entre Pares:** El proveedor garantiza que ostenta los derechos necesarios sobre los datos que aporta y exime a otros participantes de reclamaciones por infracción de IPR debidas a la titularidad de esos datos; en tal caso, el proveedor asumirá responsabilidad e indemnizará a las partes afectadas, salvo que el contrato de asset indique limitaciones específicas.

* **De la Autoridad:** El CNIE, como operador de la plataforma, no inspecciona los datos y se exime de responsabilidad sobre el contenido intercambiado peer-to-peer, limitando su responsabilidad a la disponibilidad de los servicios centrales (Catálogo, Identidad) `(Ref. Pliego: Apartado 6.1.3 - Dimensión Legal)`.

## 2.8. Legistación Aplicable al Espacio de Datos (Propuesta a espera de hablar con Legal)

### 2.8.1. Normativa europea de obligado cumplimiento

#### Reglamento General de Protección de Datos (GDPR – Reglamento (UE) 2016/679)

Marco fundamental para cualquier flujo de **datos personales** dentro del espacio. Regula la base jurídica de tratamiento, derechos de los interesados, responsabilidades del responsable y encargado, medidas de seguridad, transferencias internacionales y los principios de privacidad desde el diseño y por defecto.

#### Data Governance Act (Reglamento (UE) 2022/868)

Aplica directamente al **modelo organizativo** del espacio de datos, especialmente en lo relativo a:

- Servicios de intermediación de datos
- Neutralidad, transparencia y requisitos de certificación de intermediarios
- Mecanismos de altruismo de datos
- Reutilización de datos públicos protegidos

#### Data Act (Reglamento (UE) 2023/2854)

Establece derechos y obligaciones en torno al acceso, compartición y reutilización de datos generados por usuarios y sistemas. Relevante para:

- Acuerdos contractuales entre proveedores y consumidores
- Condiciones de portabilidad
- Compartición B2B y B2G
- Interoperabilidad entre servicios cloud y espacios de datos

#### Directiva sobre Derechos de Autor en el Mercado Único Digital (DSM – Directiva 2019/790)

Especialmente relevante para:

- Text and Data Mining (TDM), tanto con fines de investigación como comerciales
- Gestión de corpus y materiales sujetos a derechos de autor
- Opt-outs de titulares
- Derechos sobre obras derivadas y reutilización de contenido protegido

#### Reglamento de Inteligencia Artificial (AI Act – 2024)

Aplicable a cualquier sistema de IA entrenado o desplegado mediante datos del espacio.
Incluye requisitos sobre:
- Calidad y gobernanza de datos de entrenamiento
- Transparencia
- Riesgos elevados
- Obligaciones del proveedor, usuario y distribuidor de IA generativa o de propósito general

#### Directiva ePrivacy / futura ePrivacy Regulation

Aplicación en comunicaciones electrónicas, metadatos de comunicaciones y herramientas de captura o transmisión de contenido lingüístico, de voz o vídeo.

#### Reglamento de Ciberseguridad (Cybersecurity Act – Reglamento 2019/881)

Base para la certificación de componentes técnicos, servicios cloud y conectores utilizados por el espacio de datos.

#### Directiva NIS2 (Directiva (UE) 2022/2555)

Aplicable a entidades esenciales o importantes involucradas en la infraestructura del espacio. Incluye obligaciones de gestión de riesgos y notificación de incidentes.

#### Directiva de Datos Abiertos (Directiva (UE) 2019/1024)

Obligatoria cuando participen administraciones públicas que aporten recursos lingüísticos, terminológicos o documentales.

### 2.8.2. Legislación española aplicable

#### Ley Orgánica de Protección de Datos y Garantía de Derechos Digitales (LO 3/2018)

Complementa el GDPR en ámbitos como:

- Tratamiento de datos biométricos (voz, imagen)
- Derechos digitales
- Datos especialmente protegidos
- Tratamiento por entidades públicas

#### Texto Refundido de la Ley de Propiedad Intelectual (TRLPI – Real Decreto Legislativo 1/1996)

Esencial para regular la propiedad intelectual sobre:

- Corpus textuales
- Grabaciones de audio y vídeo
- Anotaciones lingüísticas
- Bases de datos
- Recursos terminológicos
- Modelos derivados entrenados

#### Ley de Reutilización de la Información del Sector Público (RISP)

Aplica a datasets aportados por administraciones públicas o entidades del sector público.

#### Normativa española de servicios digitales y ciberseguridad

Aplica según el tipo de participante e infraestructura utilizada.

### 2.8.3 Marcos técnicos y de gobernanza internacionales aplicables

-  LDS Rulebook (Language Data Space): asegura la interoperabilidad y confianza entre los dos espacios de datos lingüísticos.
-  IDSA Rulebook / International Data Spaces
-  DSSC – Data Spaces Support Centre Blueprint

---

Fuentes:

Pliego

LDS Architecture & Components (Common European Language Data Space). 

European Language Data Space — About / Principles. 

IDSA — IDSA Rulebook (principios y estructura de rulebook). 

Sitra — Rulebook model / IPR Q&A (guidance sobre IPR en data spaces). 

Datos.gob.es — nota sobre LDS operativa y soberanía.**

---