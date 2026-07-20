# 16 · Suno Pro v5.5: flujos recomendados

Estos flujos están diseñados para **Suno Pro v5.5** a fecha de 16 de julio de 2026. Aplican una regla
simple: genera amplio al principio, pero edita **puntualmente** cuando ya exista una toma prometedora.
No regeneres una canción completa para arreglar una palabra, un outro o un stem.

## 1. Flujo principal: de idea a canción terminada

```text
brief → letra y hook → prompt base → variantes → selección → edición puntual
      → extend/outro → stems → mezcla externa o publicación
```

### Paso 1: brief de una página

Rellena la ficha de `13`:

- Idea en una frase, título/hook y emoción dominante.
- Género principal, tempo aproximado y arco de energía.
- Voz, instrumentos núcleo y textura.
- Restricción de esta generación: por ejemplo, `sin guitarras eléctricas`.

No empieces por una lista de 30 etiquetas. El brief debe permitir que otra persona entienda la
canción sin escucharla.

### Paso 2: escribir antes de producir

Usa `01`, `04` y `06` para asegurar:

- Estribillo con título/hook claro.
- Verso 2 que aporta algo nuevo.
- Líneas que caben en el tempo y no fuerzan acentos.
- Un puente con contraste real.

El editor web de letras puede ayudar a revisar rimas y alternativas; el criterio final debe ser
cantarlas en voz alta contra un pulso.

### Paso 3: prompt base y variantes

Redacta con la fórmula de `11`:

```text
género + mood/energía + BPM + voz + 2–4 instrumentos + textura + arco
```

Genera varias variantes sin cambiar el prompt. Elige por criterios definidos, no por la primera que
parezca "aceptable": dicción, hook, arreglo, contraste y naturalidad de voz.

### Paso 4: editar el problema, no toda la canción

| Si falla… | Herramienta Pro recomendada |
|---|---|
| Una palabra, línea o bloque concreto | **Replace Section** |
| El final o duración | **Extend** y luego `Get Whole Song` |
| Inicio/final sobrante | **Crop** |
| Instrumento o voz que sobra | **Exclude** en nueva variante o **Split from Mix** después |
| Necesitas instrumental/voz aislada | **Auto Split** o **Split from Mix** |
| Necesitas multitrack detallado | Exportar a DAW; Studio no está incluido en Pro |

## 2. Flujo para canción con tu Voice

Usa este flujo cuando la identidad del proyecto depende de tu propia voz, no simplemente cuando
quieres una vocal aleatoria distinta.

1. Prepara una muestra vocal limpia, preferentemente acapella, que cubra tu entrega habitual.
2. Crea y verifica la Voice. Da un nombre que indique registro/uso (`Voz íntima`, `Voz pop alta`).
3. Escribe una canción dentro del rango y estilo donde esa Voice funcione mejor.
4. Selecciona v5.5 y la Voice en el formulario de creación.
5. Empieza con Audio Influence alto si la similitud vocal es prioritaria.
6. Genera varias interpretaciones con la misma letra antes de cambiar el prompt.
7. Si el resultado no se parece a ti, diagnostica en este orden:
   - ¿v5.5 y la Voice están seleccionados?
   - ¿La muestra era clara y representativa?
   - ¿El género/tempo respetan tu voz?
   - ¿Audio Influence es suficiente?
   - ¿La letra usa un registro o densidad que no puedes cantar?

No intentes corregir una Voice mala con cientos de metatags. Regraba una referencia mejor o baja la
exigencia del arreglo.

## 3. Flujo para Custom Model

Un Custom Model debe representar un **catálogo coherente**, no una lista de canciones favoritas.

```text
definir estética → seleccionar 6+ pistas propias coherentes → crear modelo
                → prompt y letra idénticos: base vs. custom → comparar → decidir
```

### Protocolo de comparación

1. Prepara un prompt de 1–2 géneros, mood, voz, instrumentación y BPM.
2. Genera varias variantes con v5.5 base.
3. Genera el mismo número con el Custom Model.
4. Puntúa ambas rondas en identidad, calidad de voz, arreglo, originalidad y obediencia al prompt.
5. Conserva el Custom Model si añade coherencia sin convertir todo en la misma canción.

Evita modificar prompt, letra, Voice y modelo a la vez: perderás la causa de cualquier mejora.

## 4. Flujo de letra y estructura con v5.5

```text
idea → ficha → hook → estructura → borrador → lectura al pulso → editor de letras → generación
```

1. Define la idea en una frase y escribe el hook antes de los versos.
2. Usa etiquetas simples: `[Verse 1]`, `[Pre-Chorus]`, `[Chorus]`, `[Bridge]`, `[Outro]`.
3. Añade señales locales solo si resuelven una intención (`[Bridge: stripped back]`).
4. Revisa métrica y prosodia antes de gastar créditos.
5. En el editor, usa variaciones de una línea para explorar, pero compara contra el objetivo de la
   canción, no contra frases aisladas ingeniosas.

## 5. Flujo de edición por secciones

**Replace Section** es la herramienta adecuada cuando una parte de 10–30 segundos no funciona y el
resto sí.

1. Abre `More Actions → Edit → Replace Section`.
2. Selecciona solo el tramo defectuoso.
3. Cambia la letra, inserta un break instrumental o ajusta lo mínimo necesario.
4. Crea las dos alternativas ofrecidas y selecciona una.
5. Escucha el empalme antes y después de la sección; no evalúes el reemplazo aislado.
6. Genera la canción completa actualizada cuando la transición sea convincente.

Úsalo para corregir dicción, un verso flojo, un puente repetitivo o un instrumental mal situado. No
lo uses para rehacer el género entero: para eso, vuelve al prompt base o prueba Cover/Remix si la
interfaz lo ofrece para tu canción.

## 6. Flujo de Extend y finales

**Extend** sirve para alargar una canción o reescribir su final.

1. Elige el punto desde el que conservarás el original.
2. Escribe solo las letras y la dirección necesarias para el tramo nuevo.
3. Si el objetivo es cerrar, incluye un outro breve, una repetición del hook o un final instrumental.
4. Compara extensiones por la transición, no solo por el nuevo material.
5. Cuando una funcione, usa `Get Whole Song` para unirla al original.

No extiendas automáticamente una toma mediocre. Primero recorta o sustituye el problema que hace que
la canción no funcione.

## 7. Flujo de stems para Pro

Pro dispone de dos modos de separación:

| Objetivo | Herramienta | Coste documentado a fecha de corte |
|---|---|---:|
| Tener una vista rápida de hasta 12 categorías | Auto Split | 50 créditos |
| Aislar voz, bajo, guitarra u otro elemento, más su complemento | Split from Mix | 10 créditos por extracción; 20 por el par de stems |

Buenas decisiones:

- Usa **Split from Mix** si solo necesitas una acapella, instrumental de directo o un instrumento.
- Reserva **Auto Split** para una mezcla completa que realmente vas a llevar a un DAW.
- Confirma que el instrumento existe: Suno advierte que una petición de un elemento ausente puede usar
  créditos y no devolver un stem útil.
- Etiqueta y archiva los stems inmediatamente con canción, versión, BPM y fecha.

Los stems se regeneran para corresponder con la mezcla, no equivalen necesariamente a las pistas
originales de una grabación tradicional. Escúchalos antes de usarlos como si fueran material final.

## 8. Flujo de publicación y respaldo

1. Conserva prompt, letra, modelo, Voice, fecha y versión de la toma elegida.
2. Descarga el máster y, si habrá mezcla externa, los stems necesarios.
3. Revisa que posees derechos de toda carga, letra y voz utilizada.
4. Confirma que el output se generó durante una suscripción Pro/Premier si necesitas uso comercial.
5. Revisa los términos vigentes y tu distribuidor antes de declarar copyright o distribuir.

## Resumen accionable

- Genera completo al inicio; después corrige de forma local con Replace, Extend y Crop.
- Usa Voice para identidad vocal y Custom Model para identidad de catálogo, no por curiosidad en cada canción.
- Prueba base contra personalización con la misma letra y prompt.
- Con Pro, usa Split from Mix con intención; Auto Split cuesta más y Advanced Split es Premier.
- Archiva cada decisión: el prompt no basta para reproducir un resultado v5.5.
