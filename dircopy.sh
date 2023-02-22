#!/bin/bash

if [ ! -d "$1" ]; then
    echo "directoty is no fond"
    exit
fi

find "$1" -type f | while read filepath; do
    path="${filepath/$1/$2}"
    mkdir -p "$(dirname "$path")"
    cat "$filepath" > "$path"
    
done
