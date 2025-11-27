# CAPÍTULO 2: MARCO LEGAL Y DE CONFIANZA

**Versión:** 1.0.0  
**Estado:** Borrador para Validación Legal  
**Referencia del Proyecto:** Expediente 71-7-2.01-0004/2025 (Dimensión Legal y Normativa)

---

## 2.1. El Acuerdo de Adhesión (Accession Agreement)
La participación en el NEL-DS se formaliza mediante la firma electrónica de un único **Acuerdo de Adhesión** con la Autoridad del Espacio (CNIE).

* **Modelo de Contratación:** Se establece un esquema de "Club" o Ecosistema. Los participantes no firman contratos bilaterales entre sí para unirse, sino que se adhieren a este *Rulebook*.
* **Efecto Vinculante:** La firma implica la aceptación de las reglas operativas, técnicas y legales aquí descritas `(Ref. Pliego: Apartado 6.1.3 - Dimensión Legal)`.
* **Transitividad de la Confianza:** Todo participante acepta reconocer como válida la identidad de cualquier otro participante que haya sido homologado por la Autoridad bajo los mismos criterios.

## 2.2. Soberanía del Dato y Propiedad Intelectual
El principio fundamental del NEL-DS es que la compartición de datos no implica la cesión de la propiedad, sino la licencia de uso bajo condiciones específicas.

* **Titularidad:** El Proveedor de Datos declara y garantiza ser el titular de los derechos de Propiedad Intelectual sobre los activos que publica `(Ref. Pliego: Apartado 5.6)`.
* **No Exclusividad:** La publicación de un activo en el NEL-DS no impide al Proveedor explotarlo por otros canales.
* **Control de Uso (Usage Control):** El Proveedor tiene el derecho inalienable de definir técnicamente:
    1.  **Quién** puede acceder (ej. "Solo Universidades").
    2.  **Para qué** (ej. "Solo investigación", "Entrenamiento de IA").
    3.  **Durante cuánto tiempo** (ej. "30 días").
    *Este control se ejerce mediante el Motor de Políticas del Conector `(Ref. Pliego: Apartado 6.1.8.5)`.

## 2.3. Políticas de Uso Estandarizadas (ODRL)
Para automatizar la negociación de contratos, las reglas legales deben expresarse en lenguaje **ODRL (Open Digital Rights Language)**. Se definen las siguientes políticas marco que los participantes pueden seleccionar:

| ID Política | Nombre Descriptivo        | Descripción Legal (Resumen)                                                                                                                                           | Código ODRL                          |
| :---------- | :------------------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------------------------------- |
| **POL-N1**  | *Solo Entrenamiento IA*   | El Licenciatario puede usar los datos para entrenar modelos (machine learning), pero no puede reconstruir, visualizar ni extraer el contenido original (texto/audio). | `/code/policies/n1_training.json`    |
| **POL-N2**  | *Investigación Académica* | Uso permitido exclusivamente para proyectos de investigación no comercial. Requiere acreditar estatus de Universidad/Centro I+D.                                      | `/code/policies/n2_academic.json`    |
| **POL-N3**  | *Ventana Temporal*        | El derecho de uso expira automáticamente tras un periodo definido (ej. 30 días) desde la descarga.                                                                    | `/code/policies/n3_timelimit.json`   |
| **POL-N4**  | *Atribución Obligatoria*  | Se permite el uso comercial, condicionado a citar la fuente original en los metadatos del producto resultante.                                                        | `/code/policies/n4_attribution.json` |

## 2.4. Protección de Datos y Ética (RGPD/AI Act)
El NEL-DS opera en estricto cumplimiento de la normativa europea y nacional.

* **Datos Personales (RGPD):** * Queda prohibida la publicación de datos personales no anonimizados, salvo base legitimadora expresa `(Ref. Pliego: Apartado 5.18.2)`.
    * Para el **Corpus Oral**, es obligatorio aplicar técnicas de anonimización de voz y supresión de metadatos identificativos antes de su ingesta `(Ref. Pliego: Apartado 6.2.4.3)`.
* **Ética de la IA:** Los participantes se comprometen a utilizar los datos para entrenar modelos que respeten los principios de no discriminación y transparencia de la *AI Act* europea.

## 2.5. Responsabilidad e Indemnización
* **Entre Pares:** El Proveedor es el único responsable de la calidad y legalidad de los datos frente al Consumidor.
* **De la Autoridad:** El CNIE, como operador de la plataforma, no inspecciona los datos y se exime de responsabilidad sobre el contenido intercambiado peer-to-peer, limitando su responsabilidad a la disponibilidad de los servicios centrales (Catálogo, Identidad) `(Ref. Pliego: Apartado 6.1.3 - Dimensión Legal)`.

---