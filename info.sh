#!/usr/bin/env bash

# 1. A greeting.
echo "Welcome to your Linux System"
echo

# 2. The time and date.
echo "Today is:"
date
echo

# 3. The system’s uptime.
echo "Uptime:"
upt=$( uptime \
     | cut -d',' -f1-2 \
     | sed 's/^[[:space:]]*//' )
echo "    $upt"
echo

# 4. The operating system you are running.
echo "Operating System:"
os=$( hostnamectl \
     | grep 'Operating System:' \
     | cut -d ':' -f2- \
     | sed 's/^[[:space:]]*//' )
echo "    $os"
echo

# 5. The kernel version.
echo "Running Kernel version:"
ker=$( hostnamectl \
      | grep '^[[:space:]]*Kernel:' \
      | cut -d ':' -f2- \
      | sed 's/^[[:space:]]*//' )
echo "    $ker"
