#!/usr/bin/env bash

# 1. Display the date and time
echo
echo "Today is:"
date

# 2. List all files in your current directory
echo
echo "Here is a list of your current files in this directory:"
echo
ls

# 3. Display your CPU model name
echo "CPU Model:"
cpu=$( lscpu \
     | grep 'Model name:' \
     | cut -d ':' -f2- \
     | sed 's/^[[:space:]]*//' )
echo "    $cpu"