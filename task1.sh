#!/bin/bash

# Find the PID of infinite.sh 
pid=$(ps aux | grep '[i]nfinite.sh' | gawk '{print $2}')

# Check if a process with that PID exists
if [ -z "$pid" ]; then
    echo "Error: No infinite.sh process found."
else
    # Kill the process
    kill $pid
    echo "Success: infinite.sh process (PID: $pid) has been killed."
fi
