# Adaptación de estilo y Exclude

## 1. Estilo global

Transforma la descripción musical recibida en una secuencia clara, de mayor a menor prioridad:

```text
género dominante, subgénero/época, mood y energía, BPM,
voz, instrumentos principales, producción/textura, arco dinámico
```

Ejemplo de transformación:

```text
Entrada:
EDM oscuro basado en eurodance tardío y synth-pop energético, club, 134 BPM.

Salida:
dark club EDM, late-90s eurodance, high-energy synth-pop, nocturnal and melancholic,
134 BPM, intimate female lead opening into a powerful layered chorus, four-on-the-floor
kick, compressed synth bass, metallic arpeggios and cold pads, wide club production,
restrained verses building into an explosive chorus
```

El idioma del estilo puede ser español o inglés; conserva uno solo dentro del bloque para reducir
ambigüedad. Si la plataforma responde mejor a términos musicales ingleses, usa inglés técnico y
explica la decisión fuera del bloque.

## 2. Criterios de edición

- Máximo dos anclajes de género.
- Mood y energía no deben contradecirse sin asignarse a secciones.
- Nombra 2–4 instrumentos o familias sonoras.
- Conserva el BPM recomendado salvo justificación técnica.
- Describe la voz por carácter, entrega y tratamiento, no por una persona real.
- Incluye el arco dinámico una sola vez.

## 3. Qué pertenece a Exclude

Incluye elementos reconocibles que contradicen el objetivo:

- Géneros o grooves incompatibles.
- Instrumentos que desvían la producción.
- Tipo de voz no deseado.
- Tratamientos recurrentes indeseados: `excessive melisma`, `shouted vocals`, `heavy guitar distortion`.
- Texturas que rompen la estética: `acoustic folk production`, `tropical percussion`.

## 4. Qué no pertenece a Exclude

- Errores de pronunciación concretos.
- Palabras que no quieres que se canten.
- Instrucciones positivas.
- Todo género no mencionado.
- Problemas de estructura de la letra.
- Una lista exhaustiva de instrumentos ausentes.

## 5. Formato

```text
Exclude:
latin pop, tropical percussion, acoustic guitar lead, male vocals, excessive melisma

Justificación:
- latin pop / tropical percussion: evita una deriva hacia radio latina que contradice el club europeo.
- acoustic guitar lead: preserva una paleta completamente sintetizada.
- male vocals: solo si se decidió una voz femenina y la interfaz lo requiere.
- excessive melisma: favorece dicción rítmica y un hook más recto.
```

## 6. Validación

Elimina cualquier exclusión que:

- También aparezca en el estilo positivo.
- No responda a un riesgo real.
- Intente garantizar un comportamiento imposible.
- Sea tan amplia que borre la identidad del género dominante.
