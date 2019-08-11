#!/bin/bash
set -x

is_digit() {
    case "${1}" in
        (*[0-9]*)
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

if is_digit 87; then
    echo "OK ... "
else
    echo "It is not a digit ..."
fi

exit 0

# notes:
https://unix.stackexchange.com/questions/432660/matching-numbers-with-regex-in-case-statement

As glenn says, “case does not use regexes, it uses patterns”.  As bash(1) says,

case word in [ [(] pattern [ | pattern ] ... ) list ;; ] ... esac

A case command first expands word, and tries to match it against each pattern in turn, using the same matching 
rules as for pathname expansion (see Pathname Expansion below).