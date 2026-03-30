#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: [Your Name] | Course: Open Source Software
# Description: Audits permissions and disk usage of key system directories

# Array of directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/lib/git-core")

echo "============================================"
echo "   Directory Audit Report"
echo "   Generated: $(date)"
echo "============================================"
echo ""

# --- For loop: iterate over each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # awk extracts fields 1 (permissions), 3 (owner), 4 (group) from ls -ld
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # du measures disk usage; 2>/dev/null suppresses permission errors
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory : $DIR"
        echo "  Permissions/Owner : $PERMS"
        echo "  Size              : $SIZE"
        echo "---"
    else
        echo "Directory $DIR does NOT exist on this system."
        echo "---"
    fi
done

# --- Check Git-specific config directory ---
echo ""
echo "=== Git Configuration Check ==="

GIT_CONFIG="$HOME/.gitconfig"
if [ -f "$GIT_CONFIG" ]; then
    echo "Global Git config found at: $GIT_CONFIG"
    PERMS=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "Permissions: $PERMS"
else
    echo "No global .gitconfig found. Run: git config --global user.name \"Name\""
fi

GIT_CORE_DIR='/usr/lib/git-core'
if [ -d "$GIT_CORE_DIR" ]; then
    PERMS=$(ls -ld "$GIT_CORE_DIR" | awk '{print $1, $3, $4}')
    echo "Git core directory permissions: $PERMS"
fi
