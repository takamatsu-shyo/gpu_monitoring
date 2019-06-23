#!/bin/bash
LOGFILE=$HOME"/my_tools/my_gpu.log"

# datetime, Fan, Temp, GPU-Util
{ date -uIseconds; nvidia-smi | grep -o "[0-9]*%\|[0-9].C" | tr "\n" ","  ; } | tr "\n" "," >> $LOGFILE
echo "" >> $LOGFILE
