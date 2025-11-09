# Linux_System_Automation
Your Linux assistant -- performs Linux system maintenance and monitoring.

## Overview
This project is a collection of **Bash scripts** designed to automate basic **system maintenance tasks** on Ubuntu Linux.  
The suite includes scripts for **backups**, **system updates**, **log monitoring**, and a **menu-driven maintenance tool** to run all scripts from a single interface.

---

## Scripts Included
1. **backup.sh**  
   - Performs automatic backups of important directories.
   - Stores backups in the `~/backup` folder.

2. **update.sh**  
   - Updates system packages using `apt`.
   - Cleans up old packages and cache.

3. **log_monitor.sh**  
   - Monitors system or user activity logs.
   - Generates a report of recent file changes in the home directory.

4. **maintenance_suite.sh**  
   - Menu-driven script to run all the above scripts.
   - Allows the user to select tasks without running individual scripts manually.
   - Exits only when the user selects the exit option.

---

## Features
- **Automated system maintenance**: Run backups, updates, and log checks in one place.  
- **Simple and user-friendly**: Menu interface with clear options.  
- **Unique log monitoring**: Tracks recent file changes in your home directory.  
- **Safe**: Scripts can run without root permissions (except for updates which require sudo).

---

## Usage Instructions
1. How to clone : (do it in ubuntu terminal) -->
      git clone https://github.com/priyansu1274/Linux_System_Automation.git

2. Make all scripts executable:--> 
     chmod +x *.sh

3. To run code -->
   bash file_name
