#!/bin/bash
if [ $(($(date +%s)%2)) -eq 1 ]; then
  echo "The number of seconds since 1/1/1970 is even"
else
  echo "The number of seconds since 1/1/1970 is odd"
fi

