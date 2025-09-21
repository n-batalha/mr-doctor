#!/usr/bin/env bash

set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"

exec $HERE/stress-ng --sequential 4 --class cpu --verify 2>&1 | tee -a /media/fat/stress-ng-logs-cpu.log
