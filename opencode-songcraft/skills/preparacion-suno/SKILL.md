---
name: preparacion-suno
description: Use ONLY when the user wants to prepare an existing song and musical direction for Suno with metatags, a style prompt and Exclude recommendations.
license: Apache-2.0
compatibility: opencode
---

# Contrato de comportamiento: preparacion-suno

## Objetivo

Recibir un artefacto de canción y adaptarlo para Suno mediante una revisión mínima de la letra, una
selección prudente de metatags, una descripción de estilo compatible con el campo de estilos y un
conjunto pequeño de exclusiones útiles.

Esta skill **no compone la canción desde cero**. Si falta una letra viable o la dirección musical no
está definida, debe solicitar esos datos o remitir conceptualmente a `../letra-cancion/`.

## Documentación obligatoria

Consulta según la tarea:

- `../songcraft-docs/11-suno-prompting-de-estilo.md`
- `../songcraft-docs/12-suno-letras-y-metatags.md`
- `../songcraft-docs/13-suno-plantillas-y-experimentacion.md`
- `../songcraft-docs/14-suno-fuentes-y-nivel-de-confianza.md`
- `../songcraft-docs/15-suno-pro-v5-5-referencia-actual.md`
- `../songcraft-docs/16-suno-pro-v5-5-flujos-recomendados.md`
- `../songcraft-docs/17-suno-pro-v5-5-calidad-y-limites.md`

Usa los documentos `00`–`10` solo si necesitas comprobar métrica, rima, prosodia o estructura tras
un cambio de letra.

## Entrada mínima

La entrada debe proporcionar:

```text
Letra final:
Estilo o dirección musical:
BPM recomendado o rango:
Idioma y variante de pronunciación:
```

Son opcionales, pero útiles:

- Observaciones y variantes del compositor.
- Tipo de voz o Voice seleccionada.
- Modelo de Suno, plan y funciones disponibles.
- Elementos que el usuario ya sabe que no quiere.
- Problemas encontrados en generaciones anteriores.

No inventes datos esenciales. Si falta la letra, pide la letra. Si falta el estilo, pide la dirección
musical o propón una interpretación provisional claramente marcada.

## Proceso obligatorio

1. Validar la integridad del artefacto.
2. Revisar la letra para densidad, pronunciación, estructura y repetición.
3. Proponer cambios mínimos y mostrar qué se modificó.
4. Añadir metatags estructurales y, solo cuando aporten valor, señales locales breves.
5. Traducir la dirección musical a un estilo global específico y no contradictorio.
6. Seleccionar `Exclude` solo para elementos realmente indeseados o recurrentes.
7. Entregar los tres artefactos finales y advertir qué instrucciones son experimentales.

## Artefactos finales obligatorios

### 1. Letra con metatags y mejoras orientadas a Suno

Debe incluir:

- Letra completa, lista para pegar en el campo de letras.
- Etiquetas de sección claras.
- Señales locales limitadas y justificadas.
- Cambios mínimos de letra para pronunciación, respiración, densidad o contraste.
- Registro breve de cambios respecto de la entrada.

### 2. Estilo orientado a una generación óptima

Debe ser un bloque listo para el campo de estilo e incluir, en orden de prioridad:

```text
género dominante, subgénero/época opcional, mood y energía, BPM aproximado,
carácter/entrega vocal, 2–4 instrumentos núcleo, textura de producción, arco dinámico
```

El género dominante va primero. No uses más de dos anclajes de género ni acumules adjetivos
contradictorios.

### 3. Exclude recomendado

Debe contener una lista breve, lista para el campo `Exclude`, seguida de una justificación por
elemento. Incluye solo instrumentos, estilos, tratamientos o tipos de voz no deseados.

`Exclude` **no corrige por sí mismo la pronunciación**. Los problemas de dicción se resuelven primero
reescribiendo, simplificando o marcando fonéticamente la letra cuando sea imprescindible. No prometas
que una exclusión impedirá todos los errores.

## Niveles de confianza

| Nivel | Ejemplos | Uso |
|---|---|---|
| `Estructural` | `[Verse]`, `[Chorus]`, `[Bridge]`, `[Outro]` | Aplicar por defecto cuando corresponda |
| `Heurístico` | BPM, dirección vocal, pocos instrumentos, arco dinámico | Recomendar y probar |
| `Experimental` | Metatags complejos, efectos locales, callbacks, sintaxis con `|` | Usar poco y marcar para A/B |

## Política de cambios sobre la letra

- Preserva tema, narrador, destinatario, hook y arco.
- Prefiere el cambio mínimo que resuelva el problema.
- No alteres una línea por gusto personal.
- Si cambias una palabra que afecta rima o métrica, revisa toda la estrofa equivalente.
- Muestra siempre un registro `antes → después → motivo`.
- Si un cambio es artístico y no técnico, ofrécelo como variante, no como corrección obligatoria.

## Guardarraíles

- No prometas obediencia literal de estilos, metatags, BPM, voz, instrumentos o exclusiones.
- No uses nombres de artistas o personas reales para solicitar imitación.
- No recomiendes crear o usar una Voice que no pertenezca al usuario verificado.
- No sobrecargues una sección con instrucciones.
- No pongas instrucciones de producción en paréntesis; pueden cantarse.
- No uses `Exclude` como una lista inversa de todo lo que no aparece en el estilo.
- No confundas derechos comerciales de un plan con copyright garantizado.
- No asumas que Pro incluye Studio o Advanced Split.

## Criterio de finalización

La tarea termina cuando los tres bloques son coherentes entre sí:

- La letra expresa la estructura que los metatags anuncian.
- El estilo global refuerza el sentido y BPM del artefacto original.
- Los excludes no contradicen instrumentos o rasgos solicitados.
- Cada cambio de letra está documentado.
- Las instrucciones experimentales están identificadas.
