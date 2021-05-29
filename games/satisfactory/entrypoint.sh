#!/bin/bash

#
# Copyright (c) 2021 Matthew Penner
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

# Default the TZ environment variable to UTC.
TZ=${TZ:-UTC}
export TZ

# Set environment variable that holds the Internal Docker IP
INTERNAL_IP=$(ip route get 1 | awk '{print $NF;exit}')
export INTERNAL_IP

# Set the GAMECONFIGDIR environment variable
GAMECONFIGDIR="/home/container/.wine/drive_c/users/container/Local Settings/Application Data/FactoryGame/Saved"
export GAMECONFIGDIR

# Switch to the container's working directory
cd /home/container || exit 1

# Create required directories
mkdir -p /home/container/config /home/container/gamefiles /home/container/saves "$GAMECONFIGDIR/Config/WindowsNoEditor" "$GAMECONFIGDIR/Logs" "$GAMECONFIGDIR/SaveGames/common"

# Touch the log file
touch "$GAMECONFIGDIR/Logs/FactoryGame.log"

# Copy config files
cp /home/container/config/{Engine.ini,Game.ini,Scalability.ini} "$GAMECONFIGDIR/Config/WindowsNoEditor/"

# Copy save files
cp -rp /home/container/saves/*.sav "$GAMECONFIGDIR/SaveGames/common/"

# Get the latest save file
LATEST_SAVE_FILE=$(ls -Art "$GAMECONFIGDIR/SaveGames/common" | tail -n 1)

# Move latest save file
if [[ ! "$LATEST_SAVE_FILE" == "savefile.sav" ]]; then
	printf "\\nMoving most recent save (%s) to savefile.sav\\n" "$LATEST_SAVE_FILE"
	mv "$GAMECONFIGDIR/SaveGames/common/$LATEST_SAVE_FILE" "$GAMECONFIGDIR/SaveGames/common/savefile.sav"
fi

# Switch to the gamefiles directory
cd /home/container/gamefiles

# Start Satisfactory (runs in the background)
printf '\033[1m\033[33mcontainer@pterodactyl~ \033[0m'
echo "wine start FactoryGame.exe -nosteamclient -nullrhi -nosplash -nosound"
wine start FactoryGame.exe -nosteamclient -nullrhi -nosplash -nosound

# Tail the satisfactory log file
printf '\033[1m\033[33mcontainer@pterodactyl~ \033[0m'
echo "tail -f \"$GAMECONFIGDIR/Logs/FactoryGame.log\""
tail -f "$GAMECONFIGDIR/Logs/FactoryGame.log"
