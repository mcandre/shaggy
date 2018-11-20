#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

shfmt() {
    stank lib | xargs shfmt -w -i 4
}

bashate() {
    stank lib | xargs bashate
}

shlint() {
    stank lib | xargs shlint
}

checkbashisms() {
    stank lib | xargs checkbashisms -n -p
}

shellcheck() {
    stank lib | xargs shellcheck
}

editorconfig() {
    git ls-files -z |
    grep -av patch |
    xargs -0 -r -n 100 "$(npm bin)/eclint" check
}

funk_check() {
    funk .
}

lint() {
    shfmt &&
    bashate &&
    shlint &&
    checkbashisms &&
    shellcheck &&
    editorconfig &&
    funk_check
}

for task in "$@"; do
    case "$task" in
        shfmt)
        shfmt
        ;;
        bashate)
        bashate
        ;;
        shlint)
        shlint
        ;;
        checkbashisms)
        ;;
        shellcheck)
        ;;
        editorconfig)
        editorconfig
        ;;
        funk_check)
        funk_check
        ;;
        *)
        lint
        ;;
    esac
done
