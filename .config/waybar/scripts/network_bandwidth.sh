#!/bin/bash

trap '' PIPE

INTERFACE="wlp3s0"
RX_FILE="/sys/class/net/$INTERFACE/statistics/rx_bytes"
TX_FILE="/sys/class/net/$INTERFACE/statistics/tx_bytes"

# Ensure files are readable
if [[ ! -r "$RX_FILE" || ! -r "$TX_FILE" ]]; then
  echo "No data"
  exit 1
fi

# Read values directly
R1=$(< "$RX_FILE")
T1=$(< "$TX_FILE")

sleep 1

R2=$(< "$RX_FILE")
T2=$(< "$TX_FILE")

# Fallback for empty reads
[[ -z "$R1" || -z "$R2" || -z "$T1" || -z "$T2" ]] && {
  echo "Read error"
  exit 1
}

RX=$(( (R2 - R1) / 1024 ))
TX=$(( (T2 - T1) / 1024 ))

if [ "$RX" -eq 0 ] && [ "$TX" -eq 0 ]; then
  echo "Idle"
else
  echo "📥 ${RX}KB/s 📤 ${TX}KB/s"
fi
