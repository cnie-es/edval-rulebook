# ANEXO II: MARCO DE CONFIANZA (TRUST FRAMEWORK)

---

## Lista de Anclas de Confianza (Trust Anchors)
Para garantizar una identidad federada y segura, el EDNEL no actúa como único validador, sino que se apoya en una red de **Anclas de Confianza**. Solo se aceptarán Credenciales Verificables (VCs) y certificados emitidos por entidades presentes en la *Trusted List* del espacio `(Ref. Pliego: Apartado 6.1.5 y 6.1.11.3)`.

Se reconocen dos categorías de emisores:
1.  **Proveedores Cualificados (eIDAS):** Prestadores de Servicios de Confianza Cualificados (QTSP) reconocidos en la lista europea (EUTL), válidos para la identificación legal de organizaciones (ej. FNMT, Camerfirma).
2.  **Emisores de Atributos de Negocio:** Entidades delegadas por el CNIE para certificar atributos específicos del sector (ej. "Entidad Académica Acreditada", "Miembro del PERTE").

## Gestión de Identidad Descentralizada (eIDAS 2)
El EDNEL se alinea con la arquitectura de referencia de la Cartera de Identidad Digital de la UE (EUDI Wallet) `(Ref. Pliego: Apartado 5.18.3)`.

* **Identificadores:** Cada participante debe estar identificado mediante un **DID (Decentralized Identifier)** único, resoluble y persistente.
* **Credenciales Verificables (VCs):** Los participantes deben presentar VCs firmadas criptográficamente para acceder a los servicios. El formato de las credenciales seguirá el modelo de datos de **W3C** y **Gaia-X**.

## Certificación de Componentes y Software
Para mantener la integridad de la red, no se permite la conexión de software no verificado.

* **Homologación del Conector:** Todo Conector que desee unirse a la red productiva debe superar el **Test de Interoperabilidad** automatizado en el entorno de Sandbox `(Ref. Pliego: Apartado 6.1.11.1)`.
* **Atestación Remota (Remote Attestation):** Los conectores deben implementar mecanismos técnicos que permitan verificar criptográficamente la integridad de su código en tiempo de ejecución, garantizando que no han sido manipulados por el participante para evadir las políticas de uso `(Ref. Pliego: Apartado 6.1.8.7)`.

---

(CAMBIAR POR ACUERDO Y CONDICIONES)



##  Glosario de Términos 

* **Participante:** Entidad legal (empresa, universidad, administración) que ha superado el proceso de admisión y posee una Credencial Verificable válida.
* **Proveedor de Datos (Data Provider):** Participante que publica la oferta de un activo de datos en el catálogo. Es el responsable de definir las políticas de uso y garantizar la propiedad intelectual.
* **Consumidor de Datos (Data Consumer):** Participante que negocia un contrato digital para adquirir derechos de acceso y uso sobre un activo de datos.
* **Intermediador:** Rol técnico o de negocio que facilita servicios auxiliares (ej. limpieza de corpus, anonimización, certificación) dentro del espacio.
* **Conector (Paquete Conector):** Componente de software certificado que actúa como puerta de enlace para el intercambio soberano de datos. Puede desplegarse en modalidad *On-Premise* (infraestructura del participante) o *SaaS* (nube del CNIE).
* **Activo de Datos:** Cualquier recurso digital (corpus texto/audio, modelo algorítmico, léxico) ofrecido en el catálogo bajo condiciones contractuales específicas.