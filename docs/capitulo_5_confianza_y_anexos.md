# CAPÍTULO 5: MARCO DE CONFIANZA (TRUST FRAMEWORK)

**Versión:** 1.0.0  
**Estado:** Borrador para Validación de Seguridad  
**Referencia del Proyecto:** Expediente 71-7-2.01-0004/2025 (Marco de Confianza)

---

## 5.1. Lista de Anclas de Confianza (Trust Anchors)
Para garantizar una identidad federada y segura, el NEL-DS no actúa como único validador, sino que se apoya en una red de **Anclas de Confianza**. Solo se aceptarán Credenciales Verificables (VCs) y certificados emitidos por entidades presentes en la *Trusted List* del espacio `(Ref. Pliego: Apartado 6.1.5 y 6.1.11.3)`.

Se reconocen dos categorías de emisores:
1.  **Proveedores Cualificados (eIDAS):** Prestadores de Servicios de Confianza Cualificados (QTSP) reconocidos en la lista europea (EUTL), válidos para la identificación legal de organizaciones (ej. FNMT, Camerfirma).
2.  **Emisores de Atributos de Negocio:** Entidades delegadas por el CNIE para certificar atributos específicos del sector (ej. "Entidad Académica Acreditada", "Miembro del PERTE").

## 5.2. Gestión de Identidad Descentralizada (eIDAS 2)
El NEL-DS se alinea con la arquitectura de referencia de la Cartera de Identidad Digital de la UE (EUDI Wallet) `(Ref. Pliego: Apartado 5.18.3)`.

* **Identificadores:** Cada participante debe estar identificado mediante un **DID (Decentralized Identifier)** único, resoluble y persistente.
* **Credenciales Verificables (VCs):** Los participantes deben presentar VCs firmadas criptográficamente para acceder a los servicios. El formato de las credenciales seguirá el modelo de datos de **W3C** y **Gaia-X**.

## 5.3. Certificación de Componentes y Software
Para mantener la integridad de la red, no se permite la conexión de software no verificado.

* **Homologación del Conector:** Todo Conector que desee unirse a la red productiva debe superar el **Test de Interoperabilidad** automatizado en el entorno de Sandbox `(Ref. Pliego: Apartado 6.1.11.1)`.
* **Atestación Remota (Remote Attestation):** Los conectores deben implementar mecanismos técnicos que permitan verificar criptográficamente la integridad de su código en tiempo de ejecución, garantizando que no han sido manipulados por el participante para evadir las políticas de uso `(Ref. Pliego: Apartado 6.1.8.7)`.

---

# ANEXO I: MODELO DE ACUERDO DE ADHESIÓN

*(Plantilla normativa para la incorporación de nuevos participantes conforme al Apartado 6.1.11.2 del Pliego)*

**REUNIDOS**

De una parte, el **CENTRO NACIONAL DE INDUSTRIAS DEL ESPAÑOL (CNIE)**, con NIF [----], en calidad de **Autoridad del Espacio de Datos**.

De otra parte, **[RAZÓN SOCIAL DEL PARTICIPANTE]**, con NIF [----], en adelante el **"Participante"**.

**EXPONEN**

Que el Participante ha superado satisfactoriamente el proceso de homologación técnica y desea integrarse en el Espacio de Datos de la Nueva Economía de la Lengua (NEL-DS).

**CLÁUSULAS**

**PRIMERA. OBJETO**
El presente Acuerdo formaliza la adhesión del Participante al NEL-DS y su aceptación íntegra, incondicional y vinculante del **Marco de Gobernanza (Rulebook)** vigente, el cual se incorpora a este contrato por referencia dinámica (incluyendo sus futuras actualizaciones aprobadas por los órganos de gobierno).

**SEGUNDA. REPRESENTACIONES Y GARANTÍAS**
El Participante declara y garantiza que:
1.  Posee la capacidad legal necesaria para suscribir este acuerdo.
2.  Ostenta la titularidad legítima o las licencias necesarias de Propiedad Intelectual sobre los Activos de Datos que publique en el Catálogo.
3.  Su infraestructura técnica (Conector) cumple con los requisitos de seguridad del Esquema Nacional de Seguridad (ENS) aplicables.

**TERCERA. SOBERANÍA Y POLÍTICAS DE USO**
El Participante reconoce que el intercambio de datos se rige por las **Políticas de Uso** (contratos digitales) negociadas técnicamente entre conectores. El Participante se obliga a no eludir, modificar o desactivar los mecanismos técnicos de control de uso implementados en el software certificado.

**CUARTA. RÉGIMEN DE RESPONSABILIDAD**
El Participante asume la responsabilidad exclusiva frente a terceros por la exactitud, legalidad y calidad de los datos que comparta. El Participante exonera a la Autoridad (CNIE) de cualquier responsabilidad derivada del contenido de los datos intercambiados *peer-to-peer*, reconociendo que el CNIE actúa como mero facilitador de la infraestructura de confianza.

**QUINTA. PROTECCIÓN DE DATOS Y CONFIDENCIALIDAD**
Ambas partes se comprometen al estricto cumplimiento del RGPD. El Participante garantiza haber aplicado las técnicas de anonimización requeridas (especialmente en corpus orales) antes de la ingesta de cualquier dato en el espacio.

**SEXTA. VIGENCIA Y TERMINACIÓN**
El presente acuerdo tiene una vigencia indefinida. El Participante podrá resolverlo voluntariamente mediante notificación con 30 días de antelación (Offboarding). La Autoridad podrá resolverlo de inmediato en caso de incumplimiento grave del Rulebook, revocando las credenciales de acceso.

**Y en prueba de conformidad, firman digitalmente el presente documento.**

---