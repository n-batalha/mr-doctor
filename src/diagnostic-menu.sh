#!/usr/bin/env bash

set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"

mkdir -p /media/fat/logs

dialog --title "WARNING" \
        --msgbox "Please do not shutdown the unit, tests will run for a while. Please press the ENTER key to acknowledge and start the tests." 10 41

exec $HERE/stress-ng --oom-avoid --cpu 0 --cpu-method all --verify -t 15m --metrics-brief 2>&1 | tee -a /media/fat/logs/stress-ng-cpu.log
exec $HERE/stress-ng --oom-avoid --vm 1 --vm-bytes 80% --vm-keep --verify -t 20m --metrics-brief 2>&1 | tee -a /media/fat/logs/stress-ng-vm.log
# exec $HERE/stress-ng --oom-avoid --sequential 1 --class memory --verify -t 20m --metrics-brief 2>&1 | tee -a /media/fat/logs/stress-ng-memory.log

dialog --title "FINISHED" \
        --msgbox "Testing has now completed. You will find a list of logs to review in /logs (in your SD card)" 10 41

sync
