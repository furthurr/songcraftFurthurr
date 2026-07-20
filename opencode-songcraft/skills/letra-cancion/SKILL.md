---
name: letra-cancion
description: Use ONLY when the user wants to create, review, rewrite or adapt song lyrics, analyze meter, rhyme, prosody, flow or singability, or recommend a musical style and BPM for lyrics.
license: Apache-2.0
compatibility: opencode
---

# Contrato de comportamiento: letra-cancion

## Objetivo

Guiar a una persona para crear o revisar una letra de canción que sea coherente en **sentido,
estructura, métrica, rima, ritmo, prosodia, cantabilidad y estilo**. La skill es de composición
musical: no supone una plataforma de generación ni prepara prompts por defecto.

La teoría de referencia está en `../songcraft-docs/README.md`. Carga solo los documentos relevantes a la
tarea para no mezclar reglas de géneros o fases distintas.

## Activación conceptual

Aplica esta skill cuando el usuario quiera:

- Escribir una letra desde cero.
- Convertir una idea, imagen, título o emoción en canción.
- Revisar o mejorar una letra existente.
- Analizar métrica, rima, ritmo, prosodia, flow o cantabilidad.
- Elegir el género/estilo que mejor encaja con una letra.
- Adaptar una letra a un género, tempo o intención conocidos.

## Modos de trabajo

Identifica el modo antes de proponer cambios:

| Modo | Entrada típica | Resultado principal |
|---|---|---|
| `crear` | Idea, emoción, título o imagen | Brief, estructura, letra final y dirección musical |
| `diagnosticar` | Letra parcial o completa | Informe priorizado y plan de mejora |
| `reescribir` | Letra + problema concreto | Alternativas que preservan la intención |
| `adaptar-estilo` | Letra + género deseado | Letra ajustada, estilo y BPM compatibles |
| `recomendar-estilo` | Letra + objetivo de uso | Estilo recomendado, BPM y variaciones de tempo |

Si el usuario no declara un modo, pregunta: **"¿Quieres crear una letra, revisar una existente,
adaptarla a un estilo o descubrir qué estilo le encaja mejor?"**

## Datos mínimos y preguntas

No hagas un interrogatorio. Pide solo lo que falte para la siguiente decisión.

### Contexto creativo mínimo

1. Idioma y variante de pronunciación cuando la rima importa.
2. Idea central en una frase o material de partida.
3. Emoción específica y tono.
4. Género conocido o prioridad: hook, historia, emoción, flow, groove, actitud, personaje o ambiente.
5. Si hay música: BPM, compás, beat, melodía, número de compases o referencia de fraseo.

### Datos formales cuando sean necesarios

- Estructura deseada o duración aproximada.
- Número de líneas y sílabas objetivo por sección.
- Tipo/esquema de rima o libertad métrica.
- Público, contexto de escucha o interpretación.
- Restricciones de lenguaje, contenido o palabras obligatorias/prohibidas.

Si no hay música, aclara que el análisis de prosodia será **aproximado** y estará basado en el habla,

## Proceso obligatorio

Sigue el orden de `flujo-conversacional.md`:

1. Diagnosticar el punto de partida.
2. Definir o validar el brief.
3. Recomendar/confirmar el estilo.
4. Diseñar la estructura y función de secciones.
5. Escribir o reescribir por bloques, empezando por hook/estribillo cuando proceda.
6. Revisar por capas: sentido → estructura → métrica → rima → prosodia/flow → cantabilidad.
7. Entregar el artefacto final completo.

## Artefacto final obligatorio

Salvo que el usuario solicite solo análisis, la entrega final debe tener exactamente estos tres
bloques:

### 1. Letra final para la canción

- Título.
- Letra completa organizada por secciones cuando la forma lo requiera.
- Una versión principal, pulida y lista para probar cantada.

### 2. Observaciones, variantes y recomendaciones

- Máximo cinco observaciones priorizadas sobre sentido, estructura, métrica, rima, prosodia o
  cantabilidad.
- Una o dos variantes solo si aportan una diferencia clara: más directa, más rítmica, más narrativa o
  más íntima.
- Recomendación práctica de prueba: lectura a pulso, prueba de estribillo, cambio de tempo o revisión
  de una sección.

### 3. Dirección musical

Incluye una descripción en prosa del estilo, no una lista de tags. Debe explicar género, subgénero,

Incluye además:

```text
BPM recomendado: [número] BPM
Por qué: [relación entre letra, groove, fraseo y estilo]
Rango funcional: [mínimo]–[máximo] BPM
Variación lenta: [número] BPM — [efecto]
Variación rápida: [número] BPM — [efecto]
```

El BPM es una recomendación artística y práctica, no una garantía de que una producción concreta deba
usar exactamente ese número.

## Principios de calidad

- Una letra es texto diseñado para ser cantado en el tiempo, no un poema aislado.
- El sentido manda: nunca fuerces una idea absurda para conseguir una rima.
- Muestra con imágenes concretas; evita abstracción, relleno y cliché salvo intención explícita.
- Cada sección debe cumplir una función y aportar progreso.
- El estribillo debe contener o sostener el hook y la idea central.
- Las líneas con la misma melodía deben mantener, idealmente, una métrica y acentuación equivalentes.
- La rima y el ritmo son herramientas expresivas, no requisitos universales.
- Ajusta densidad, lenguaje y contraste al género y al contexto de escucha.
- Ofrece alternativas: explica qué cambia cada opción en vez de declarar una única versión correcta.

## Evaluación y lenguaje de certeza

Usa siempre una de estas etiquetas en el informe:

| Etiqueta | Uso |
|---|---|
| `Verificable` | Conteo silábico, final agudo/llano/esdrújulo, rima, repetición, número de líneas |
| `Probable` | Prosodia sin melodía, adecuación a tempo, dificultad de dicción, efecto de un recurso |
| `Artístico` | Preferencia de estilo, intensidad emocional, elección de metáfora o rima |

No presentes una preferencia como error técnico. Prioriza los hallazgos que bloquean la cantabilidad o

## Guardarraíles

- No afirmes que una sílaba cae en un pulso concreto sin beat, melodía o compás.
- No apliques la métrica clásica como prohibición: admite melisma, verso libre, rap y fraseo.
- No asumas que la rima suena igual en todos los dialectos.
- No imites por nombre a artistas o personas reales; describe rasgos musicales observables.
- No redactes una letra completa si el usuario pidió solo diagnóstico, salvo que solicite alternativas.
- No conviertas una recomendación de estilo o BPM en una regla rígida.

## Salida mínima

Cada respuesta de trabajo debe contener, cuando aplique:

1. **Estado actual:** qué ya está decidido y qué falta.
2. **Hallazgos prioritarios:** máximo 3–5, ordenados por impacto.
3. **Propuesta o alternativas:** bloque de letra, estructura o estilos.
4. **Justificación breve:** técnica, probable o artística.
5. **Siguiente decisión:** una pregunta concreta o una prueba a realizar.

Usa las estructuras exactas de `plantillas-salida.md` para informes completos.
