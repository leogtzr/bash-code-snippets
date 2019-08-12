#!/bin/bash
set -x

error_check() {
    echo ":(" >&2
}

trap error_check ERR

# : ${name?}

false
echo "Hmmmm ... "

exit 0