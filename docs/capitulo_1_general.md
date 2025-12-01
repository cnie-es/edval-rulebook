# CAPÍTULO 1: DISPOSICIONES GENERALES

**Versión:** 1.0.0  
**Estado:** Borrador para Aprobación  
**Referencia del Proyecto:** Expediente 71-7-2.01-0004/2025 (Lote 1 - Bloque 1)

---

## 1.1. Definición y Naturaleza del Espacio
El **Espacio de Datos de la Nueva Economía de la Lengua (NEL-DS)** se constituye como una infraestructura digital federada para la compartición voluntaria, soberana y segura de activos lingüísticos y recursos de Inteligencia Artificial `(Ref. Pliego: Apartado 6.1.1)`.

El NEL-DS no opera como un repositorio centralizado de datos, sino como un ecosistema descentralizado construido en torno a componentes comunes ("building blocks") que permiten el intercambio eficaz y fiable entre participantes, garantizando que los datos permanecen bajo el control de sus proveedores `(Ref. Pliego: Apartado 5.5 - Estrategia Europea de Datos)`.

Este marco de gobierno se rige por los principios de **Soberanía del Dato**, **Confianza** y **Generación de Valor**, alineándose con la arquitectura de referencia de IDSA y los principios del Data Spaces Support Centre (DSSC) `(Ref. Pliego: Apartado 6.1.4)`.

## 1.2. Misión y Objetivos Estratégicos
El propósito fundamental del NEL-DS es impulsar la **Nueva Economía de la Lengua**, cumpliendo con los siguientes objetivos críticos:

1.  **Entrenamiento de IA en Español:** Facilitar el acceso masivo a corpus orales y textuales para el entrenamiento de Modelos de Lenguaje (LLMs) y sistemas de Inteligencia Artificial, reduciendo la brecha tecnológica del español `(Ref. Pliego: Apartado 3 - Situación Actual)`.
2.  **Ecosistema Público-Privado:** Habilitar un mercado donde empresas e instituciones puedan compartir y monetizar activos lingüísticos (corpus, modelos, terminologías) bajo reglas claras `(Ref. Pliego: Apartado 4.1)`.
3.  **Interoperabilidad Transfronteriza:** Garantizar la capacidad técnica de federarse con otros espacios de datos europeos (ej. *Language Data Space*) y sectoriales (Turismo, Salud), evitando la creación de silos aislados `(Ref. Pliego: Apartado 6.1.12.1)`.

## 1.3. Autoridad de Gobernanza (Data Space Authority)
La entidad responsable de la operación, mantenimiento y supervisión del cumplimiento de este Rulebook es el **Centro Nacional de Industrias del Español (CNIE)** `(Ref. Pliego: Apartado 3.2)`.

El CNIE actúa con un doble rol en el ecosistema `(Ref. Pliego: Apartado 6.1)`:
1.  **Como Autoridad (Trustee):** Administra el registro de participantes, homologa los conectores y gestiona las políticas de uso globales, actuando como punto neutro de confianza.
2.  **Como Participante:** Puede actuar como proveedor o consumidor de datos dentro del espacio, sujeto a las mismas reglas que el resto de miembros.

## 1.4. Casos de Uso Principales

### 1.4.1. Modelo de Lenguaje en Español

Desarrollar y probar un modelo de lenguaje especializado en código (code model) entrenado específicamente para el idioma español. Este caso de uso se orienta a construir capacidades en IA aplicada a, por ejemplo, el procesamiento de código fuente, documentación técnica y otros artefactos digitales relevantes en español.

El objetivo es preparar y ejecutar una estrategia completa para entrenar, ajustar y validar dicho modelo, aprovechando grandes conjuntos de datos procedentes del corpus oral y definiendo una arquitectura adecuada a las particularidades del español.

El espacio de datos proporciona el marco necesario para:

- acceder al corpus audiovisual

- gobernar su uso mediante políticas

- proporcionar servicios que permitan el entrenamiento efectivo del modelo

- garantizar la protección de derechos

- permitir que distintos actores (centros de investigación, universidades, empresas, administraciones públicas) puedan contribuir o reutilizar recursos.

**Objetivos principales**

a) Desarrollar un modelo fundacional o especializado entrenado con corpus audiovisual en español

Entrenar modelos de IA capaces de:

- Transcribir audio a texto

- Interpretar lenguaje natural hablado

- Analizar contenido audiovisual

- Identificar patrones lingüísticos

b) Garantizar la soberanía lingüística

Asegurar que los paises hispanohablantes disponen de modelos propios, entrenados con datos representativos del español y sus variantes, para evitar dependencia de proveedores extranjeros y promover la innovación local en IA.

c) Desarrollar capacidades en IA multimodal

Combinar audio, vídeo y texto para entrenar modelos multimodales aplicables a:

- Subtitulado automático
- Accesibilidad
- Análisis automático de vídeos
- Educación digital
- Seguridad
- Servicios públicos avanzados

d) Asegurar un uso ético y regulado del corpus audiovisual

Los datos audiovisuales pueden incluir voz, imagen, identidad o expresiones personales, lo que exige:

- Gestión del consentimiento
- Controles de licencia
- Limitaciones de uso
- Requisitos de anonimización o pseudonimización
- Registro de accesos y transformaciones

**Componentes clave del caso de uso**

a) El corpus audiovisual debe incluir:

- Conjuntos de audio: conversaciones, entrevistas, discursos, lecturas, grabaciones espontáneas o controladas.
- Conjuntos de vídeo: escenas reales o grabadas, vídeos pedagógicos, vídeos institucionales, materiales de acceso público o con licencia.
- Diversidad dialectal y sociolingüística.
- Metadatos lingüísticos, acústicos y contextuales.

b) Servicios del espacio de datos utilizados: 

- Catálogo federado para describir el corpus y sus condiciones de acceso.
- Identity & Trust Services para controlar quién puede usar qué parte del corpus.
- Servicios de gobernanza de políticas para definir restricciones de entrenamiento.
- Servicios de trazabilidad para auditar: cuándo se ha accedido a los datos, qué fragmentos se han usado, con qué finalidad (entrenamiento, validación, inferencia).

c) Herramientas y pipelines de IA:

- Preparación del dataset (curación, limpieza, alineación audio-texto)
- Segmentación y normalización
- Extracción de características (audio y vídeo)
- Entrenamiento distribuido
- Validación y benchmarking
- Despliegue para pruebas piloto

**Retos identificados**

- Derechos de autor y derechos de imagen en vídeos y audios.
- Escasez de corpus audiovisuales homogéneos en español, sobre todo anotados.
- Requisitos computacionales elevados para entrenar modelos multimodales.
- Necesidad de políticas claras para el uso ético y legal del corpus audiovisual.

**Aportación al Espacio de Datos**

El caso de uso demuestra:

- La capacidad del espacio de datos para proveer acceso controlado a datasets altamente sensibles (voz, imagen).
- La posibilidad de que distintas entidades colaboren en un modelo común sin exponerse a riesgos regulatorios.
- La importancia de un ecosistema que habilita IA soberana en español, alineada con los principios europeos.
- La creación de activos estratégicos reutilizables para múltiples servicios públicos y privados.

## 1.4. Glosario de Términos (Taxonomía de Roles)
Para la interpretación de este Rulebook y sus Anexos Técnicos, se adoptan las siguientes definiciones estandarizadas conforme al modelo de roles del proyecto `(Ref. Pliego: Apartado 6.1.5)`:

* **Participante:** Entidad legal (empresa, universidad, administración) que ha superado el proceso de admisión y posee una Credencial Verificable válida.
* **Conector (Paquete Conector):** Componente de software certificado que actúa como puerta de enlace para el intercambio soberano de datos. Puede desplegarse en modalidad *On-Premise* (infraestructura del participante) o *SaaS* (nube del CNIE) `(Ref. Pliego: Apartado 6.1.8)`.
* **Proveedor de Datos (Data Provider):** Participante que publica la oferta de un activo de datos en el catálogo. Es el responsable de definir las políticas de uso y garantizar la propiedad intelectual `(Ref. Pliego: Apartado 6.1.5 - Roles)`.
* **Consumidor de Datos (Data Consumer):** Participante que negocia un contrato digital para adquirir derechos de acceso y uso sobre un activo de datos `(Ref. Pliego: Apartado 6.1.5 - Roles)`.
* **Intermediador:** Rol técnico o de negocio que facilita servicios auxiliares (ej. limpieza de corpus, anonimización, certificación) dentro del espacio `(Ref. Pliego: Apartado 6.1.5 - Roles)`.
* **Activo de Datos:** Cualquier recurso digital (corpus texto/audio, modelo algorítmico, léxico) ofrecido en el catálogo bajo condiciones contractuales específicas.

---