# Compendio de Letras y Prompting para Suno

Documentación de estudio sobre **cómo se escriben las letras de las canciones** y cómo trasladar una
intención creativa a Suno: fundamentos, estructura, métrica, rima, ritmo/flow, recursos literarios,

> Alcance: los documentos `00`–`10` tratan el oficio de escribir letras. Los documentos `11`–`14`
> forman un bloque separado de **prompting para Suno**, basado en fuentes de terceros y comunidad. No
> sustituyen la documentación oficial de Suno ni prometen que una etiqueta produzca siempre el mismo
> resultado: el modelo y su interfaz cambian con el tiempo.

## Cómo usar esta documentación

- Cada archivo es autocontenible pero están pensados para leerse en orden.
- Los números del prefijo indican una ruta de aprendizaje progresiva (de lo general a lo técnico y
  luego a lo práctico).
- Al final de cada documento hay una sección **"Resumen accionable"** y, cuando aplica,
  **"Errores comunes"**.
- El documento `09` reúne plantillas, checklists y ejercicios para aplicar el bloque de letras.
- El `10` es un glosario transversal para consultar términos.
- El bloque `11`–`14` se consulta cuando la letra ya existe o cuando se quiere diseñar la generación
  de Suno desde el principio.

## Relación con la skill agnóstica

La lógica conversacional que consume este compendio está en
[`../Skills/letra-cancion/`](../Skills/letra-cancion/). Esta documentación sigue siendo la **fuente
de verdad**: la skill no duplica su teoría, sino que la aplica por fases. Cualquier IA puede recibir
este archivo como punto de entrada y cargar después los documentos indicados para cada tarea.

La adaptación posterior de un artefacto de canción para Suno está en
[`../Skills/preparacion-suno/`](../Skills/preparacion-suno/). Esta segunda skill utiliza
principalmente los documentos `11`–`17` y no sustituye la composición realizada por `letra-cancion`.

### Para estudio con IA

Estos archivos están escritos en Markdown plano, con jerarquía de encabezados clara y ejemplos
etiquetados, de modo que cualquier modelo de lenguaje pueda ingerirlos como contexto. Si vas a pasar
esta base a una IA:

- Pásale primero el `README.md` (mapa) y luego el/los documentos relevantes a la tarea.
- Usa los títulos de sección como anclas para pedir explicaciones o ejercicios concretos.
- El glosario (`10`) sirve como diccionario de términos compartido.

## Índice

| # | Documento | Contenido |
|---|-----------|-----------|
| 00 | [Fundamentos](00-fundamentos.md) | Qué es una letra, relación letra–música, prosodia, conceptos base |
| 01 | [Estructura de la canción](01-estructura-de-la-cancion.md) | Secciones (verso, estribillo, puente…) y formas (verso-estribillo, AABA, blues…) |
| 02 | [Métrica y versificación](02-metrica-y-versificacion.md) | Cómputo silábico, sinalefa, tipos de verso, estrofas, número de sílabas |
| 03 | [Rima](03-rima.md) | Consonante/asonante, esquemas, rima interna, multisilábica, técnica de rap |
| 04 | [Ritmo, prosodia y flow](04-ritmo-prosodia-y-flow.md) | Acentos, cadencia, encaje con el compás, síncopa, flow en rap |
| 05 | [Recursos literarios](05-recursos-literarios.md) | Metáfora, imagen, aliteración, figuras retóricas al servicio de la letra |
| 06 | [Temática, narrativa y hooks](06-tematica-narrativa-y-hooks.md) | Idea central, punto de vista, storytelling, títulos y ganchos |
| 07 | [Proceso creativo y métodos](07-proceso-creativo-y-metodos.md) | Flujos de trabajo, co-escritura, edición, reescritura, bloqueos |
| 08 | [Géneros y estilos](08-generos-y-estilos.md) | Convenciones líricas por género (pop, rap, rock, balada, folk, country, reguetón…) |
| 09 | [Plantillas, checklists y ejercicios](09-plantillas-checklists-ejercicios.md) | Herramientas prácticas para escribir y revisar |
| 10 | [Glosario y referencias](10-glosario-y-referencias.md) | Definiciones y fuentes |
| 11 | [Prompting de estilo para Suno](11-suno-prompting-de-estilo.md) | Campos, fórmula G-M-I-V, BPM, voz, producción e iteración |
| 12 | [Letras y metatags en Suno](12-suno-letras-y-metatags.md) | Etiquetas estructurales, señales locales, límites y uso responsable |
| 13 | [Plantillas y experimentación Suno](13-suno-plantillas-y-experimentacion.md) | Plantillas, banco de prompts, matriz de pruebas y diagnóstico |
| 14 | [Fuentes y nivel de confianza Suno](14-suno-fuentes-y-nivel-de-confianza.md) | Trazabilidad, fecha de consulta y separación entre hechos y heurísticas |
| 15 | [Suno Pro v5.5: referencia actual](15-suno-pro-v5-5-referencia-actual.md) | Capacidades oficiales, límites, plan Pro y personalización a fecha de corte |
| 16 | [Suno Pro v5.5: flujos recomendados](16-suno-pro-v5-5-flujos-recomendados.md) | Flujos de letras, Voice, Custom Models, edición, Extend y stems |
| 17 | [Suno Pro v5.5: calidad y límites](17-suno-pro-v5-5-calidad-y-limites.md) | Recomendaciones prácticas, control de créditos, derechos y matriz de decisión |

## Mapa conceptual rápido

```
LETRA DE CANCIÓN Y SUNO
├── QUÉ dices .............. tema, mensaje, historia, emoción      → 06
├── CÓMO lo ordenas ....... estructura y secciones                → 01
├── CON QUÉ palabras ...... recursos literarios, lenguaje         → 05
├── CON QUÉ forma ......... métrica (sílabas, versos, estrofas)   → 02
│                          rima (sonido de los finales)          → 03
│                          ritmo/flow (acentos, encaje musical)  → 04
├── PARA QUÉ contexto ..... género y estilo                       → 08
├── CÓMO trabajas ......... proceso, edición, herramientas        → 07, 09
└── CÓMO lo trasladas ..... estilo, letras, metatags, pruebas     → 11, 12, 13, 14
                             Pro v5.5 y flujo de producción       → 15, 16, 17
```

## Principio rector

Una letra no es un poema con música encima: es **texto diseñado para ser cantado en el tiempo**. Por
eso conviven dos sistemas rítmicos —el del lenguaje (acentos naturales de las palabras) y el de la
música (compás, pulso)—, y gran parte del oficio consiste en hacerlos coincidir sin forzar ninguno.
Ese punto de encuentro se llama **prosodia** y es el hilo que atraviesa todos estos documentos.
