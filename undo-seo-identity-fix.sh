#!/bin/bash
# Undo button: reverts the site-identity (baseURL) fix — restores
# hugo.toml and .github/workflows/deploy.yml to their committed versions.
cd "$(dirname "$0")" || exit 1
git restore hugo.toml .github/workflows/deploy.yml
echo "Reverted: hugo.toml, .github/workflows/deploy.yml."
