# 12 · Letras y metatags en Suno

Los **metatags** son textos entre corchetes insertados en el campo de letras para señalar secciones o
describir cómo debería evolucionar una parte. La comunidad los usa con buenos resultados, pero no hay
una especificación pública que garantice que todos los términos, sintaxis o combinaciones se
interpreten igual entre modelos y fechas.

> Principio de seguridad: considera las etiquetas como **pistas de probabilidad**. Las etiquetas de
> sección son las más estables; las de voz, mezcla, instrumentos y sintaxis compleja son
> experimentales. Nunca confundas una lista comunitaria con una API de Suno.

## 1. Niveles de confianza

| Nivel | Uso | Ejemplos | Recomendación |
|---|---|---|---|
| Alto | Estructura explícita | `[Verse]`, `[Chorus]`, `[Bridge]`, `[Outro]` | Usar como base |
| Medio | Transición o rol claro | `[Instrumental]`, `[Break]`, `[Hook]`, `[Spoken Word]` | Probar con una señal por sección |
| Experimental | Entrega, mezcla, efectos o sintaxis compleja | `[raspy vocal]`, `[wide stereo]`, `[Drop | ...]` | A/B, una variable cada vez |

## 2. Etiquetas estructurales: el punto de partida

Usa las etiquetas al principio de la sección y mantén un orden legible:

```text
[Intro]

[Verse 1]
...

[Pre-Chorus]
...

[Chorus]
...

[Verse 2]
...

[Bridge]
...

[Final Chorus]
...

[Outro]
```

Las etiquetas no reemplazan la escritura estructural. Para que Suno diferencie las secciones, el
texto debe ayudar: el verso aporta detalle, el pre crea impulso, el estribillo repite el hook y el
puente cambia de ángulo (ver `01` y `06`).

## 3. Señales locales de interpretación

Cuando una sección necesita otra energía, añade una **sola instrucción breve**, preferentemente
descriptiva:

```text
[Verse 1: intimate, minimal]
...

[Chorus: full band, layered harmonies]
...

[Bridge: spoken word, stripped back]
...
```

Progresión de uso:

1. Etiqueta la estructura sin modificadores.
2. Si el resultado carece de contraste, añade una señal de energía o entrega a una sección.
3. Solo después prueba instrumentos o efectos locales.
4. Si la señal no modifica el resultado en varias pruebas, elimínala: añade ruido al experimento.

## 4. Categorías experimentales útiles

No memorices cientos de términos. Piensa por **categorías**, usa lenguaje claro y conserva solo lo
que hayas validado.

| Intención | Ejemplos de señales | Dónde probarlas |
|---|---|---|
| Energía | `building`, `explosive`, `stripped back`, `breakdown` | Pre, estribillo, puente |
| Entrega vocal | `whispered`, `spoken word`, `falsetto`, `belted`, `raspy` | Antes de la sección |
| Capas vocales | `layered harmonies`, `choir`, `ad-libs` | Estribillos y outro |
| Instrumento protagonista | `guitar solo`, `saxophone solo`, `instrumental break` | Interludio/solo |
| Final | `fade out`, `big finish`, `callback to hook` | Outro |
| Ambiente | `crowd ambience`, `rain`, `vinyl texture` | Intro/outro; con moderación |

## 5. Corchetes, paréntesis y texto cantado

La práctica comunitaria reporta la siguiente distinción, pero es **no oficial** y puede variar:

- **Corchetes `[ ]`:** se usan para secciones y dirección no cantada.
- **Paréntesis `( )`:** con frecuencia se interpretan como respaldo vocal, eco, ad-lib o texto que
  puede ser cantado de modo distinto.
- **Mayúsculas, guiones y puntos suspensivos:** pueden sugerir énfasis, sílaba estirada o sostenido,
  pero pueden alterar la pronunciación y no son controles fiables.

No pongas instrucciones largas en paréntesis: existe riesgo de que se canten. Si una línea debe ser
un eco real, entonces sí escríbela como texto cantable entre paréntesis.

```text
[Chorus: layered harmonies]
No vuelvo a mirar atrás
(atrás, atrás)
```

## 6. Etiqueta primero la forma, no la producción

La causa más frecuente de letras planas no es la falta de tags: es que verso, pre y estribillo tienen
la misma longitud, energía y función. Antes de añadir señales complejas, revisa:

- ¿El estribillo repite el hook y tiene líneas más memorables?
- ¿El verso cuenta/ilustra en vez de repetir la tesis?
- ¿Hay un puente con contraste real?
- ¿Las líneas caben en el tempo sin acentos forzados?

Una letra bien estructurada da al modelo señales más claras que veinte metatags.

## 7. Apilamiento de etiquetas: úsalo con prudencia

Algunas fuentes proponen combinar indicaciones con barras verticales:

```text
[Chorus | anthemic | stacked harmonies | full band]
```

Puede ser una forma legible de agrupar ideas, pero no está demostrado que `|` tenga semántica distinta
de una coma. Para evitar sobrecarga, limita una sección a:

1. La etiqueta de sección.
2. Una señal de energía o voz.
3. Como máximo una señal instrumental/producción.

Evita seis o más modificadores. Si una generación ignora algo, no significa que necesite diez pistas
más; puede significar que esa pista no es fiable o entra en conflicto con el estilo global.

## 8. Plantilla mínima recomendada

```text
[Intro]

[Verse 1: intimate]
Línea de apertura con imagen concreta
Línea que sitúa el conflicto
...

[Pre-Chorus: building]
Línea más corta que aumenta la tensión
...

[Chorus: layered harmonies]
HOOK / TÍTULO
Línea de idea central
HOOK / TÍTULO

[Verse 2]
Nueva información; no repetir el verso 1
...

[Bridge: stripped back]
Giro emocional o narrativo

[Final Chorus: full energy]
HOOK / TÍTULO

[Outro]
(eco breve del hook)
```

## 9. Instrumentales y huecos de respiración

Si quieres que la canción respire, escribe poco texto y deja una sección explícita:

```text
[Instrumental]

[Verse 2]
...

[Instrumental Break]

[Final Chorus]
...
```

Más letra no implica una canción mejor ni más larga: suele provocar fraseo apresurado. Usa los huecos
instrumentales para que el hook se asiente y el intérprete pueda respirar.

## 10. Qué no hacer

- No describas toda la canción en cada sección.
- No metas instrucciones contradictorias dentro de una misma etiqueta.
- No uses etiquetas de estilo como sustituto de una letra clara y métrica.
- No asumas que una etiqueta viral controla con precisión el tono, la tonalidad, la voz o la mezcla.
- No uses nombres de artistas para intentar eludir limitaciones de estilo; describe atributos
  musicales, no identidades.

## 11. Protocolo de validación A/B

Para saber si una etiqueta funciona:

1. Mantén idénticos la letra, el estilo y los ajustes.
2. Genera un grupo **control** sin la etiqueta.
3. Genera otro grupo con **una sola etiqueta nueva**.
4. Escucha sin mirar cuál es cuál y puntúa el objetivo definido: por ejemplo, `¿el puente es realmente
   más contenido?`.
5. Conserva la etiqueta solo si la mejora se repite en varias generaciones.

## Resumen accionable

- Empieza por `[Verse]`, `[Chorus]`, `[Bridge]` y `[Outro]`; son las señales más fiables.
- Añade una instrucción local únicamente cuando exista un objetivo claro de energía, voz o arreglo.
- Corchetes suelen reservarse para dirección; los paréntesis pueden cantarse: escribe en ellos solo
  material que toleres o quieras oír.
- No sobrecargues: la letra y la estructura siguen siendo la fuente principal de control.
- Valida metatags con pruebas A/B; las recomendaciones de comunidad son hipótesis, no garantías.
