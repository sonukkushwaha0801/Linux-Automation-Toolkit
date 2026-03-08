# CPU Information Scripts

This directory contains Bash scripts that retrieve and display CPU-related information from the system.

These scripts are part of the **Linux-Automation-Toolkit** project and help users quickly inspect CPU details using simple command-line tools.

---

## 📂 Available Scripts

###  cpu_info_arg.sh

Displays CPU information using a command-line argument as a filter.

**Usage**

```bash
./cpu_info_arg.sh
```

Displays CPU information using a command-line argument as a filter.[Incase, no argurment passed. Then it print full CPU details]

```bash
./cpu_info_arg.sh "Model name"
```

Displays specific CPU details matching the given keyword.

**Example**

```bash
./cpu_info_arg.sh "Architecture"
```

---

###  cpu_info_interactive.sh

An interactive script that allows users to select what CPU information they want to see from a menu.

**Usage**

```bash
./cpu_info_interactive.sh
```

After running the script, the user will be presented with a menu such as:

```
1. Full CPU Information
2. CPU Model
3. CPU Architecture
4. Number of CPUs
5. CPU Cores
6. Exit
```

The user can enter the corresponding number to view the desired information.

---

## 🔧 Requirements

These scripts rely on the following Linux command:

* `lscpu`

Most Linux distributions include this command by default.

To verify:

```bash
lscpu
```

---

## 📌 Notes

* These scripts work on most Linux distributions.
* They are intended for **system inspection and automation tasks**.
* Both scripts demonstrate two approaches to scripting:

  * **Argument-based execution**
  * **Interactive user input**

---
