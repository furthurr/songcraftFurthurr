# Flujo de adaptación para Suno

## 1. Validar la entrada

Comprueba:

- Hay una letra completa o una sección claramente delimitada para trabajar.
- Existe una dirección musical y un BPM recomendado/rango.
- El idioma y la pronunciación objetivo están definidos cuando pueden afectar rima o dicción.
- Las observaciones del artefacto no contradicen la versión elegida.

Si el usuario aporta dos variantes de letra, pregunta cuál es la principal antes de optimizar.

## 2. Auditar la letra antes de etiquetar

Revisa en este orden:

1. **Estructura:** secciones, hook, progresión y puente.
2. **Densidad:** cantidad de texto por sección respecto del BPM.
3. **Pronunciación:** palabras largas, extranjerismos, siglas, números, homógrafos y grupos
   consonánticos difíciles.
4. **Respiración:** líneas demasiado largas o sin pausas.
5. **Repetición:** estribillo reconocible sin padding excesivo.
6. **Paréntesis:** todo contenido entre paréntesis puede llegar a cantarse.

No añadas metatags hasta terminar esta auditoría.

## 3. Decidir cambios de letra

Clasifica cada cambio:

| Tipo | Ejemplo | Acción |
|---|---|---|
| Técnico | Línea demasiado densa para el tempo | Simplificar manteniendo sentido y rima |
| Pronunciación | Sigla o extranjerismo ambiguo | Escribir forma fonética o equivalente natural |
| Estructural | Coro demasiado largo | Reducir o dividir chorus/post-chorus |
| Artístico | Imagen alternativa | Ofrecer variante; no sustituir automáticamente |

Después de modificar, comprueba métrica, rima y acentos con
`../songcraft-docs/02-metrica-y-versificacion.md`, `../songcraft-docs/03-rima.md` y
`../songcraft-docs/04-ritmo-prosodia-y-flow.md`.

## 4. Añadir metatags

Empieza por la forma:

```text
[Intro]
[Verse 1]
[Pre-Chorus]
[Chorus]
[Verse 2]
[Bridge]
[Final Chorus]
[Outro]
```

Después añade como máximo una o dos señales locales donde exista un objetivo concreto:

```text
[Verse 1: intimate, minimal]
[Pre-Chorus: building]
[Chorus: full energy, layered harmonies]
[Bridge: stripped back]
```

No añadas descripciones globales repetidas en cada sección.

## 5. Adaptar el estilo

Convierte la prosa musical recibida en un bloque compacto:

1. Género dominante.
2. Subgénero o época, si es funcional.
3. Mood y energía compatibles.
4. BPM recomendado del artefacto.
5. Voz: carácter + entrega + tratamiento.
6. Dos a cuatro instrumentos principales.
7. Textura/mezcla.
8. Arco entre verso, coro y puente.

Elimina redundancias y contradicciones. Si propones un cambio respecto del artefacto, explica qué
problema resuelve y conserva también una versión fiel cuando el cambio sea artístico.

## 6. Construir Exclude

Deriva las exclusiones de tres fuentes:

- Elementos explícitamente rechazados por el artefacto.
- Derivas comunes que contradicen el estilo elegido.
- Problemas observados en generaciones anteriores del usuario.

Orden recomendado:

```text
estilo incompatible, instrumento no deseado, tratamiento vocal no deseado, textura no deseada
```

Usa pocas exclusiones. Un `Exclude` demasiado amplio puede empobrecer o volver impredecible el
resultado.

## 7. Verificación cruzada

Antes de entregar, responde:

- ¿Algún Exclude elimina un elemento pedido en el estilo?
- ¿Un metatag local contradice el arco global?
- ¿La letra conserva hook, rima, métrica e intención?
- ¿Las indicaciones entre paréntesis son realmente texto cantable?
- ¿El BPM sigue siendo compatible con la densidad final?
- ¿La salida distingue estructura fiable de señales experimentales?

## 8. Entrega

Usa `plantillas-salida.md`. No añadas una cuarta sección salvo un breve registro de cambios dentro del
primer artefacto.
