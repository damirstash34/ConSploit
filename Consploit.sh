#!/bin/bash
clear
if [ ! "${DISPLAY:-}" ]; then # Assure display is available.
  echo -e "\\033[31mAborted, X (graphical) session unavailable.\\033[0m"; exit 2
fi

if ! hash xdpyinfo 2>/dev/null; then # Assure display probe.
  echo -e "\\033[31mAborted, xdpyinfo is unavailable.\\033[0m"; exit 3
fi

if ! xdpyinfo &>/dev/null; then # Assure display info available.
  echo -e "\\033[31mAborted, xterm test session failed.\\033[0m"; exit 4
fi

# ================ < Parameter Parser Check > ================ #
getopt --test > /dev/null # Assure enhanced getopt (returns 4).
if [ $? -ne 4 ]; then
  echo "\\033[31mAborted, enhanced getopt isn't available.\\033[0m"; exit 5
fi
cat ./sys.log
sleep 1.9
clear
figlet ConSploit
sleep 1.9
echo -e "\\033[31mVersion : Beta 1.0.0\\033[0m";
echo -e "\\033[31mCommunity Edition 1.0.0\\033[0m";
echo 
echo Started ConSploit UUID Version
echo Type uuid of vitctim
echo and choose one payload
echo -n "Type uuid: ";read uuid
echo " "
echo "Choose payload"
echo "------------------------------"
echo "[1] meterpreter/reverse_tcp"
echo "[2] meterpreter/reverse_http"
echo "[3] meterpreter/reverse_https"
echo "[4] shell/reverse_tcp"
echo -n "Payload: "; read payload
for a in {1..1000000}
do
echo -n "meterpreter_shell>";read cmd
done
sleep 4
clear 
echo -e "\\033[31mThanks for using ConSploit Community Edition!\\033[0m"
echo -e "\\033[31mExiting...\\033[0m"
sleep 1
clear
exit
