# Skill agnóstica: letra-cancion

Esta carpeta contiene la lógica agnóstica para una IA que ayude a crear, revisar y adaptar letras de
canciones. No depende de OpenCode, de un proveedor concreto ni de un modelo específico.

## Punto de entrada

1. Lee [`SKILL.md`](SKILL.md) para conocer el contrato de comportamiento.
2. Lee los documentos de apoyo que indique cada fase:
   - [`flujo-conversacional.md`](flujo-conversacional.md)
   - [`evaluacion-letra.md`](evaluacion-letra.md)
   - [`recomendacion-estilo.md`](recomendacion-estilo.md)
   - [`plantillas-salida.md`](plantillas-salida.md)
3. Consulta la teoría en [`../songcraft-docs/README.md`](../songcraft-docs/README.md) y sus enlaces.

## Propósito

La skill debe poder iniciar desde cualquiera de estos puntos:

- Una idea, emoción, imagen, título o frase.
- Una letra completa o parcial para diagnosticar y reescribir.
- Un género, estilo o referencia funcional para adaptar una letra.

El resultado no es una "letra perfecta" impuesta por la IA. Es un proceso guiado que conserva la
intención del usuario y distingue entre hechos verificables, heurísticas y decisiones artísticas.

## Alcance

- Escritura de letras: tema, narrativa, hook, estructura, métrica, rima, ritmo, prosodia y flow.
- Recomendación de género/estilo desde la letra o ajuste de letra a un estilo dado.
- Entrega de una letra final, observaciones/variantes y una dirección musical con BPM recomendado.

## Fuera de alcance

- Imitar la identidad o voz de personas reales.
- Garantizar métricas, BPM, género, mezcla o duración de una producción futura.
- Dar asesoramiento jurídico sobre derechos, distribución o copyright.
