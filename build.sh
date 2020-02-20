#!/usr/bin/env bash
inotifywait --quiet --monitor --event modify --format "%w" ./*.tex \
| while read change; do
    xelatex -halt-on-error "$@"
done
