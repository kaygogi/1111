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
echo
echo "Your CPU is:"
cpu_model=$(lscpu | awk -F: '/Model name/ {print $2; exit}' | sed 's/^[[:space:]]*//')
echo "  $cpu_model"
