# 🌐 Network Management Module - Linux Automation Toolkit

The **Network Management module** is a part of the **Linux Automation Toolkit**.
It provides a collection of Bash scripts to perform **network diagnostics, monitoring, and analysis tasks**.

This module helps users analyze connectivity, DNS behavior, network performance, and open ports using a **menu-driven CLI interface**.

---

# 📁 Folder Structure

```bash id="i1r2mg"
Network_Management
│
├── network_management.sh        # Main controller script
│
├── check_active_connections.sh
├── check_dns_server.sh
├── check_open_ports.sh
├── dns_lookup_domain.sh
├── get_ip_address.sh
├── network_latency_monitor.sh
├── network_monitor.sh
├── network_scan.sh
├── ping_host.sh
├── reverse_dns_lookup.sh
├── traceroute_host.sh
├── website_status_checker.sh
```

---

# 🧭 Module Flow

```text id="wy5z8j"
network_management.sh
   ↓
Basic Network Info
   ↓
Connectivity Tools
   ↓
DNS Tools
   ↓
Monitoring & Analysis
   ↓
Scanning & Ports
```

👉 `network_management.sh` acts as the **entry point** for this module.

---

# ⚙️ Main Controller Script

## 🔹 network_management.sh

This script provides a **menu-driven interface** to access all network-related functionalities.

### Features

* Interactive CLI navigation
* Categorized networking tools
* Easy access to diagnostic utilities
* Clean and structured workflow

### ▶ Run

```bash id="azhhxy"
bash network_management.sh
```

---

# 📡 1. Basic Network Information

Scripts to retrieve basic network configuration details.

### get_ip_address.sh

* Displays system IP address

### check_dns_server.sh

* Checks DNS resolution for a given domain

---

# 🔗 2. Connectivity Tools

Scripts to test network connectivity and availability.

### ping_host.sh

```bash id="lt5j27"
./ping_host.sh google.com
```

* Checks host reachability

---

### traceroute_host.sh

```bash id="h5cdys"
./traceroute_host.sh google.com
```

* Displays route to the destination

---

### website_status_checker.sh

```bash id="9o5bbf"
./website_status_checker.sh google.com
```

* Checks if a website is reachable

---

# 🧠 3. DNS Tools

Scripts related to DNS resolution.

### dns_lookup_domain.sh

```bash id="1qhvx5"
./dns_lookup_domain.sh google.com
```

---

### reverse_dns_lookup.sh

```bash id="2ryvy9"
./reverse_dns_lookup.sh 8.8.8.8
```

---

# 📊 4. Monitoring & Analysis

Scripts to monitor network activity and performance.

### network_monitor.sh

* Displays real-time network activity

### network_latency_monitor.sh

```bash id="t9rux1"
./network_latency_monitor.sh google.com
```

* Calculates average network latency

### check_active_connections.sh

* Lists active network connections

---

# ⚔️ 5. Scanning & Ports

Scripts for network scanning and port analysis.

### network_scan.sh

* Scans network for active hosts

### check_open_ports.sh

* Displays open ports on the system

---

# 🔄 Argument vs Interactive Usage

Most scripts support **argument-based input**, allowing flexible usage.

Example:

```bash id="yhz8hq"
./ping_host.sh google.com
```

👉 This makes the module suitable for both **manual usage and automation**.

---

# ▶️ How to Use

### Make scripts executable

```bash id="1q6fgl"
chmod +x *.sh
```

### Run module

```bash id="5emjci"
bash network_management.sh
```

---

# 🔁 Integration with Toolkit

You can access this module via the main toolkit:

```bash id="ut0eg0"
./toolkit.sh
```

Navigate to:

```text id="75fw0k"
Network Management → Select Operation
```

---

# 🎯 Purpose of This Module

This module is designed to:

* Diagnose network issues
* Analyze connectivity and performance
* Perform DNS operations
* Monitor real-time network activity
* Assist in basic network security analysis

---

# 🚀 Future Improvements

* Add bandwidth monitoring
* Add packet loss detection
* Add automated network health report
* Improve output formatting

---

# 👨‍💻 Author

**Sonu Kumar Kushwaha**
Linux Automation Toolkit Project

