#!/usr/bin/env bash
set -euo pipefail

REPO="$(cd "$(dirname "$0")/.." && pwd)"
DESTS=(
  "$HOME/.config/opencode/skills"
  "$HOME/.claude/skills"
  "$HOME/.agents/skills"
)

names=()
sources=()
while IFS= read -r -d '' skill_md; do
  source="$(dirname "$skill_md")"
  names+=("$(basename "$source")")
  sources+=("$source")
done < <(find "$REPO/skills" -name SKILL.md -not -path '*/deprecated/*' -print0)

for destination in "${DESTS[@]}"; do
  mkdir -p "$destination"

  for i in "${!names[@]}"; do
    name="${names[$i]}"
    source="${sources[$i]}"
    target="$destination/$name"

    if [ -e "$target" ] && [ ! -L "$target" ]; then
      rm -rf "$target"
    fi

    ln -sfn "$source" "$target"
    echo "linked $name -> $source ($destination)"
  done
done
