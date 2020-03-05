#!/usr/bin/env bash

# functions

usage() {
  cat << _EOF_
  Usage: ${0}

  _EOF_
}

if [ "$#" -ne "1" ]; then
    echo "Expected 1 argument, got $#" >&2
    usage
    exit 2
fi

# refs:
#  - https://github.com/kvz/bash3boilerplate

