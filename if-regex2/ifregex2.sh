#!/bin/bash
set -x

is_digit() {
    grep --extended-regexp --quiet "^[0-9]+$" <<< "${1}"
}

readonly arg="${1:-s789456}"

if is_digit "${arg}"; then
    echo "Is digit ... "
else
    echo "It is not a digit"
fi

exit 0