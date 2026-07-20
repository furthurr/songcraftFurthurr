#!/bin/sh

set -eu

SCOPE=global
PROJECT_DIR=

usage() {
  cat <<'EOF'
Usage:
  ./uninstall.sh [--global]
  ./uninstall.sh --project PATH

Options:
  --global        Remove the OpenCode user installation (default).
  --project PATH  Remove the installation from PATH/.opencode.
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
  TARGET=$PROJECT_DIR/.opencode
fi

MARKER=$TARGET/songcraft/INSTALLATION
if [ ! -f "$MARKER" ]; then
  printf 'Error: no managed Songcraft installation found in %s\n' "$TARGET" >&2
  exit 1
fi

rm -f "$TARGET/agent/songcraft.md"
rm -rf \
  "$TARGET/skills/letra-cancion" \
  "$TARGET/skills/preparacion-suno" \
  "$TARGET/skills/songcraft-docs" \
  "$TARGET/songcraft"

printf 'Songcraft removed from %s\n' "$TARGET"
printf '%s\n' "Restart OpenCode to unload the agent and skills."
