# Songcraft Furthurr

Compendio de escritura de letras de canciones y sistema de skills para composición
asistida. Incluye teoría musical aplicada a letras, prompting para Suno y dos skills
agnósticas reutilizables por cualquier IA.

## Estructura

```text
docs/                       Documentación de referencia (18 módulos)
├── 00–10                   Teoría de letras: fundamentos, estructura, métrica, rima,
│                           ritmo, recursos, narrativa, proceso, géneros, ejercicios
├── 11–14                   Prompting y metatags para Suno
└── 15–17                   Suno Pro v5.5: referencia, flujos y calidad

Skills/
├── letra-cancion/          Skill agnóstica de composición de letras
└── preparacion-suno/       Skill agnóstica de adaptación para Suno
```

## Qué resuelve

- Escribir, revisar y adaptar letras con métrica, rima, prosodia y estructura.
- Recomendar estilo musical y BPM a partir de una letra o una intención.
- Preparar letras con metatags, estilo y Exclude para Suno Pro v5.5.
- Servir como base de conocimiento para cualquier IA conversacional.

## Cómo usar

1. Lee `docs/README.md` como punto de entrada a la teoría.
2. Lee `Skills/letra-cancion/SKILL.md` para el flujo de composición.
3. Lee `Skills/preparacion-suno/SKILL.md` para la adaptación a Suno.
4. Pasa los archivos relevantes como contexto a tu IA preferida.

## Punto de entrada rápido

- [Documentación de referencia](docs/README.md)
- [Skill de composición de letras](Skills/letra-cancion/README.md)
- [Skill de preparación para Suno](Skills/preparacion-suno/README.md)

## Autor

**Pedro G. V.** @furthurr

- GitHub: https://github.com/furthurr
- Email: pedrogvas@gmail.com

## Licencia

Apache-2.0
