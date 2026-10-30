#!/usr/bin/env bash
# Preview the website while you edit: bash preview.sh
# (add "lz" to preview the Learning Zone version of the pages: bash preview.sh lz)
# Works on your own computer and in GitHub Codespaces.
set -e
args=(server)
if [ "${1:-}" = "lz" ]; then args+=(--environment learningzone); fi
if [ -n "${CODESPACE_NAME:-}" ]; then
  # In a codespace the preview is at a github.dev address, not localhost.
  url="https://${CODESPACE_NAME}-1313.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}/"
  args+=(--bind 0.0.0.0 --baseURL "$url" --appendPort=false --liveReloadPort 443)
fi
exec hugo "${args[@]}"
