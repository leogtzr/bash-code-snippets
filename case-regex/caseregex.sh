#!/bin/bash

readonly arg="${1}"
readonly error_wrong_arg=70
to=10

case "${arg}" in
    "")
        to=10                   # default ... 
        ;;
    *[!0-9]*)
        cat <<HELP

        basename "${0}"           <to number>

HELP

        exit ${error_wrong_arg}

        ;;
    *)
        to="${1}"
        ;;
esac

for ((i = 1; i <= to; i++)); do
    printf "%d\n" "${i}"
done

exit 0
