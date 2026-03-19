# 📜 Log Management Module - Linux Automation Toolkit

The **Log Management module** is a key component of the **Linux Automation Toolkit**.
It provides Bash scripts to analyze, monitor, and extract useful insights from **system logs**.

This module helps in:

* Monitoring system activity
* Detecting suspicious behavior
* Analyzing login attempts
* Performing basic security audits

It follows a **menu-driven CLI structure** for easy navigation and usability.

---

# 📁 Folder Structure

```bash id="2y7c0s"
Log_Management
│
├── log_management.sh        # Main controller script
│
├── view_system_logs.sh
├── monitor_live_logs.sh
├── monitor_live_logs_filter.sh
│
├── recent_login_history.sh
├── find_failed_login_attempts.sh
├── remote_access_failures.sh
│
├── failed_sudo_attempts.sh
├── suspicious_ip_detector.sh
├── top_failed_ssh_ips.sh
├── top_error_messages.sh
```

---

# 🧭 Module Flow

```text id="6kck2v"
log_management.sh
   ↓
View Logs
   ↓
Live Monitoring
   ↓
Login & Access Logs
   ↓
Security Analysis
```

👉 `log_management.sh` acts as the **entry point** for this module.

---

# ⚙️ Main Controller Script

## 🔹 log_management.sh

This script provides a **menu-driven interface** to access all log-related functionalities.

### Features

* Interactive CLI navigation
* Categorized log analysis tools
* Real-time log monitoring
* Security-focused log analysis

### ▶ Run

```bash id="4g9w9b"
bash log_management.sh
```

---

# 📄 1. View Logs

### view_system_logs.sh

* Displays system logs

---

# 📡 2. Live Monitoring

### monitor_live_logs.sh

* Monitors logs in real-time

---

### monitor_live_logs_filter.sh

* Monitors logs with filtering options

---

# 🔐 3. Login & Access Logs

### recent_login_history.sh

* Shows recent user login activity

---

### find_failed_login_attempts.sh

* Detects failed login attempts

---

### remote_access_failures.sh

* Displays failed remote access attempts

---

# ⚠️ 4. Security Analysis

### failed_sudo_attempts.sh

* Detects failed sudo attempts

---

### suspicious_ip_detector.sh

* Identifies suspicious IP addresses

---

### top_failed_ssh_ips.sh

* Lists IPs with repeated failed SSH attempts

---

### top_error_messages.sh

* Displays most frequent system error messages

---

# ⚠️ Important Note (Permissions)

Some scripts require **root privileges** to access system logs.

### ▶ Run with sudo

```bash id="0a5x1v"
sudo ./toolkit.sh
```

---

# 🔄 Script Usage

Most scripts run directly without arguments, while some may require user input.

👉 Designed for both **manual monitoring and automation**.

---

# ▶️ How to Use

### Make scripts executable

```bash id="mq8k9k"
chmod +x *.sh
```

### Run module

```bash id="f4jv6k"
bash log_management.sh
```

---

# 🔁 Integration with Toolkit

Access this module via the main toolkit:

```bash id="ppax2y"
./toolkit.sh
```

Navigate to:

```text id="f3i3bg"
Log Management → Select Option
```

---

# 🎯 Purpose of This Module

This module is designed to:

* Analyze system logs efficiently
* Detect suspicious or abnormal activity
* Monitor system behavior in real-time
* Assist in basic cybersecurity analysis

---

# 🚀 Future Improvements

* Add automated alert system
* Add log report generation
* Add anomaly detection
* Improve output formatting

---

# 👨‍💻 Author

**Sonu Kumar Kushwaha**
Linux Automation Toolkit Project

