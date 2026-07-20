# 17 · Suno Pro v5.5: calidad y límites

Guía de decisión para obtener mejores resultados con Suno Pro v5.5 sin confundir recomendaciones de
producción con capacidades garantizadas. Fecha de corte: **16 de julio de 2026**.

## 1. Las mejores recomendaciones, en orden de impacto

1. **Define una canción antes de describir un sonido.** Tema, hook, punto de vista, estructura y
   energía deben existir antes del prompt.
2. **Usa un estilo específico pero no saturado.** Un género dominante, un subgénero opcional, 2–4
   instrumentos, voz y textura son más controlables que una enciclopedia de tags.
3. **Alinea letra y estilo.** Mood, tempo, densidad silábica y entrega vocal deben contar la misma
   historia.
4. **Genera variantes controladas.** Cambia una variable cada ronda; de otro modo no aprenderás.
5. **Edita localmente.** Replace Section, Extend y Crop preservan los aciertos de una toma buena.
6. **Personaliza solo donde aporte valor.** Voice para identidad vocal; Custom Model para estética
   coherente; My Taste para ideas, no para decidir por ti.
7. **Exporta y respalda.** Un output útil sin prompt, letra, fecha y assets asociados es difícil de
   reutilizar o defender en una producción real.

## 2. Matriz de decisión: qué herramienta usar

| Necesidad | Primera opción | Evita |
|---|---|---|
| Encontrar el género/sonido | Prompt base + 3–4 variantes | Custom Model antes de tener dirección |
| Mejorar una línea o dicción | Reescribir letra + Replace Section | Regenerar la canción completa |
| Cambiar el final | Extend | Añadir versos sin arco ni cierre |
| Cantar con identidad propia | Voice limpia + v5.5 + Audio Influence | Usar una voz ajena o una grabación ruidosa |
| Coherencia de un proyecto propio | Custom Model con 6+ pistas consistentes | Mezclar material de estilos opuestos |
| Instrumental para directo | Split from Mix | Auto Split si solo necesitas voz/instrumental |
| Mezcla multitrack profunda | DAW externo; Premier si Studio conviene | Asumir que Pro trae Studio |
| Evitar un elemento | Exclude en Advanced Options | Contradecir el prompt con diez exclusiones |

## 3. Calidad de letra antes de gastar créditos

Suno no elimina los problemas de una letra. Antes de generar, puntúa de 1 a 5:

| Criterio | Pregunta |
|---|---|
| Hook | ¿El título se recuerda y cabe naturalmente en el estribillo? |
| Progresión | ¿El verso 2 y puente añaden información/emoción? |
| Prosodia | ¿Las sílabas tónicas caen bien sobre el pulso previsto? |
| Dicción | ¿Las líneas se pueden decir a tempo sin tropezar? |
| Contraste | ¿Se distingue verso, pre, estribillo y puente? |
| Especificidad | ¿Hay imágenes concretas en vez de abstracciones y clichés? |

Si alguna respuesta es `1` o `2`, reescribe antes de generar. El crédito más barato es el que no se
gasta corrigiendo un problema que ya era visible en el papel.

## 4. Calidad de prompt antes de generar

Checklist:

- [ ] Un género dominante y, como mucho, una fusión secundaria intencional.
- [ ] Mood y energía compatibles con la letra.
- [ ] BPM aproximado cuando el tempo sea importante.
- [ ] Voz definida por carácter, entrega y tratamiento.
- [ ] Dos a cuatro instrumentos con función clara.
- [ ] Una textura/producción concreta.
- [ ] Un arco de energía si la canción debe evolucionar.
- [ ] Solo una exclusión si hay un elemento que debes evitar.
- [ ] No hay nombres de personas que pretendan imitarse, ni cargas sobre las que no tienes derechos.

## 5. Control de créditos en Pro

Pro incluye una bolsa mensual; los créditos no deben condicionar la calidad de la letra, sino la
**disciplina experimental**.

### Presupuesto por canción

1. **Exploración:** reserva una cantidad fija para estilo/voz iniciales.
2. **Convergencia:** elige una toma y dedica nuevas generaciones a una sola mejora cada vez.
3. **Edición:** reemplaza partes defectuosas, no el todo.
4. **Stems:** gástalos solo cuando la canción ya haya superado tu rúbrica.
5. **Archivo:** conserva la mejor versión y desecha pruebas claramente fallidas con anotación.

### Costes oficiales conocidos al corte

- Auto Split: 50 créditos por extracción de hasta 12 stems.
- Split from Mix: 10 créditos por extracción; 20 créditos por el par que produce (stem elegido +
  complemento).

Los costes de otras acciones, la disponibilidad de créditos extra y la lógica de generación pueden
cambiar: consulta siempre la interfaz vigente antes de planificar un lote.

## 6. Límites técnicos y cómo trabajar con ellos

| Límite | Consecuencia | Respuesta práctica |
|---|---|---|
| Generación no determinista | Mismo prompt, resultados distintos | Genera varias tomas y puntúa con criterios |
| Prompt no es un comando | Puede ignorar detalles | Reduce ambigüedad; prueba una variable |
| Output puede no ser único | Riesgo de similitud entre resultados | No bases identidad de marca en una toma sola |
| Stems generados/regenerados | No son necesariamente pistas originales | Revisa artefactos y mezcla antes de publicar |
| Voice depende de la referencia | Ruido, rango o género incompatibles degradan la similitud | Mejora la muestra y respeta el rango |
| Time signature en Studio | El ajuste de rejilla no se envía aún al modelo generativo | No dependas de él para exigir compás de una nueva generación |

## 7. Límites de plan: Pro frente a Premier

No planees un flujo de Pro con capacidades que la documentación oficial reserva a Premier:

- Suno Studio.
- Advanced Split granular.

Pro sí permite crear y editar canciones, usar v5.5, Voices, Custom Models, cargas prolongadas y los
dos modos básicos de stems. Si la necesidad es multitrack, warp markers, Remove FX o control de
rejilla, usa un DAW externo o evalúa Premier por la función concreta, no por promesas genéricas.

## 8. Derechos, privacidad y publicación

Antes de subir o distribuir:

- Sube solo audio, voz, samples y canciones sobre los que tengas derechos y consentimientos.
- Crea Voice Models únicamente de tu propia voz.
- No asumas que un derecho comercial equivale a copyright garantizado: Suno lo niega expresamente.
- Trata letras, prompts, archivos cargados y Voice Model como información creativa sensible.
- Comprueba términos, plan activo y condiciones de distribuidor en la fecha exacta de publicación.

## 9. Registro mínimo por canción

```text
ID / título:
Fecha y versión de Suno:
Plan activo:
Prompt de estilo exacto:
Exclude:
Letra exacta y etiquetas:
Voice / Custom Model / My Taste (estado):
Tomas generadas:
Toma elegida y motivo:
Ediciones (Replace, Extend, Crop):
Stems extraídos y coste:
Archivos exportados:
Estado de derechos de cargas y publicación:
```

Este registro es útil tanto para aprender como para repetir una dirección musical meses después.

## 10. Regla final

**Suno Pro v5.5 funciona mejor como instrumento de iteración, no como máquina de resultados finales
en un clic.** La calidad aparece al combinar una letra bien escrita, una intención sonora concreta,
comparaciones controladas y edición selectiva.

## Resumen accionable

- Corrige letra y hook antes de generar; el prompting no arregla fundamentos débiles.
- Usa prompts compactos y coherentes; itera una variable por vez.
- Personaliza con Voice/Custom Model solo después de tener una línea base.
- Sustituye o extiende lo necesario; no destruyas una toma buena para corregir un detalle.
- Reserva stems y créditos para canciones que ya superaron una rúbrica de calidad.
- Mantén registro y verifica derechos, plan y funciones antes de publicar.
