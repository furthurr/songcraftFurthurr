# Evaluación de letra

## Orden de evaluación

Evalúa en este orden y detente cuando falte información esencial:

```text
sentido → estructura → métrica → rima → prosodia/flow → cantabilidad
```

## 1. Sentido y narrativa

Verifica:

- La canción se resume en una frase.
- La emoción es específica, no una abstracción vacía.
- Narrador, destinatario, tiempo verbal y tono son consistentes.
- Hay imágenes concretas, detalles sensoriales u objeto ancla.
- Cada sección añade información, emoción o perspectiva.
- El puente aporta giro; el estribillo final gana peso.

Señala como riesgo: idea difusa, verso 2 repetitivo, metáforas incompatibles, exceso de abstracción,

## 2. Estructura

| Sección | Función esperada |
|---|---|
| Verso | Detalle, escena, historia, avance |
| Pre-estribillo | Tensión y dirección hacia el hook |
| Estribillo | Idea central, título/hook, mayor intensidad |
| Post-estribillo | Prolongar energía o sub-hook |
| Puente | Contraste, giro o nueva perspectiva |
| Outro | Cierre, eco o disolución |

Comprueba contraste de longitud, densidad, lenguaje, repetición y energía. No todos los géneros
necesitan todas las secciones.

## 3. Métrica española

Para cada línea, devuelve cuando el usuario lo pida o cuando sea relevante:

```text
Línea:
Separación silábica aproximada:
Sinalefas asumidas:
Palabra final: aguda / llana / esdrújula
Ajuste final: +1 / 0 / -1
Sílabas métricas:
```

Reglas:

- Final agudo: suma 1.
- Final llano: no cambia.
- Final esdrújulo: resta 1.
- Sinalefa: une vocal final e inicial entre palabras cuando la pronunciación la permite.
- Sinéresis, diéresis y otras licencias son opciones; no las supongas sin avisar.
- En versos largos, la cesura divide hemistiquios e impide sinalefa entre ellos.

Compara especialmente las líneas que deben llevar la misma melodía. Clasifica la diferencia como:

- `Compatible`: diferencia absorbible por fraseo/melisma.
- `A revisar`: puede forzar la melodía.
- `No evaluable`: falta melodía o compás.

## 4. Rima

Para cada final relevante identifica:

```text
Palabra final:
Terminación desde última sílaba tónica:
Tipo: consonante / asonante / libre / aproximada
Esquema de sección:
Observación:
```

Revisa:

- Consistencia entre consonante y asonante.
- Palabras importantes en posición de rima.
- Repetición de la misma palabra u homófonos sin intención.
- Terminaciones verbales fáciles y pares cliché.
- Rima interna o multisilábica cuando el género lo justifique.
- Dialecto: seseo, yeísmo u otras variantes pueden cambiar la rima.

## 5. Prosodia y flow

Sin música, marca acentos naturales y ofrece una evaluación probable. Con beat, BPM o melodía,

```text
Línea:
Sílabas tónicas aproximadas:
Patrón de acento:
Densidad: baja / media / alta
Riesgo: átona forzada / tónica escondida / falta de aire / ninguno
```

Para rap, pide compás, BPM y flow esperado si se desea precisión. Evalúa densidad, rimas internas,

## 6. Cantabilidad

Comprueba:

- Exceso de sílabas para el tempo o longitud de frase.
- Consonantes acumuladas y trabalenguas involuntarios.
- Finales de notas largas sobre consonante o vocal cerrada.
- Espacios para respirar.
- Encabalgamientos que mejoren o rompan el flujo.

La prueba final recomendada siempre es leer y cantar la letra contra un pulso o base real.

## Formato de informe

```text
Hallazgos bloqueantes
1. [Verificable / Probable] ...

Mejoras prioritarias
1. ...

Decisiones artísticas abiertas
1. ...

Alternativas de reescritura
- Conservadora: ...
- Más rítmica: ...
- Más directa o cantable: ...
```
