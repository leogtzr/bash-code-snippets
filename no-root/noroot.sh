#!/bin/bash
set -x

readonly E_NOTROOT=87   # Non-root exit error.

# Run as root, of course.
if ((UID != ROOT_UID)); then
  echo "Must be root to run this script."
	printf "%d != %d\n" "${UID}" "${ROOT_UID}"
  exit $E_NOTROOT
fi

exit 0
