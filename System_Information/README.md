# 💻 System Information Module - Linux Automation Toolkit

The **System Information module** is a core part of the **Linux Automation Toolkit**.
It provides Bash scripts to retrieve detailed information about the system’s **CPU, Memory, and Disk usage**.

This module follows a **menu-driven CLI approach**, making system monitoring simple and interactive.

---

# 📁 Folder Structure

```bash id="6p3ml6"
System_Information
│
├── system_management.sh        # Main controller script
│
├── CPU_info
│   ├── cpu_info_arg.sh
│   └── cpu_info_interactive.sh
│
├── Disk_info
│   ├── disk_info_arg.sh
│   └── disk_info_interactive.sh
│
└── Memory_info
    ├── memory_info_arg.sh
    └── memory_info_interactive.sh
```

---

# 🧭 Module Flow

```text id="sz2n6z"
system_management.sh
   ↓
CPU Information
   ↓
Disk Information
   ↓
Memory Information
```

👉 `system_management.sh` acts as the **entry point** for this module.

---

# ⚙️ Main Controller Script

## 🔹 system_management.sh

This script provides a **menu-driven interface** to access all system information features.

### Features

* Interactive CLI navigation
* Categorized system information
* Easy access to CPU, Disk, and Memory details
* Clean and structured output

### ▶ Run

```bash id="d9i4h1"
bash system_management.sh
```

---

# 🧠 1. CPU Information

Scripts to retrieve CPU-related details.

### cpu_info_arg.sh

```bash id="7b2n9l"
./cpu_info_arg.sh
```

* Displays CPU architecture
* Number of cores
* Processor details

---

### cpu_info_interactive.sh

* Interactive version of CPU information script

---

# 💾 2. Disk Information

Scripts to analyze disk usage and storage.

### disk_info_arg.sh

```bash id="2hv05d"
./disk_info_arg.sh
```

* Displays disk usage
* Shows mounted partitions

---

### disk_info_interactive.sh

* Interactive version for disk details

---

# 🧮 3. Memory Information

Scripts to monitor system memory usage.

### memory_info_arg.sh

```bash id="we23xm"
./memory_info_arg.sh
```

* Displays total, used, and free memory

---

### memory_info_interactive.sh

* Interactive version for memory details

---

# 🔄 Argument vs Interactive Scripts

| Type           | Description                           |
| -------------- | ------------------------------------- |
| Argument-Based | Direct execution without user prompts |
| Interactive    | User-friendly input-driven execution  |

👉 Provides flexibility for both automation and manual usage.

---

# ▶️ How to Use

### Make scripts executable

```bash id="9g7dr5"
chmod +x *.sh
```

### Run module

```bash id="c5xgcl"
bash system_management.sh
```

---

# 🔁 Integration with Toolkit

Access this module through the main toolkit:

```bash id="3l42zt"
./toolkit.sh
```

Navigate to:

```text id="8mnsqa"
System Information → Select Option
```

---

# 🎯 Purpose of This Module

This module is designed to:

* Monitor system performance
* Retrieve hardware and resource information
* Assist in system diagnostics
* Provide quick insights into system usage

---

# 🚀 Future Improvements

* Add system summary dashboard
* Add real-time monitoring
* Add graphical output (CLI-based charts)
* Improve output formatting

---

# 👨‍💻 Author

**Sonu Kumar Kushwaha**
Linux Automation Toolkit Project

