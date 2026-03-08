# Memory Information Scripts

This directory contains Bash scripts used to retrieve and display system memory information.

These scripts are part of the **Linux-Automation-Toolkit** project and help users inspect RAM usage and memory details directly from the terminal.

---

## 📂 Available Scripts

### 1. memory_info_arg.sh

Displays system memory information.
If a keyword is provided as an argument, the script filters the output based on that keyword.

**Usage**

```bash
./memory_info_arg.sh
```

Display Memory Information using a command-line argument as a filter.  [Incase, no argument given. Displays full memory information.]

```bash
./memory_info_arg.sh available
```

Displays memory details related to the provided keyword.

**Example**

```bash
./memory_info_arg.sh total
```

---

### 2. memory_info_interactive.sh

An interactive script that allows users to choose what memory information they want to display.

**Usage**

```bash
./memory_info_interactive.sh
```

After running the script, the user will see a menu:

```
1. Full Memory Information
2. Total Memory
3. Used Memory
4. Free Memory
5. Available Memory
6. Exit
```

The user can enter the corresponding number to view the desired information.

---

## 🔧 Requirements

These scripts rely on the following Linux command:

* `free`

Most Linux distributions include this command by default.

To verify:

```bash
free -h
```

---

## 📌 Notes

* Works on most Linux distributions.
* Displays memory information in **human-readable format (-h)**.
* Demonstrates two scripting approaches:

  * **Argument-based scripts**
  * **Interactive menu-based scripts**

