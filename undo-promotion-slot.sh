#!/bin/bash
# Undo button: reverts the promotion-slot feature (random 3rd-card promotion
# in the homepage feed and /notes/ list). Restores pre-change versions from
# git and removes the new partials.
cd "$(dirname "$0")" || exit 1
git restore layouts/home.html layouts/notes/list.html content/notes/promotion-*.md
rm -f layouts/partials/notes-feed.html layouts/partials/note-card.html
echo "Reverted: layouts/home.html, layouts/notes/list.html, content/notes/promotion-*.md."
echo "Removed:  layouts/partials/notes-feed.html, layouts/partials/note-card.html."
echo "Refresh the page (and restart 'hugo server' if it was stopped) to see the old behavior."
