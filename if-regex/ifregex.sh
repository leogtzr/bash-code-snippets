#!/bin/bash
set -x

is_digit() {
    if [[ "${1}" =~ ^[0-9]+$ ]]; then
        return 0
    else
        return 1
    fi
}

readonly arg="${1:-s789456}"

if is_digit "${arg}"; then
    echo "Is digit ... "
fi

exit 0