#!/usr/bin/env bash

#set -x
set -o pipefail

function for_all_test_files {
    # find ./{cmd,pkg} -name '*_test.go'
    echo "This ok ... "
    return 0
}

function first_line_of_test {
    # xargs -n1 awk '/^func Test/{getline; print FILENAME ":" NR-1 " " $0}'
    # echo "This not"
    xargs -n1 grep ok
    return 1
}

function not_parallel {
    # grep -v 't.Parallel()' ;
    echo "This ok"
    return 0
}

if for_all_test_files | first_line_of_test | not_parallel; then
    echo "FAIL: not all tests call t.Parallel"
    exit 1
fi

exit 0