# 14 · Fuentes y nivel de confianza para Suno

Este documento deja trazabilidad de la ampliación sobre Suno. Su función es evitar que una
recomendación promocional, una observación de Reddit o una capacidad que cambió entre versiones se
convierta por accidente en una "regla".

## 1. Cómo se clasificó la información

| Etiqueta | Significado | Cómo usarla |
|---|---|---|
| **Estructural** | Coincidencia amplia y de bajo riesgo: separar estilo/letra, usar secciones | Base de trabajo |
| **Heurística** | Patrón recomendado por varias fuentes, no especificación oficial | Probar y medir |
| **Experimental** | Consejo comunitario, sintaxis avanzada o efecto no reproducible | A/B; no dar por hecho |
| **Variable por versión** | Afirmación ligada a modelos, planes o interfaz de Suno | Comprobar en la interfaz/documentación vigente |

## 2. Síntesis de hallazgos con mayor respaldo

### Estructurales
- Separar el **prompt de estilo** (sonido global) de las **letras** (texto y secciones).
- Ser específico con género/subgénero, mood, voz, instrumentos y producción produce una intención
  más clara que pedir `una canción pop`.
- Etiquetar secciones como `[Verse]`, `[Chorus]`, `[Bridge]` y `[Outro]` ayuda a expresar una forma
  verso-estribillo.
- La letra debe tener una estructura, prosodia y hook propios; el prompting no sustituye esos
  fundamentos.
- Generar varias variantes e iterar es necesario porque el resultado es no determinista.

### Heurísticas útiles
- G-M-I-V: **género, mood, instrumentos, voz** como esqueleto inicial.
- Limitar el prompt a una dirección principal, pocos instrumentos protagonistas y una voz definida.
- Describir voz mediante carácter, entrega y tratamiento.
- Usar un BPM aproximado para anclar la sensación rítmica.
- Describir un arco de energía (`verso contenido → coro expansivo`) en lugar de adjetivos opuestos.

### Experimentales
- Metatags detallados de mezcla, efectos, persona o llamadas a secciones previas.
- Barras verticales `|` como sintaxis de apilamiento.
- Interpretación fija de paréntesis, mayúsculas, guiones y puntos suspensivos.
- Exclusiones negativas como si fueran comandos fiables.
- Cualquier lista de cientos de tags presentada como "verificada" sin documentación oficial pública.

## 3. Fuentes proporcionadas y contenido aprovechado

| Fuente | Tipo | Aporte extraído | Tratamiento |
|---|---|---|---|
| [HookGenius: prompt guide](https://hookgenius.app/learn/suno-prompt-guide-2026/) | Guía comercial | Separación estilo/letras, fórmula por capas, tags de sección, errores comunes | Heurísticas; no se copian sus afirmaciones de rendimiento como hechos |
| [SunoPrompter](https://www.sunoprompter.com/) | Portal de recursos | Confirma el enfoque por prompts, género y guías | Contexto general; la portada no aporta metodología detallada |
| [OpenMusicPrompt EN](https://openmusicprompt.com/blog/suno-ai-metatags-guide) | Guía comercial | Taxonomía de estructura, voz, instrumentos, energía y efectos | Etiquetas básicas como referencia; avanzadas como experimentales |
| [OpenMusicPrompt ES](https://openmusicprompt.com/es/blog/suno-ai-metatags-guide) | Traducción de la guía | Terminología en español y mismas categorías | Misma clasificación que la guía EN |
| [Suno: Style Prompt](https://suno.com/style/style-prompt) | Página oficial de exploración | Existencia de una superficie de estilo en Suno | No ofrecía documentación técnica accesible en la consulta |
| [best-suno-ai-prompts](https://github.com/AlijeeWrites/best-suno-ai-prompts) | Repositorio comunitario | Fórmula género + instrumentos + mood + producción; catálogo de géneros | Heurística y banco de vocabulario, no garantía |
| [suno-v55-prompt-guide](https://github.com/AlijeeWrites/suno-v55-prompt-guide) | Repositorio comunitario | Capas de prompt, ejemplos por objetivo, consejos de iteración | Heurística; funciones/versiones deben verificarse |
| [r/SunoAI](https://www.reddit.com/r/SunoAI/) | Comunidad | Discusión práctica y límites percibidos | Comunidad; no fuente normativa |
| [Master prompting doc](https://www.reddit.com/r/SunoAI/comments/1ryouzb/updated_my_master_prompting_doc/) | Post comunitario | Modelo de señales por capas, registro de pruebas, advertencia de probabilidades | Experimental/heurístico; el propio post no es documentación oficial |
| [Guide to meta tags](https://www.reddit.com/r/SunoAI/comments/1mym1dm/the_guide_to_meta_tags_in_suno_ai_take_control_of/) | Post comunitario | Etiquetas locales y debate sobre su inconsistencia | Experimental; se incorporó también el desacuerdo en comentarios |
| [YouTube: 200 genres / GMI](https://www.youtube.com/watch?v=ck6IwiJkEP8) | Video patrocinado | Marco G-M-I-V para describir géneros | Heurística simple; no catálogo definitivo |

## 4. Observaciones sobre el material de Reddit

Se leyeron los dos posts mediante la versión accesible de Reddit. Aportan ideas valiosas, pero sus
propios comentarios muestran desacuerdo relevante:

- Varias personas reportan que los metatags y el lenguaje natural ayudan.
- Otras cuestionan que ciertos tags complejos tengan pruebas repetibles.
- Hay consenso práctico en evitar sobrecargar y en usar etiquetas de sección.
- No hay consenso fiable sobre barras verticales, rangos vocales, efectos concretos o exclusiones.

Por ello, los documentos `12` y `13` convierten esas afirmaciones en hipótesis medibles, no en reglas.

## 5. Datos que requieren comprobación antes de usarse como norma

No se fijan en esta documentación como verdades permanentes:

- Límites de caracteres por modelo o plan.
- Nombres, disponibilidad o requisitos de funciones de Suno (por ejemplo, voces, modelos
  personalizados, edición, extensiones o controles de interfaz).
- Duración máxima de una generación.
- Derechos comerciales, copyright, distribución y condiciones de uso.
- Si Suno acepta/rechaza nombres de artistas, o cómo los trata en cada campo.
- Interpretación exacta de metatags avanzados en una versión concreta.

Consulta siempre los términos y la documentación oficial vigentes antes de publicar, distribuir o usar
una función de cuenta de pago.

## 6. Protocolo para actualizar esta base

Cuando incorpores una fuente nueva:

1. Registra URL, autor, tipo de fuente y fecha de consulta.
2. Distingue **qué afirma la fuente** de **qué has comprobado** tú.
3. Clasifica cada recomendación con el sistema de la sección 1.
4. Si es experimental, añade un caso de prueba al registro de `13`.
5. No elimines una recomendación anterior sin dejar constancia de qué cambió: modelo, interfaz,
   evidencia o resultado de tus pruebas.

## 7. Actualización oficial: Suno Pro v5.5

Los documentos `15`–`17` se basan prioritariamente en fuentes oficiales consultadas el **16 de julio
de 2026**. Su fecha de corte es importante: Suno modifica modelos, planes, precios y funciones con
frecuencia.

| Fuente oficial | Fecha publicada/editada | Uso en esta base |
|---|---:|---|
| [Lanzamiento de v5.5](https://suno.com/blog/v5-5) | 26 mar. 2026 | Alcance de v5.5, Voices, Custom Models y My Taste |
| [Precios de Suno](https://suno.com/pricing) | Consultada 16 jul. 2026 | Diferencia Pro/Premier y capacidades incluidas |
| [Release Notes](https://suno.com/release-notes) | Hasta 15 jul. 2026 | Cambios recientes: letras web, stems, v5.5 y Create |
| [Base de conocimiento v5.5](https://help.suno.com/en/categories/2327233-v-5-5-voices-custom-models-my-taste) | 2026 | Manuales de Voices, Custom Models y My Taste |
| [Voices](https://help.suno.com/en/articles/11362369) | 1 may. 2026 | Requisitos y flujo de creación de voz |
| [Custom Models](https://help.suno.com/en/articles/11362497) | 26 mar. 2026 | Requisitos, propiedad de las cargas y privacidad |
| [Replace Section](https://help.suno.com/en/articles/3271873) | 19 dic. 2025 | Edición puntual para Pro/Premier |
| [Extend](https://help.suno.com/en/articles/2409601) | 19 dic. 2025 | Continuación y nueva terminación |
| [Advanced Stem Separation](https://help.suno.com/en/articles/12702337) | 12 jun. 2026 | Modos, créditos y diferencia Pro/Premier |
| [Términos de servicio](https://suno.com/terms) | 26 mar. 2026 | Límites sobre voz, cargas, derechos y uso comercial |

## Resumen accionable

- La guía de Suno se apoya en múltiples fuentes, pero ninguna sustituye a la documentación oficial.
- Las secciones y la claridad del prompt son fundamentos; los metatags complejos son experimentos.
- Verifica capacidades, límites y derechos en Suno antes de depender de ellos.
- Usa `13` para convertir consejos de comunidad en resultados repetibles propios.
