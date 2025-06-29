#!/bin/bash

# Get current brightness percentage
current=$(brightnessctl get)
max=$(brightnessctl max)
percent=$(( current * 100 / max ))

# Print icon and percentage
echo "🌕 ${percent}%"

