#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

run_safety() {
    safety check
}

run_shfmt() {
    stank lib | xargs shfmt -w -i 4
}

run_bashate() {
    stank lib | xargs bashate
}

run_checkbashisms() {
    stank lib | xargs checkbashisms -n -p
}

run_shellcheck() {
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
    run_safety &&
    run_shfmt &&
    run_bashate &&
    run_checkbashisms &&
    run_shellcheck &&
    editorconfig &&
    funk_check
}

for task in "$@"; do
    case "$task" in
    run_safety)
        run_safety
        ;;
    run_shfmt)
        run_shfmt
        ;;
    run_bashate)
        run_bashate
        ;;
    run_checkbashisms)
        run_checkbashisms
        ;;
    run_shellcheck)
        run_shellcheck
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
