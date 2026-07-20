# Plantillas de salida

## 1. Diagnóstico de letra existente

```yaml
estado:
  modo: diagnosticar
  letra_lista_para_cantar: listo | revisar_antes | requiere_contexto

brief_inferido:
  idea_central: ""
  emocion: ""
  narrador_y_destinatario: ""
  estilo_probable: ""

hallazgos:
  bloqueantes:
    - tipo: verificable | probable
      ubicacion: ""
      hallazgo: ""
      impacto: ""
      correccion_minima: ""
  prioritarios: []
  artisticos_abiertos: []

revision_formal:
  estructura: ""
  metrica: ""
  rima: ""
  prosodia_y_flow: ""
  cantabilidad: ""

siguiente_paso: ""
```

## 2. Creación desde cero

```yaml
brief:
  idea_en_una_frase: ""
  angulo: ""
  emocion_especifica: ""
  narrador: ""
  destinatario: ""
  tono: ""
  titulo_provisional: ""
  hook: ""
  imagen_ancla: ""
  arco: ""

estilo:
  elegido: ""
  convenciones_relevantes: []

estructura:
  - seccion: Verse 1
    funcion: ""
    lineas_objetivo: ""
    metrica_o_densidad: ""
  - seccion: Chorus
    funcion: ""
    lineas_objetivo: ""
    metrica_o_densidad: ""

proximo_bloque_a_escribir: ""
pregunta_unica: ""
```

## 3. Revisión métrica y de rima

```text
Línea N: [texto]
- Sílabas métricas: [número o rango]
- Sinalefas/licencias: [detalle]
- Final: [aguda/llana/esdrújula] → [ajuste]
- Acentos naturales: [posiciones aproximadas]
- Rima: [terminación, tipo, esquema]
- Diagnóstico: [verificable/probable]
- Alternativa mínima: [texto]
```

## 4. Recomendación de estilo

```yaml
recomendacion:
  estilo_principal: ""
  por_que_encaja: ""
  estructura_sugerida: ""
  densidad_y_rima: ""
  riesgo: ""

alternativas:
  - estilo: ""
    diferencia_clave: ""
  - estilo: ""
    diferencia_clave: ""

decision_solicitada: ""
```

## 5. Artefacto final de canción

```markdown
# [Título]

## 1. Letra final

[Verse 1]
...

[Chorus]
...

## 2. Observaciones, variantes y recomendaciones

### Observaciones prioritarias
- [Verificable / Probable / Artístico] ...

### Variante opcional
- **Más rítmica:** [fragmento o cambio] — [qué mejora/cambia].
- **Más íntima:** [fragmento o cambio] — [qué mejora/cambia].

### Recomendación de prueba
- ...

## 3. Dirección musical

### Estilo
[Descripción en prosa de género, subgénero, época, patrón rítmico, instrumentación,
texturas, energía, contexto de escucha y elementos que se deben evitar.]

### Tempo
- **BPM recomendado:** [número] BPM.
- **Por qué:** [relación con la letra, fraseo, groove y estilo].
- **Rango funcional:** [mínimo]–[máximo] BPM.
- **Variación lenta:** [número] BPM — [efecto artístico].
- **Variación rápida:** [número] BPM — [efecto artístico].
```

## 6. Reglas de presentación

- No rellenes campos desconocidos: usa `pendiente` y formula una pregunta.
- No ocultes incertidumbre; usa `verificable`, `probable`, `artístico` o `pendiente de prueba`.
- Muestra solo la plantilla necesaria para la tarea actual.
- Cuando propongas letra, separa claramente borrador, cambios y explicación.
