#!/bin/bash
# Script to copy all custom fortunes and initialize them
# Works on Ubuntu & macOS; may work on other Linux distributions

LOCATION=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
FORTUNE_CHECK=$(command -v fortune)
OS_CHECK=$(uname)

configure_custom_fortunes(){
        # Make list of all files cloned from repository
        ls fortunes/ >> /tmp/fortunes_tmp
        # Symlink all custom fortunes to the direcotry on the machine
        ln -s ${LOCATION}/fortunes/* ${HOST_FORTUNE_DAT_DIR}/
        cd ${HOST_FORTUNE_DAT_DIR}
        # Create .dat fortune files
        for item in `cat /tmp/fortunes_tmp`;
        do
                strfile ${item}
        done
        # Delete list that we created
        rm -f /tmp/fortunes_tmp
}

echo "Setting up custom fortunes..."

# Check if machine is running macOS
if [ ${OS_CHECK} == "Darwin" ];
then
        echo "Confirmed macOS, configuring fortunes..."
        # Set location of fortune's .dat files on macOS hosts
        HOST_FORTUNE_DAT_DIR="/usr/local/share/games/fortunes"
        echo "Set fortunes .dat file directory to ${HOST_FORTUNE_DAT_DIR}..."
        echo "Configuring custom fortunes..."
        configure_custom_fortunes
# Check is machine is running Debian/Ubuntu/Linux
elif [ ${OS_CHECK}  == "Linux" ];
then
        echo "Confirmed Linux distribution, configuring fortunes"
        echo ""
        # Set location of fortune's .dat files on Debian/Ubuntu/Linux hosts
        HOST_FORTUNE_DAT_DIR="/usr/share/games/fortune"
        echo "Set fortunes .dat file directory to ${HOST_FORTUNE_DAT_DIR}"
        echo "Configuring custom fortunes..."
        configure_custom_fortunes
fi
