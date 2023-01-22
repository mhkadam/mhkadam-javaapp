#!/bin/bash

# Kill the BDR processes
echo "Stopping processes for testappserver.jar"
ps aux | grep "testappserver.jar" | grep -v 'grep' | awk '{print $2}' | xargs --no-run-if-empty kill -9

# Kill all machine agents
echo "Stopping processes for machineagent.jar"
ps aux | grep "machineagent.jar" | grep -v 'grep' | awk '{print $2}' | xargs --no-run-if-empty kill -9
