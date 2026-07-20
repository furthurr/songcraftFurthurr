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

.opencode/agents/
└── songcraft.md            Agente especializado para usar ambas skills

opencode-songcraft/         Distribución autocontenida e instalable para OpenCode
├── agent/                  Agente primario Songcraft
├── skills/                 Skills y los 18 módulos de conocimiento
├── install.sh              Instalación global o por proyecto
└── uninstall.sh            Desinstalación segura
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

## Agente para OpenCode

El repositorio incluye el agente primario `songcraft`, limitado a la creación, revisión y adaptación
de letras, dirección musical y preparación para Suno.

1. Abre este repositorio como proyecto en OpenCode.
2. Reinicia OpenCode si acabas de clonar el repositorio o actualizar su configuración.
3. Selecciona `Songcraft` en el selector de agentes.
4. Describe una idea, pega una letra o pide preparar una canción para Suno.

El agente carga `letra-cancion` durante la composición y `preparacion-suno` cuando ya existe una letra
viable. Para un flujo completo, primero entrega y valida la canción y después genera los tres bloques
orientados a Suno.

### Instalación directa

La carpeta [`opencode-songcraft/`](opencode-songcraft/README.md) contiene todo lo necesario para usar
Songcraft en cualquier instalación de OpenCode, sin depender de la estructura del repositorio.

Instalación global para todos tus proyectos:

```bash
./opencode-songcraft/install.sh
```

Instalación limitada a un proyecto:

```bash
./opencode-songcraft/install.sh --project /ruta/al/proyecto
```

Después de instalar, reinicia OpenCode y selecciona `Songcraft`.

## Punto de entrada rápido

- [Documentación de referencia](docs/README.md)
- [Skill de composición de letras](Skills/letra-cancion/README.md)
- [Skill de preparación para Suno](Skills/preparacion-suno/README.md)
- [Paquete instalable para OpenCode](opencode-songcraft/README.md)

## Autor

**Pedro G. V.** @furthurr

- GitHub: https://github.com/furthurr
- Email: pedrogvas@gmail.com

## Licencia

Apache-2.0
