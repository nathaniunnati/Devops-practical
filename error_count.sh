#!/usr/bin/env bash
# Count error occurrences in a log file
LOG_FILE=${1:-/var/log/myapp/app.log}
if [ ! -f "$LOG_FILE" ]; then
  echo "Log file not found: $LOG_FILE" >&2
  exit 1
fi
grep -i "error" "$LOG_FILE" | wc -l

