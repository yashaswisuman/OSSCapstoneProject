#!/bin/bash
# Script 4: Log File Analyzer
# Author: [Your Name] | Course: Open Source Software
# Usage: ./script4_log_analyzer.sh /var/log/syslog error
# Description: Counts keyword occurrences in a log file line by line

# Command-line arguments
LOGFILE=$1                # First argument: path to log file
KEYWORD=${2:-'error'}     # Second argument: keyword to search (default: 'error')
COUNT=0
MAX_RETRIES=3
RETRY=0

# --- Validate that the log file argument was provided ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

# --- Retry loop if the file does not yet exist ---
while [ ! -f "$LOGFILE" ] && [ $RETRY -lt $MAX_RETRIES ]; do
    echo "File not found: $LOGFILE. Retrying in 2 seconds... ($((RETRY+1))/$MAX_RETRIES)"
    sleep 2
    RETRY=$((RETRY + 1))
done

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found after $MAX_RETRIES attempts."
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: Log file $LOGFILE is empty."
    exit 0
fi

# --- Read log file line by line using while read loop ---
while IFS= read -r LINE; do
    # Case-insensitive keyword match using grep -iq
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))  # Arithmetic expansion to increment counter
    fi
done < "$LOGFILE"

echo ""
echo "=== Log Analysis Summary ==="
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo "Matches : $COUNT lines"
echo ""

# --- Print last 5 matching lines ---
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching lines:"
    echo "----------------------"
    grep -i "$KEYWORD" "$LOGFILE" | tail -5
fi
