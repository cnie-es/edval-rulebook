# ANEXO IV - POLÍTICAS DE ACCESO Y USO DE DATOS

---

En este anexo se presentan ejemplos de políticas de acceso y uso de datos que pueden ser aplicadas en el EDNEL, y que serán definidas con más detalle en el futuro por la Autoridad de Gobernanza en función de las necesidades del ecosistema.

## Políticas de acceso

**Sólo participantes onboarded**
```json
{
  "@context": "http://www.w3.org/ns/odrl.jsonld",
  "@type": "Set",
  "uid": "ednel:policy:access:requires-onboarded",
  "permission": [{
    "target": "ednel:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "ednel:participantStatus",
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
  "uid": "ednel:policy:access:requires-verified-identity",
  "permission": [{
    "target": "ednel:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "ednel:identityAssuranceLevel",
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
  "uid": "ednel:policy:access:requires-gaiax-compliant",
  "permission": [{
    "target": "ednel:asset:any",
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
  "uid": "ednel:policy:access:requires-accredited-university",
  "permission": [{
    "target": "ednel:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "ednel:organizationType",
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
  "uid": "ednel:policy:access:role-consumer-only",
  "permission": [{
    "target": "ednel:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "ednel:participantRole",
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
  "uid": "ednel:policy:use:until-date",
  "permission": [{
    "target": "ednel:asset:any",
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
  "uid": "ednel:policy:use:time-window",
  "permission": [{
    "target": "ednel:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "ednel:elapsedTime",
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
  "uid": "ednel:policy:use:research-only",
  "permission": [{
    "target": "ednel:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "ednel:purpose",
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
  "uid": "ednel:policy:use:non-commercial",
  "prohibition": [{
    "target": "ednel:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "ednel:purpose",
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
  "uid": "ednel:policy:use:only-eu",
  "permission": [{
    "target": "ednel:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "ednel:processingLocation",
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
  "uid": "ednel:policy:use:max-downloads",
  "permission": [{
    "target": "ednel:asset:any",
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
  "uid": "ednel:policy:use:max-volume",
  "permission": [{
    "target": "ednel:asset:any",
    "action": "odrl:use",
    "constraint": [{
      "leftOperand": "ednel:dataVolume",
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
  "uid": "ednel:policy:use:no-derivatives",
  "prohibition": [{
    "target": "ednel:asset:any",
    "action": "ednel:derive"
  }]
}
```

