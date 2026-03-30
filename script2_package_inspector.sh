#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: [Your Name] | Course: Open Source Software
# Description: Checks if a FOSS package is installed and describes its philosophy

PACKAGE='git'  # The package to inspect

# --- Detect package manager and check installation ---
if command -v rpm &>/dev/null; then
    # RPM-based system (Fedora, CentOS, RHEL)
    if rpm -q $PACKAGE &>/dev/null; then
        echo "$PACKAGE is INSTALLED on this RPM-based system."
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    else
        echo "$PACKAGE is NOT installed. Install with: sudo dnf install $PACKAGE"
    fi
elif command -v dpkg &>/dev/null; then
    # Debian/Ubuntu-based system
    if dpkg -l $PACKAGE 2>/dev/null | grep -q '^ii'; then
        echo "$PACKAGE is INSTALLED on this Debian-based system."
        dpkg -l $PACKAGE | grep $PACKAGE
    else
        echo "$PACKAGE is NOT installed. Install with: sudo apt install $PACKAGE"
    fi
else
    echo "Unknown package manager. Cannot verify installation."
fi

echo ''
# --- Case statement: print philosophy note for each FOSS package ---
case $PACKAGE in
    git)
        echo "Git: Born from necessity when proprietary tools failed the Linux community."
        echo "     Linus Torvalds built it in 2005 to keep kernel development free."
        ;;
    httpd|apache2)
        echo "Apache: The open web server that made the internet accessible to everyone."
        ;;
    mysql|mariadb)
        echo "MySQL/MariaDB: A dual-license story - open source at its core, commercial at its edge."
        ;;
    firefox)
        echo "Firefox: A nonprofit browser fighting to keep the web open and user-controlled."
        ;;
    vlc)
        echo "VLC: Born in a student dorm in Paris, plays anything, owned by no corporation."
        ;;
    python3|python)
        echo "Python: Shaped entirely by community consensus, the language that belongs to everyone."
        ;;
    *)
        echo "$PACKAGE: An open-source tool - free to use, study, modify, and share."
        ;;
esac
