#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: [Your Name] | Course: Open Source Software
# Description: Generates a personalised open source philosophy statement

# --- Alias demonstration (note: aliases in scripts require shopt -s expand_aliases) ---
# In interactive shells, you might define: alias today='date +%d\ %B\ %Y'
# In this script we use the date command directly for portability.

echo "=================================================="
echo "   The Open Source Manifesto Generator"
echo "=================================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- Interactive input using read ---
read -p '1. Name one open-source tool you use every day: ' TOOL
read -p '2. In one word, what does freedom mean to you?  ' FREEDOM
read -p '3. Name one thing you would build and share freely: ' BUILD

# --- Capture current date ---
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)
OUTPUT="manifesto_${AUTHOR}.txt"

# --- Build the manifesto paragraph using string variables ---
LINE1="Open Source Manifesto - Generated on $DATE by $AUTHOR"
LINE2=""
LINE3="Every day, I rely on $TOOL, a piece of software that someone built,"
LINE4="shared, and trusted others to improve. That act of sharing is not weakness;"
LINE5="it is the foundation of how knowledge grows. To me, freedom means $FREEDOM."
LINE6="It means the right to see what a tool does, to fix it when it breaks,"
LINE7="and to pass it on better than you found it. One day, I want to build"
LINE8="$BUILD, and when I do, I will share it openly, because the tools"
LINE9="I depend on today were built by people who believed in the same thing."

# --- Write manifesto to file using > (create/overwrite) ---
echo "$LINE1" > "$OUTPUT"
echo "$LINE2" >> "$OUTPUT"
echo "$LINE3" >> "$OUTPUT"
echo "$LINE4" >> "$OUTPUT"
echo "$LINE5" >> "$OUTPUT"
echo "$LINE6" >> "$OUTPUT"
echo "$LINE7" >> "$OUTPUT"
echo "$LINE8" >> "$OUTPUT"
echo "$LINE9" >> "$OUTPUT"

echo ""
echo "=================================================="
echo "Manifesto saved to: $OUTPUT"
echo "=================================================="
echo ""
cat "$OUTPUT"
