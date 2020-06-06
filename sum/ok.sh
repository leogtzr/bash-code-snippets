#!/bin/bash
set -x

compress_file() {
	local -r n="${RANDOM}"
    if ((n % 2 == 0)); then
    	return 1
    else
    	return 0
    fi
}

error_code=0
for i in $(seq 1 100); do
	# ((error_code += compress_file))
	compress_file
	error_code=$((error_code + $?))
	sleep 1s
done

exit 0