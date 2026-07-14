#!/bin/sh
if pgrep fuzzel > /dev/null; then
    pkill fuzzel
else
    fuzzel
fi
