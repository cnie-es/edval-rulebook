# ANEXO II: MARCO DE CONFIANZA (TRUST FRAMEWORK)

---

## Lista de Anclas de Confianza (Trust Anchors)
Para garantizar una identidad federada y segura, el EDNEL no actúa como único validador, sino que se apoya en una red de **Anclas de Confianza**. 

Se reconocen dos categorías de emisores:

1.  **Proveedores Cualificados (eIDAS):** Prestadores de Servicios de Confianza Cualificados (QTSP) reconocidos en la lista europea (EUTL), válidos para la identificación legal de organizaciones (ej. FNMT, Camerfirma).
2.  **Emisores de Atributos de Negocio:** Entidades delegadas por el CNIE para certificar atributos específicos del sector (ej. "Entidad Académica Acreditada", "Miembro del PERTE").

## Gestión de Identidad Descentralizada (eIDAS 2)
El EDNEL se alinea con la arquitectura de referencia de la Cartera de Identidad Digital de la UE (EUDI Wallet).

* **Identificadores:** Cada participante debe estar identificado mediante un **DID (Decentralized Identifier)** único, resoluble y persistente.

## Certificación de Componentes y Software
Para mantener la integridad de la red, no se permite la conexión de software no verificado.

* **Homologación del Conector:** Todo Conector que desee unirse a la red productiva debe superar el **Test de Interoperabilidad** automatizado en el entorno de Sandbox.
* **Atestación Remota (Remote Attestation):** Los conectores deben implementar mecanismos técnicos que permitan verificar criptográficamente la integridad de su código en tiempo de ejecución, garantizando que no han sido manipulados por el participante para evadir las políticas de uso.
