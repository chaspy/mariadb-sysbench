#!/bin/sh

usage()
{
  echo "Usage: ./result.sh <result's directory>"
  exit "${1}"
}

#chack argumets
if [ "${1}" = "" -o $# -gt 2 ]; then
  usage 1
fi

grep transaction ${1}/*.log | sort -t _ -nk3 | awk '{print $3}'
