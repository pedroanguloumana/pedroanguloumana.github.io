#!/bin/bash
# Live preview of the site at http://localhost:4000
# Rebuilds on file save and reloads the browser automatically.
set -e
cd "$(dirname "$0")/.."

if ! bundle check >/dev/null 2>&1; then
  echo "Installing gems..."
  bundle install
fi

# --livereload   : reload the browser as soon as a rebuild finishes
# --force_polling: poll for changes, so saves are never missed by the watcher
# (no --incremental: Jekyll 3's incremental mode skips pages whose
#  include/layout/_data dependencies changed, so edits appear to be ignored)
exec bundle exec jekyll serve \
  --livereload \
  --force_polling \
  --drafts \
  --future \
  --open-url \
  "$@"
