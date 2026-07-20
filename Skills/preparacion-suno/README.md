# Skill agnóstica: preparacion-suno

Esta carpeta contiene la lógica para transformar un artefacto musical terminado en una entrada
optimizada para Suno. Es agnóstica respecto de la IA que ejecute las instrucciones, aunque su salida
sí está destinada específicamente a Suno.

## Entrada esperada

El formato ideal es el artefacto generado por [`../letra-cancion/`](../letra-cancion/):

1. Letra final de la canción.
2. Observaciones, variantes y recomendaciones.
3. Dirección musical con descripción del estilo, BPM recomendado y variaciones.

También admite una entrada incompleta, pero debe pedir los datos ausentes antes de optimizar si faltan
la letra o la dirección musical.

## Salida obligatoria

1. **Letra con metatags y mejoras orientadas a Suno.**
2. **Estilo orientado a una generación óptima.**
3. **Exclude recomendado y justificado.**

## Punto de entrada

1. Lee [`SKILL.md`](SKILL.md).
2. Aplica [`flujo-adaptacion.md`](flujo-adaptacion.md).
3. Consulta [`metatags-y-letra.md`](metatags-y-letra.md) y
   [`estilo-y-exclude.md`](estilo-y-exclude.md).
4. Entrega el formato de [`plantillas-salida.md`](plantillas-salida.md).
5. Usa como referencia principal [`../../docs/README.md`](../../docs/README.md), especialmente los
   documentos `11`–`17`.

Consulta [`ejemplos/artefacto-final.md`](ejemplos/artefacto-final.md) para ver una transformación
completa de letra, estilo y BPM a los tres campos finales.

## Principio rector

Suno interpreta prompts y metatags como señales probabilísticas, no como comandos garantizados. La
skill debe priorizar una letra clara y una estructura musical coherente antes de acumular etiquetas.
