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

# Switch to the container's working directory
cd /home/container || exit 1

# Set environment variable that holds the Internal Docker IP
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`

# Print Go version
printf "\033[1m\033[33mcontainer@pterodactyl~ \033[0mnode -v\n"
printf " ▄▄    ▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄  ▄▄▄▄▄▄▄          ▄▄▄ ▄▄▄▄▄▄▄ "
printf "█  █  █ █       █      ██       █        █   █       █"
printf "█   █▄█ █   ▄   █  ▄    █    ▄▄▄█        █   █  ▄▄▄▄▄█"
printf "█       █  █ █  █ █ █   █   █▄▄▄      ▄  █   █ █▄▄▄▄▄ "
printf "█  ▄    █  █▄█  █ █▄█   █    ▄▄▄█▄▄▄ █ █▄█   █▄▄▄▄▄  █"
printf "█ █ █   █       █       █   █▄▄▄█   ██       █▄▄▄▄▄█ █"
printf "█▄█  █▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄██▄▄▄▄▄▄▄█▄▄▄██▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█"
echo .
echo -e "Version : $(node -v)"

# Replace variables in the startup command
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}
