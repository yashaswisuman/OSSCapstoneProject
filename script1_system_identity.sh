#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name] | Course: Open Source Software
# Description: Displays a welcome screen with key system identity info

# --- Student Variables ---
STUDENT_NAME="[Your Name]"          # Replace with your name
SOFTWARE_CHOICE="Git"               # Chosen open-source software

# --- Gather System Information using command substitution ---
KERNEL=$(uname -r)                  # Kernel version
USER_NAME=$(whoami)                 # Current logged-in user
HOME_DIR=$(echo $HOME)              # Home directory of current user
UPTIME=$(uptime -p)                 # Human-readable uptime
DATETIME=$(date "+%A, %d %B %Y, %H:%M:%S")  # Current date and time
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Display formatted output ---
echo "========================================================"
echo "   OPEN SOURCE AUDIT - Welcome Screen"
echo "   Student : $STUDENT_NAME | Software : $SOFTWARE_CHOICE"
echo "========================================================"
echo ""
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date/Time    : $DATETIME"
echo ""
# --- License message for the OS ---
echo "  License Note : The Linux kernel is licensed under GPL v2."
echo "                 This means you are free to run, study, modify,"
echo "                 and redistribute it, as long as you preserve"
echo "                 the same freedoms for others."
echo "========================================================"
