# 11 · Prompting de estilo para Suno

Este documento convierte una intención musical en un **prompt de estilo** para Suno. No sustituye la
escritura de letras: la letra vive en el campo de letras y el prompt de estilo describe el marco
sonoro que debe hacerla creíble.

> Estado de la información: Suno no publica una gramática completa y estable de prompts. Trata cada
> instrucción como una **señal probabilística**, no como un comando. Conserva el prompt, la versión
> de modelo y el resultado para saber qué funciona en tu caso.

## 1. Los dos campos y sus responsabilidades

| Campo | Debe contener | No debe cargar con |
|---|---|---|
| **Style of Music / Estilo** | Género, energía, voz global, instrumentos, tempo, textura y mezcla | La letra completa ni instrucciones por cada línea |
| **Lyrics / Letras** | Texto cantado, secciones y señales locales de interpretación | Una lista enorme de géneros o una descripción global duplicada |

La regla práctica: el **estilo fija la identidad global** de la canción; las **letras fijan lo que se
canta y el orden de las secciones**. Cuando ambos campos se contradicen, el resultado puede desviarse.

## 2. La fórmula G-M-I-V

El video analizado propone un marco simple y transferible: **Género + Mood (estado de ánimo) +
Instrumentos + Voz**. Es una forma compacta de empezar antes de añadir producción y tempo.

1. **Género y subgénero:** definen la familia musical. Usa uno principal y, como máximo, uno
   secundario si buscas una fusión.
2. **Mood, energía y arco:** definen la sensación. Distingue el estado (`nostálgico`) de la energía
   (`contenido`, `explosivo`).
3. **Instrumentos y gestos:** nombra los 2–4 elementos que deben ser reconocibles; mejor `Rhodes
   eléctrico cálido` que `teclado`.
4. **Voz:** describe carácter, forma de cantar y, si aporta valor, tratamiento de mezcla.

La mayoría de las fuentes añaden dos capas útiles:

5. **Producción y textura:** `cálida analógica`, `cruda de sala`, `mezcla amplia`, `lo-fi con cinta`.
6. **Tempo y desarrollo:** BPM aproximado y un arco como `verso íntimo, estribillo expansivo`.

## 3. Estructura recomendada del prompt

Escribe de más determinante a menos determinante. Una plantilla robusta:

```text
[género principal], [subgénero o época], [mood + energía], [BPM],
[carácter + entrega vocal], [2–4 instrumentos característicos],
[textura/mezcla], [arco dinámico o tema opcional]
```

Ejemplo genérico:

```text
indie folk contemporáneo, cálido y nostálgico, 92 BPM, voz masculina íntima y
aireada, guitarra acústica fingerpicking, contrabajo y caja con escobillas,
producción orgánica cercana, versos contenidos que abren a un estribillo luminoso
```

No copies el ejemplo como receta universal. Sustituye cada elemento por decisiones que respondan a
la letra y al género.

## 4. Género: precisión sin dispersión

`Pop`, `rock` o `electrónica` son etiquetas demasiado amplias. En vez de aumentar diez géneros,
precisa con un subgénero, época o gesto musical:

| Vago | Más dirigido |
|---|---|
| pop | synth-pop ochentero, pop de dormitorio, pop de baile |
| hip-hop | boom bap, trap melódico, rap jazz |
| electrónica | deep house, techno melódico, drum and bass líquido |
| rock | alt rock lento, post-punk, garage rock |

- Ordena primero el género dominante.
- Usa una fusión solo si puedes explicar qué aporta cada componente.
- Si la fusión falla, vuelve a un género único y valida el resto de variables antes de mezclar.

## 5. Mood, energía y arco

El mood no es un adorno: debe coincidir con el contenido de la letra. Una letra de duelo con un
prompt `eufórico, festivo` puede funcionar solo si el contraste es intencional.

Describe tres planos en vez de acumular adjetivos incompatibles:

```text
Estado: melancólico y vulnerable
Energía inicial: mínima, íntima
Trayectoria: crece hasta un estribillo catártico
```

Esto es más claro que `triste, feliz, agresivo, tranquilo, intenso`.

## 6. Dirección vocal: las tres capas

Las fuentes coinciden en que `voz masculina` o `voz femenina` por sí solos controlan poco. Describe:

| Capa | Pregunta | Ejemplos |
|---|---|---|
| Carácter | ¿Quién parece cantar? | barítono cálido, alto clara, coro mixto |
| Entrega | ¿Cómo frasea? | aireada, hablada, melódica, rasposa, con falsete |
| Tratamiento | ¿Cómo suena en la mezcla? | cercana y seca, doblada, con reverb de sala |

Evita pedir una voz idéntica a una persona real. Si quieres una referencia estética, descompónla en
atributos observables: rango, dicción, densidad, instrumentación, época, energía y tratamiento.

## 7. Instrumentación y producción

Nombra pocos elementos con función clara:

- **Base rítmica:** `dembow seco`, `batería acústica con escobillas`, `breakbeat rápido`.
- **Centro armónico:** `piano vertical`, `pads analógicos`, `guitarras limpias arpegiadas`.
- **Bajo:** `808 subgrave`, `contrabajo`, `bajo sintetizado pulsante`.
- **Color distintivo:** `pedal steel`, `saxo tenor`, `coro gospel`, `guitarra con phaser`.
- **Textura/mezcla:** `cinta saturada`, `espacio amplio`, `cruda y directa`, `pulida y brillante`.

No añadas un instrumento porque sea atractivo en aislamiento. Pregunta qué papel cumple dentro del
arreglo y si deja sitio a la voz.

## 8. Tempo y métrica de la letra

El BPM es una **referencia de intención**, no una garantía exacta. Aun así, especificarlo reduce la
ambigüedad de estilos con rangos muy distintos. Ajusta la letra al tempo:

- Tempo lento: deja aire, vocales largas y menos sílabas por línea.
- Tempo alto: simplifica sintaxis o usa un flow deliberadamente denso.
- Rap: prueba la densidad silábica contra un pulso antes de generar (ver `04`).

La métrica, prosodia y estructura de la letra siguen importando incluso cuando Suno compone la música.
Un prompt no corrige una letra que fuerza sus acentos.

## 9. Dos formas de redactar

Las fuentes presentan dos estilos compatibles. Empieza por uno, no los mezcles sin razón:

### A. Etiquetas separadas por comas

```text
neo-soul, íntimo, 78 BPM, voz femenina suave con melismas discretos,
Rhodes, bajo cálido, batería con escobillas, armonías apiladas, mezcla analógica
```

Útil para iterar una sola variable: cambiar `78 BPM` por `84 BPM` conserva lo demás.

### B. Descripción en lenguaje natural

```text
Una balada de alt rock de combustión lenta: empieza casi susurrada sobre guitarra
limpia y bajo contenido; el estribillo abre la banda completa y culmina con una
voz vulnerable, no agresiva.
```

Útil para describir un arco o una escena compleja. La comunidad reporta buenos resultados, pero es
una heurística: compara el resultado con la versión de etiquetas usando exactamente la misma letra.

## 10. Restricciones y contradicciones

Algunas fuentes recomiendan escribir exclusiones (`sin guitarra`, `sin voces`). Trátalas como una
preferencia, no como una función de "negative prompt" garantizada. Primero define muy bien lo que sí
quieres; después añade **una** exclusión solo si un elemento no deseado persiste.

Evita contradicciones como:

```text
minimalista, pared de sonido, batería ausente, percusión explosiva, íntimo, estadio
```

Si buscas contraste, asígnalo a secciones: `verso minimalista; estribillo de pared de sonido`.

## 11. Ciclo de iteración reproducible

1. Escribe una **versión base** con G-M-I-V y, si hace falta, BPM y producción.
2. Genera varias variantes con el **mismo prompt y letra**.
3. Elige la mejor y anota qué cumplió/falló: voz, ritmo, instrumentos, estructura, mezcla.
4. Cambia **una sola variable** en la siguiente ronda.
5. Repite hasta aislar la causa de una mejora o regresión.

Guardar únicamente el resultado ganador no enseña nada. Guarda también el prompt, fecha, modelo,
letra, configuración relevante y una valoración breve.

## 12. Diagnóstico rápido

| Problema | Primera corrección razonable |
|---|---|
| Suena genérico | Especifica subgénero, 2 instrumentos y una textura distintiva |
| No encaja con la letra | Alinea mood, energía y punto de vista de ambos campos |
| Voz equivocada | Simplifica y define carácter + entrega + tratamiento |
| Todo suena igual | Añade un arco entre secciones y usa `12` para señales locales |
| Mezcla saturada | Reduce instrumentos; declara una producción `sparse`/abierta |
| Fusión confusa | Vuelve a un género dominante y añade el segundo después |

## Resumen accionable

- Separa responsabilidades: **estilo = identidad global**, **letras = texto y secciones**.
- Empieza con **G-M-I-V** y añade producción/BPM solo si aclaran el objetivo.
- Prioriza: 1 género principal, 1 subgénero opcional, 2–4 instrumentos y una dirección vocal de tres capas.
- Formula un arco en vez de acumular moods contradictorios.
- Trata el prompt como un experimento: genera variantes y cambia una variable por ronda.
- No imites artistas por nombre: describe rasgos musicales observables.
