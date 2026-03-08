# Process Management Scripts

This directory contains Bash scripts used to monitor, search, and manage running processes on a Linux system.

These scripts are part of the **Linux-Automation-Toolkit** project and demonstrate common process management tasks performed by system administrators.

---

## 📂 Available Scripts

### 1. list_running_processes.sh

Displays all currently running processes on the system.

**Usage**

```bash
./list_running_processes.sh
```

This script lists running processes and also shows the total number of processes.

---

### 2. search_process.sh

Searches for a running process by name.

**Usage**

```bash
./search_process.sh <process_name>
```

**Example**

```bash
./search_process.sh ssh
```

This will display all running processes that match the provided name.

---

### 3. kill_process.sh

Terminates a running process using its **Process ID (PID)**.

**Usage**

```bash
./kill_process.sh <PID>
```

**Example**

```bash
./kill_process.sh 1234
```

The script will display the process details and ask for confirmation before terminating it.

---

### 4. top_cpu_process.sh

Displays the top processes consuming the most CPU.

**Usage**

```bash
./top_cpu_process.sh
```

The script lists the processes sorted by CPU usage.

---

### 5. top_memory_process.sh

Displays the top processes consuming the most memory.

**Usage**

```bash
./top_memory_process.sh
```

The script lists the processes sorted by memory usage.

---

## 🔧 Requirements

These scripts rely on standard Linux commands:

* `ps`
* `grep`
* `kill`
* `head`

These commands are available by default on most Linux distributions.

---

## 📌 Notes

* These scripts help users monitor and control system processes.
* They demonstrate common Linux process management operations.
* Useful for learning **Linux system administration and automation**.

---

## 📁 Directory Structure

