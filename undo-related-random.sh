#!/bin/bash
# Undo button: removes the random related notes & posts box at the bottom
# of note pages. Restores the note template from git and deletes the two
# new files.
cd "$(dirname "$0")" || exit 1
git restore layouts/notes/single.html
rm -f layouts/partials/related-random.html assets/css/extended/related-random.css
echo "Reverted: layouts/notes/single.html."
echo "Removed:  layouts/partials/related-random.html, assets/css/extended/related-random.css."
echo "Refresh the page (and restart 'hugo server' if it was stopped) to see the old layout."
