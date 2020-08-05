#!/bin/ash

#
# Copyright (c) 2020 Matthew Penner
#
# This repository is licensed under the MIT License.
# https://github.com/matthewpi/images/blob/master/LICENSE.md
#

cd /home/container

# Set environment variable that holds the Internal Docker IP
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`

# Print Java version
java -version

# Replace start command variables
MODIFIED_START=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo "[container@pterodactyl ~]$ ${MODIFIED_START}"

# Run the modified start command
eval ${MODIFIED_START}
