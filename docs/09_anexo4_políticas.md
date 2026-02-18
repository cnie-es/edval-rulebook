# ANEXO IV - POLÍTICAS DE ACCESO Y USO DE DATOS

---

En este anexo se presentan ejemplos de políticas de acceso y uso de datos que pueden ser aplicadas en el Espacio, y que serán definidas con más detalle en el futuro por la Autoridad de Gobernanza en función de las necesidades del ecosistema.

## A4.1. Políticas de acceso

**Sólo participantes onboarded**
```json
{
  "@context": "http://www.w3.org/ns/odrl.jsonld",
  "@type": "Set",
  "uid": "edval:policy:access:requires-onboarded",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "edval:participantStatus",
      "operator": "odrl:eq",
      "rightOperand": "active"
    }]
  }]
}
```

**Identidad verificada**
```json
{
  "@type": "Set",
  "uid": "edval:policy:access:requires-verified-identity",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "edval:identityAssuranceLevel",
      "operator": "odrl:gteq",
      "rightOperand": "substantial"
    }]
  }]
}
```

**Conformidad GAIA-X**

```json
{
  "@type": "Set",
  "uid": "edval:policy:access:requires-gaiax-compliant",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "gx:compliance",
      "operator": "odrl:eq",
      "rightOperand": "true"
    }]
  }]
}
```

**Acreditación universidad**

```json
{
  "@type": "Set",
  "uid": "edval:policy:access:requires-accredited-university",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "edval:organizationType",
      "operator": "odrl:eq",
      "rightOperand": "university"
    }]
  }]
}
```

**Sólo data consumers**

```json
{
  "@type": "Set",
  "uid": "edval:policy:access:role-consumer-only",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "edval:participantRole",
      "operator": "odrl:eq",
      "rightOperand": "consumer"
    }]
  }]
}
```

## Políticas de uso

**Permitido hasta una fecha**

```json
{
  "@type": "Set",
  "uid": "edval:policy:use:until-date",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "odrl:dateTime",
      "operator": "odrl:lteq",
      "rightOperand": "2026-12-31T23:59:59Z"
    }]
  }]
}
```

**Permitido en un periodo**

```json
{
  "@type": "Set",
  "uid": "edval:policy:use:time-window",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "edval:elapsedTime",
      "operator": "odrl:lteq",
      "rightOperand": "P30D"
    }]
  }]
}
```

**Sólo investigación**

```json
{
  "@type": "Set",
  "uid": "edval:policy:use:research-only",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "edval:purpose",
      "operator": "odrl:eq",
      "rightOperand": "research"
    }]
  }]
}
```

**Prohibido uso comercial**

```json
{
  "@type": "Set",
  "uid": "edval:policy:use:non-commercial",
  "prohibition": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "edval:purpose",
      "operator": "odrl:eq",
      "rightOperand": "commercial"
    }]
  }]
}
```

**Dentro de la UE**

```json
{
  "@type": "Set",
  "uid": "edval:policy:use:only-eu",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "edval:processingLocation",
      "operator": "odrl:isAnyOf",
      "rightOperand": ["EU"]
    }]
  }]
}
```

**Límite de descargas**

```json
{
  "@type": "Set",
  "uid": "edval:policy:use:max-downloads",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "odrl:count",
      "operator": "odrl:lteq",
      "rightOperand": 10
    }]
  }]
}
```

**Límite de volumen**

```json
{
  "@type": "Set",
  "uid": "edval:policy:use:max-volume",
  "permission": [{
    "target": "edval:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "edval:dataVolume",
      "operator": "odrl:lteq",
      "rightOperand": "100GB"
    }]
  }]
}
```

**Prohibido crear derivados**

```json
{
  "@type": "Set",
  "uid": "edval:policy:use:no-derivatives",
  "prohibition": [{
    "target": "edval:asset:any",
    "action": "edval:derive"
  }]
}
```

[Volver a "MARCO TÉCNICO Y ESTÁNDARES DE INTEROPERABILIDAD](./05_capitulo_4_tecnico.md)
