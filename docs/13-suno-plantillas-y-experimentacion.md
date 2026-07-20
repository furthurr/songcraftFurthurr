# 13 · Plantillas y experimentación para Suno

Estas plantillas unen los documentos de letras (`00`–`10`) con los de prompting (`11`–`12`). No son
prompts mágicos: son **formatos editables** que obligan a declarar decisiones creativas y permiten
comparar resultados sin improvisar cada intento.

## 1. Ficha de generación

Rellena esta ficha antes de generar. Separa la intención de la redacción final del prompt.

```text
TÍTULO / HOOK:
IDEA CENTRAL DE LA LETRA:
GÉNERO DOMINANTE:
SUBGÉNERO O ÉPOCA (opcional):
MOOD:
ENERGÍA INICIAL → FINAL:
TEMPO OBJETIVO / BPM:
VOZ: carácter + entrega + tratamiento:
INSTRUMENTOS NÚCLEO (2–4):
TEXTURA / PRODUCCIÓN:
SECCIONES Y CONTRASTE:
EXCLUSIÓN (solo si es necesaria):
HIPÓTESIS DE ESTA PRUEBA:
```

## 2. Plantilla de prompt de estilo

```text
[género], [subgénero/época], [mood], [BPM],
[carácter y entrega vocal], [instrumento 1], [instrumento 2], [instrumento 3],
[textura de producción], [arco de energía]
```

Ejemplo de relleno, no de copia obligatoria:

```text
pop alternativo, nocturno y vulnerable, 100 BPM, voz femenina cercana y aireada,
guitarras limpias con chorus, bajo sintetizado pulsante, batería electrónica seca,
producción amplia pero contenida, versos íntimos y estribillo expansivo
```

## 3. Plantilla de letras con estructura

```text
[Intro]

[Verse 1: minimal]
[Pre-Chorus: building]
[Chorus: full energy]

[Verse 2]
[Pre-Chorus: building]
[Chorus]

[Bridge: stripped back]
[Final Chorus: layered harmonies]
[Outro]
```

Escribe después el contenido de cada sección, respetando el plan del Doc. `01`:

- Verso 1: situación e imagen.
- Pre: tensión, pregunta o impulso.
- Estribillo: título y tesis emocional.
- Verso 2: avance real.
- Puente: giro.
- Estribillo final: mismo hook, nuevo peso por el recorrido.

## 4. Recetas por objetivo

### 4.1 Pop con estribillo inmediato

```text
Estilo: synth-pop contemporáneo, brillante pero nostálgico, 118 BPM, voz clara con
armonías dobladas, sintetizadores analógicos, bajo Moog, batería electrónica nítida,
mezcla radiofónica, hook temprano y estribillo alto

Letras: [Intro] [Chorus] [Verse 1] [Pre-Chorus] [Chorus] [Verse 2] [Bridge] [Final Chorus]
```

Escribe un estribillo de 2–4 líneas, con el título en posición fuerte y vocales abiertas en las
notas que esperas largas.

### 4.2 Balada íntima que crece

```text
Estilo: balada de piano, melancólica pero esperanzada, 70 BPM, voz masculina cercana,
piano acústico, cuerdas discretas, percusión entra tarde, sala cálida, crecimiento
gradual hasta el último estribillo

Letras: [Intro] [Verse 1: intimate] [Chorus] [Verse 2] [Bridge: stripped back]
[Final Chorus: full energy] [Outro]
```

Deja pocas sílabas por línea; no llenes las notas largas con consonantes difíciles.

### 4.3 Rap con hook melódico

```text
Estilo: boom bap moderno, reflexivo y urbano, 88 BPM, rap articulado y conversacional,
bajo cálido, batería con swing, Rhodes y textura de vinilo discreta, hook melódico
claro, mezcla directa

Letras: [Intro] [Verse 1: Rap] [Hook] [Verse 2: Rap] [Hook] [Bridge: spoken word] [Hook]
```

Marca las rimas internas y prueba el flow con metrónomo antes de generar. No confundas muchas
sílabas con un buen verso: deja pausas para que los remates respiren.

### 4.4 Instrumental cinematográfico

```text
Estilo: orquestal cinematográfico, de misterioso a triunfal, 85 BPM, sin voz,
piano suave, cuerdas, metales y percusión taiko, gran espacio estéreo, arco lento
hacia un clímax final

Letras: [Intro] [Instrumental] [Build] [Instrumental] [Outro]
```

No escribas letra si no debe cantarse. Cada bloque debe reflejar una etapa del arco, no una lista
repetida de instrumentos.

### 4.5 Fusión controlada

```text
Estilo: [género A dominante] con elementos de [género B], [mood], [BPM], [voz],
[instrumentos que representan A], [instrumento/ritmo que representa B], [textura], [arco]
```

Primero genera la versión de A sin B. Luego incorpora **un solo rasgo** de B (ritmo, instrumento o
forma vocal), no todos a la vez. Así sabes si la fusión funciona o solo diluye ambos géneros.

## 5. Matriz de pruebas

Una generación aislada no demuestra nada. Usa una matriz pequeña:

| Ronda | Variable que cambia | Control | Variantes | Pregunta de evaluación |
|---|---|---|---|---|
| 1 | Género/subgénero | Prompt base | 3–4 | ¿La identidad es reconocible? |
| 2 | Voz | Mejor ronda 1 | 3–4 | ¿La voz encaja y se entiende? |
| 3 | Energía/secciones | Mejor ronda 2 | 3–4 | ¿Hay contraste verso-estribillo? |
| 4 | Textura | Mejor ronda 3 | 3–4 | ¿La mezcla apoya o tapa la letra? |
| 5 | Metatag local | Mejor ronda 4 | 3–4 | ¿La señal cambia la sección objetivo? |

No modifiques cinco cosas en la misma ronda: obtendrás un resultado distinto, pero no sabrás por qué.

## 6. Registro de experimentos

Guarda una tabla por proyecto:

| ID | Modelo/fecha | Estilo | Cambio | Letras | Resultado | Decisión |
|---|---|---|---|---|---|---|
| P01 | ... | base | — | v1 | voz buena, coro débil | conservar base |
| P02 | ... | base | `layered harmonies` en coro | v1 | coro más ancho | repetir |
| P03 | ... | base | + guitarra extra | v1 | mezcla saturada | descartar |

El registro convierte gustos momentáneos en aprendizaje reutilizable para una persona o una IA.

## 7. Rúbrica de evaluación

Puntúa de 1 a 5, con una frase de evidencia para cada criterio:

| Criterio | Pregunta |
|---|---|
| Fidelidad de estilo | ¿Reconozco el género y la intención sin leer el prompt? |
| Voz y dicción | ¿Se entiende el texto y la entrega encaja? |
| Prosodia | ¿Los acentos y densidad de la letra suenan naturales? |
| Estructura | ¿Versos, estribillo y puente se distinguen? |
| Hook | ¿El título/frase central se recuerda? |
| Arreglo y mezcla | ¿Los elementos elegidos apoyan a la voz? |
| Originalidad | ¿Evita sonar como una plantilla genérica? |

## 8. Diagnóstico de fallos

| Síntoma | Causa probable | Prueba siguiente |
|---|---|---|
| Canta las instrucciones | Dirección demasiado larga o en paréntesis | Mueve la señal a corchetes y acórtala |
| El verso corre demasiado | Demasiadas sílabas o tempo alto | Simplifica la letra; prueba tempo menor |
| Estribillo débil | Hook/contraste insuficiente | Reescribe el coro antes de añadir tags |
| Ignora instrumento | Competencia de demasiados elementos | Deja 2–3 instrumentos núcleo |
| Voz grita | Tags de energía/rasposidad excesivos | Usa `intimate`, `clean`, `restrained` en una prueba A/B |
| Todo es imprevisible | Prompt vago o contradictorio | Reduce a G-M-I-V y una hipótesis |

## 9. Prompt para pedir ayuda a otra IA

Pasa a la otra IA los documentos pertinentes y una ficha completa. Ejemplo:

```text
Usa como referencia los documentos 01, 04, 06, 11 y 12 de este compendio.
No escribas aún la canción. Primero devuelve:
1. una ficha de intención;
2. un prompt de estilo para Suno de menos de [límite] caracteres;
3. una estructura de letras con etiquetas de sección;
4. tres hipótesis de prueba A/B, cambiando una variable por hipótesis.

Tema: ...
Género dominante: ...
Restricciones: ...
```

Pide siempre que la IA señale qué recomendaciones son estructurales y cuáles experimentales.

## Resumen accionable

- Usa la ficha antes de generar: reduce prompts contradictorios.
- Empieza con una plantilla mínima y una letra estructurada; luego ajusta.
- Define una hipótesis por ronda y registra los resultados.
- Evalúa con rúbrica: no te quedes solo con `me gusta/no me gusta`.
- Si falla la canción, revisa primero letra, hook, prosodia y estructura antes de apilar metatags.
