#!/usr/bin/env bash

STATE_FILE="/tmp/laptop_kb_state"

if [ ! -f "$STATE_FILE" ]; then
    echo "true" > "$STATE_FILE"
fi

CURRENT=$(cat "$STATE_FILE")

if [ "$CURRENT" = "true" ]; then
    NEW_STATE="false"
    notify-send "Laptop keyboard disabled"
else
    NEW_STATE="true"
    notify-send "Laptop keyboard enabled"
fi

echo "$NEW_STATE" > "$STATE_FILE"
hyprctl keyword '$LAPTOP_KB_ENABLED' "$NEW_STATE" -r
