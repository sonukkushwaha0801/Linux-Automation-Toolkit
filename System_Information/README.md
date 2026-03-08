# System Information Scripts

This directory contains Bash scripts used to retrieve important system-level information such as CPU details, memory usage, and disk statistics.

These scripts are part of the **Linux-Automation-Toolkit** project and are designed to help users quickly inspect system resources and monitor system health using simple command-line tools.

---

# 📂 Modules in System_Information

This directory is organized into multiple submodules for different system components.

```
System_Information/
├── CPU_Info/
├── Memory_Info/
└── Disk_Info/
```

Each module contains scripts that demonstrate both **argument-based** and **interactive** scripting approaches.

---

# 🖥 CPU_Info

This module provides scripts to retrieve CPU-related information such as architecture, number of cores, and processor model.

### Available Scripts

```
cpu_info_arg.sh
cpu_info_interactive.sh
```

### Features

* Display complete CPU details
* Retrieve specific CPU attributes
* Interactive menu for CPU information
* Uses the `lscpu` command

---

# 🧠 Memory_Info

This module provides scripts to inspect system memory usage.

### Available Scripts

```
memory_info_arg.sh
memory_info_interactive.sh
```

### Features

* Display full memory statistics
* Show total, used, free, and available memory
* Interactive memory inspection
* Uses the `free` command

---

# 💾 Disk_Info

This module provides scripts for checking disk usage and filesystem information.

### Available Scripts

```
disk_info_arg.sh
disk_info_interactive.sh
```

### Features

* Display complete disk usage
* Inspect specific mount points
* View filesystem types
* Interactive disk inspection
* Uses the `df` command

---

# 🔧 Requirements

These scripts rely on common Linux utilities:

* `lscpu`
* `free`
* `df`
* `grep`
* `awk`

These commands are available by default on most Linux distributions.

---

# 📌 Purpose of This Module

The **System_Information** module demonstrates how Bash scripting can be used to:

* Inspect system hardware
* Monitor system resources
* Automate system checks
* Provide user-friendly CLI tools

These scripts are useful for **Linux beginners, system administrators, and DevOps learners**.

