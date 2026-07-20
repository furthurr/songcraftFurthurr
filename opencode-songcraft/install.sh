#!/bin/sh

set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SCOPE=global
PROJECT_DIR=
FORCE=0

usage() {
  cat <<'EOF'
Usage:
  ./install.sh [--global] [--force]
  ./install.sh --project PATH [--force]

Options:
  --global        Install in the OpenCode user configuration (default).
  --project PATH  Install only in PATH/.opencode.
  --force         Replace an existing Songcraft installation.
  --help          Show this help.
EOF
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --global)
      SCOPE=global
      shift
      ;;
    --project)
      if [ "$#" -lt 2 ]; then
        printf '%s\n' "Error: --project requires a path." >&2
        exit 2
      fi
      SCOPE=project
      PROJECT_DIR=$2
      shift 2
      ;;
    --force)
      FORCE=1
      shift
      ;;
    --help|-h)
      usage
      exit 0
      ;;
    *)
      printf 'Error: unknown option: %s\n' "$1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

if [ "$SCOPE" = global ]; then
  CONFIG_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}
  TARGET=$CONFIG_HOME/opencode
else
  if [ ! -d "$PROJECT_DIR" ]; then
    printf 'Error: project directory does not exist: %s\n' "$PROJECT_DIR" >&2
    exit 2
  fi
  TARGET=$PROJECT_DIR/.opencode
fi

AGENT_TARGET=$TARGET/agent/songcraft.md
LYRICS_TARGET=$TARGET/skills/letra-cancion
SUNO_TARGET=$TARGET/skills/preparacion-suno
DOCS_TARGET=$TARGET/skills/songcraft-docs
MARKER_TARGET=$TARGET/songcraft/INSTALLATION

for path in "$AGENT_TARGET" "$LYRICS_TARGET" "$SUNO_TARGET" "$DOCS_TARGET" "$MARKER_TARGET"; do
  if [ -e "$path" ] && [ "$FORCE" -ne 1 ]; then
    printf 'Error: Songcraft already exists at %s\n' "$path" >&2
    printf '%s\n' "Run uninstall.sh first or use --force to replace it." >&2
    exit 1
  fi
done

if [ "$FORCE" -eq 1 ]; then
  rm -f "$AGENT_TARGET"
  rm -rf "$LYRICS_TARGET" "$SUNO_TARGET" "$DOCS_TARGET" "$TARGET/songcraft"
fi

mkdir -p "$TARGET/agent" "$TARGET/skills" "$TARGET/songcraft"
cp "$SCRIPT_DIR/agent/songcraft.md" "$AGENT_TARGET"
cp -R "$SCRIPT_DIR/skills/letra-cancion" "$LYRICS_TARGET"
cp -R "$SCRIPT_DIR/skills/preparacion-suno" "$SUNO_TARGET"
cp -R "$SCRIPT_DIR/skills/songcraft-docs" "$DOCS_TARGET"

cat > "$MARKER_TARGET" <<EOF
Songcraft for OpenCode
scope=$SCOPE
agent=agent/songcraft.md
skill=skills/letra-cancion
skill=skills/preparacion-suno
knowledge=skills/songcraft-docs
EOF

printf 'Songcraft installed in %s\n' "$TARGET"
printf '%s\n' "Restart OpenCode, open the agent selector and choose Songcraft."
