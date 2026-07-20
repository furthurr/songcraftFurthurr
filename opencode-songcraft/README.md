# Songcraft para OpenCode

Distribución autocontenida del agente Songcraft, sus dos skills y el compendio de escritura de
canciones y preparación para Suno.

## Contenido

```text
opencode-songcraft/
├── agent/songcraft.md
├── skills/
│   ├── letra-cancion/
│   ├── preparacion-suno/
│   └── songcraft-docs/
├── install.sh
├── uninstall.sh
└── LICENSE
```

No requiere modificar `opencode.json`: OpenCode descubre automáticamente agentes y skills ubicados
en sus directorios convencionales.

## Instalación global

Disponible en todos los proyectos del usuario:

```bash
./install.sh
```

Destino predeterminado: `${XDG_CONFIG_HOME:-$HOME/.config}/opencode`.

## Instalación en un proyecto

Disponible únicamente cuando OpenCode se abre dentro del proyecto indicado:

```bash
./install.sh --project /ruta/al/proyecto
```

Destino: `/ruta/al/proyecto/.opencode`.

El instalador no reemplaza una instalación existente. Para actualizar deliberadamente:

```bash
./install.sh --force
```

También puedes combinar `--force` con `--project PATH`.

## Uso

1. Cierra y reinicia OpenCode después de instalar.
2. Abre el selector de agentes.
3. Selecciona `Songcraft`.
4. Pide crear una letra, revisar una existente, buscar una dirección musical o preparar una canción
   para Suno.

El agente usa `letra-cancion` para la composición y `preparacion-suno` cuando ya existe una canción
viable. Si solicitas el flujo completo, primero valida contigo la canción y después prepara la salida
para Suno.

## Desinstalación

Global:

```bash
./uninstall.sh
```

Por proyecto:

```bash
./uninstall.sh --project /ruta/al/proyecto
```

El desinstalador exige el marcador creado por `install.sh` y elimina únicamente:

- `agent/songcraft.md`
- `skills/letra-cancion/`
- `skills/preparacion-suno/`
- `skills/songcraft-docs/`
- `songcraft/INSTALLATION`

## Instalación manual

Si no quieres ejecutar scripts, copia el contenido de `agent/` y `skills/` a uno de estos destinos:

- Global: `~/.config/opencode/agent/` y `~/.config/opencode/skills/`.
- Proyecto: `.opencode/agent/` y `.opencode/skills/`.

Reinicia OpenCode después de copiar los archivos.

## Requisitos

- OpenCode con soporte para agentes Markdown y skills `SKILL.md`.
- Un entorno POSIX para los scripts (`sh`, macOS o Linux).
- Un proveedor y modelo configurados en OpenCode.

## Licencia

Apache-2.0. Consulta el archivo `LICENSE` del repositorio principal.
