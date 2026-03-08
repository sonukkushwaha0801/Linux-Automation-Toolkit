# Disk Information Scripts

This directory contains Bash scripts used to retrieve and display disk usage information.

These scripts are part of the **Linux-Automation-Toolkit** project and help users inspect disk space, mounted filesystems, and storage usage directly from the command line.

---

## 📂 Available Scripts

### disk_info_arg.sh

Displays disk usage information.
If a filesystem, mount point, or keyword is provided as an argument, the output will be filtered accordingly.

**Usage**

```bash
./disk_info_arg.sh
```

Displays full disk usage information.

```bash
./disk_info_arg.sh /
```

Displays disk usage information for the root filesystem.

```bash
./disk_info_arg.sh home
```

Filters disk information related to the keyword **home**.

---

### disk_info_interactive.sh

An interactive script that allows users to choose different disk information options from a menu.

**Usage**

```bash
./disk_info_interactive.sh
```

After running the script, the user will see a menu like this:

```
1. Full Disk Usage
2. Root Filesystem Usage
3. Specific Mount Point
4. Show Filesystem Types
5. Exit
```

The user can enter the corresponding number to display the desired disk information.

---

## 🔧 Requirements

These scripts rely on the following Linux command:

* `df`

Most Linux distributions include this command by default.

To verify:

```bash
df -h
```

---

## 📌 Notes

* Disk usage is displayed in **human-readable format (-h)**.
* Filesystem type information can be viewed using `df -Th`.
* These scripts demonstrate two scripting approaches:

  * **Argument-based execution**
  * **Interactive menu-based execution**

---
