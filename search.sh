#!/bin/bash
# Использование: ./search.sh <файл> <ключевое_слово>
FILE=$1
KEY=$2
grep "$KEY" "$FILE"
