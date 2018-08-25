#!/bin/bash

if [ $# -eq 0 ]; then
    trap exit SIGTERM

    while true; do
	sleep 0.1
    done
fi

exec "$@"
