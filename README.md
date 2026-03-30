# Open Source Software – Capstone Project
### A Study on **Git** as an Open Source Tool

![License](https://img.shields.io/badge/License-GPL%20v2-blue.svg)
![Subject](https://img.shields.io/badge/Subject-Open%20Source%20Software-green)
![Level](https://img.shields.io/badge/Level-B.Tech-orange)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## About This Project

This repository contains a detailed academic report on **Git** — one of the most widely used open-source software tools in the world — submitted as part of the **Open Source Software (OSS) Capstone Project** for my B.Tech program.

The report explores Git from multiple angles: its history, its license, the ethics behind open source, how it lives on Linux, and how it compares to proprietary alternatives.

---

## Table of Contents

1. [Introduction](#1-introduction)
2. [Origin of Git](#2-origin-of-git)
3. [License Analysis (GPL v2)](#3-license-analysis)
4. [Ethics of Open Source](#4-ethics-of-open-source)
5. [Linux Footprint](#5-linux-footprint)
6. [FOSS Ecosystem](#6-foss-ecosystem)
7. [Comparison with Proprietary Tools](#7-comparison-with-proprietary-tools)
8. [Conclusion](#8-conclusion)

---

## Report Structure

### 1. Introduction
An overview of what open-source software means and why Git is one of the most important tools in modern software development.

### 2. Origin of Git
The story of how Linus Torvalds created Git in 2005 after a licensing dispute with BitKeeper (owned by BitMover). Covers the motivation, design goals, and the tool's rapid rise to dominance.

### 3. License Analysis
Deep dive into the **GNU General Public License v2 (GPL v2)**:
- The **Four Freedoms** of free software (Richard Stallman)
- What **Copyleft** means and why it matters
- Comparison between **GPL v2** and the **MIT License**
- "Free as in freedom, not free as in beer"

### 4. Ethics of Open Source
Arguments for and against open-source development, companies actively using/contributing to OSS (Google, Microsoft, Amazon), and the impact of open source on global software innovation.

### 5. Linux Footprint
How Git is installed and lives on a Linux system:
```bash
sudo apt update
sudo apt install git
git --version
```
Covers key directories (`/usr/bin/git`, `~/.gitconfig`, `.git/`), user permissions, why Git is **not** a background service, and how to update it.

### 6. FOSS Ecosystem
Git's place in the broader free and open-source software world — its dependencies (OpenSSL, zlib), platforms built on top of it (GitHub, GitLab), community structure, and its relationship with the **LAMP stack**.

### 7. Comparison with Proprietary Tools

| Feature | Git | SVN | Perforce | Microsoft TFS |
|---|---|---|---|---|
| Cost | Free | Free | Paid | Paid |
| Distributed | Yes | No | No | No |
| Offline Work | Yes | Limited | Limited | Limited |
| Industry Adoption | ~90%+ | Declining | Niche | MS Ecosystem |

### 8. Conclusion
Personal opinion and recommendation. Reflects on what studying Git revealed about open-source philosophy and the importance of software freedom.

---

### Setup & How to Run

> **Requirements:** A Linux system (Ubuntu/Debian recommended) or WSL on Windows.

**Step 1 — Clone the repository**
```bash
git clone https://github.com/YOUR_USERNAME/oss-capstone-project.git
cd oss-capstone-project
```

**Step 2 — Give execute permissions to all scripts**
```bash
chmod +x scripts/*.sh
```

**Step 3 — Run each script**

```bash
# Script 1: System Identity Report
./scripts/script1_system_identity.sh

# Script 2: FOSS Package Inspector
./scripts/script2_package_inspector.sh

# Script 3: Disk and Permission Auditor
./scripts/script3_disk_auditor.sh

# Script 4: Log File Analyzer (pass a log file + keyword)
./scripts/script4_log_analyzer.sh /var/log/syslog error

# Script 5: Open Source Manifesto Generator (interactive)
./scripts/script5_manifesto_generator.sh
```

---

### Script Details

#### Script 1 — System Identity Report
Displays a formatted welcome screen with kernel version, username, home directory, uptime, date/time, and Linux distribution name. Reads distribution info from `/etc/os-release`.

#### Script 2 — FOSS Package Inspector
Detects whether the system uses RPM or APT, checks if `git` is installed, and prints relevant package info. Uses a `case` statement to print a philosophy note about each FOSS package.

#### Script 3 — Disk and Permission Auditor
Iterates over an array of important Linux directories using a `for` loop. For each one, it prints permissions, owner, group (using `awk`), and disk size (using `du`). Also checks for Git's config file and core directory.

#### Script 4 — Log File Analyzer
Takes a log file path and search keyword as command-line arguments (`$1`, `$2`). Reads the file line by line using `while IFS= read -r`, counts matches with `grep`, and prints the last 5 matching lines. Includes retry logic if the file doesn't exist yet.

#### Script 5 — Manifesto Generator
Prompts the user with 3 questions using `read -p`, builds a paragraph from their answers, and saves it to a `.txt` file. Demonstrates `>` (overwrite) and `>>` (append) file operators.

---

## Tool Studied

| Property | Details |
|---|---|
| **Software** | Git |
| **Version** | Git 2.x |
| **Type** | Version Control System (VCS) |
| **License** | GNU General Public License v2 (GPL v2) |
| **Created By** | Linus Torvalds |
| **First Released** | April 7, 2005 |
| **Written In** | C |
| **Platform** | Linux, macOS, Windows |

---

## Repository Contents

```
oss-capstone-project/
 ┣ README.md
 ┣ Git_OSS_Report.md
 ┣ script1_system_identity.sh
 ┣ script2_package_inspector.sh
 ┣ script3_disk_auditor.sh
 ┣ script4_log_analyzer.sh
 ┗ script5_manifesto_generator.sh
```
---

## How to View the Report

Simply click on **`Git_OSS_Report.md`** in this repository to read the full report rendered in GitHub's Markdown viewer.

Or clone the repo:
```bash
git clone https://github.com/YOUR_USERNAME/oss-capstone-project.git
```

---

## Academic Info

- **Course**: Open Source Software (OSS)
- **Level**: B.Tech
- **Report Length**: ~1800 words
- **Language**: English

---

## License

This academic report is submitted for educational purposes.  
The software studied (Git) is licensed under the **GNU General Public License v2**.  
See: https://www.gnu.org/licenses/old-licenses/gpl-2.0.html

---

> *"Given enough eyeballs, all bugs are shallow."* — Eric S. Raymond  
> *"Talk is cheap. Show me the code."* — Linus Torvalds
