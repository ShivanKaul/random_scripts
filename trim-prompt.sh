#!/usr/bin/env bash


if [ "$#" -ne 1 ]
then
    echo "Usage: $0 <number of trailing directory components to display>"
    echo "Pass in '0' to reset prompt"
    return 0
fi

PROMPT_DIRTRIM=$1
