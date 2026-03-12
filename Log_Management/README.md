# Log Management

This directory contains a collection of Bash scripts designed to automate **log monitoring, analysis, and security auditing** on modern Linux systems.

These scripts are part of the **Linux-Automation-Toolkit** project and focus on detecting authentication issues, monitoring logs in real time, and identifying suspicious activities.

---

## 📂 Available Scripts

### 1. find_failed_login_attempts.sh

Analyzes system authentication logs to detect **failed login attempts**.
Useful for identifying brute-force attacks or repeated authentication failures.

---

### 2. monitor_live_logs.sh

Displays **system logs in real time** using journal logs.
Helpful for administrators who need to monitor system activity continuously.

---

### 3. monitor_live_logs_filter.sh

Monitors logs in real time while **filtering specific keywords or patterns** such as errors, warnings, or authentication events.

---

### 4. remote_access_failures.sh

Detects **failed remote access attempts**, particularly SSH login failures.

---

### 5. suspicious_ip_detector.sh

Identifies **IP addresses responsible for multiple failed login attempts**, helping detect potential attackers.

---

### 6. top_failed_ssh_ips.sh

Displays the **top IP addresses responsible for failed SSH login attempts** by analyzing journal logs.

---

### 7. view_system_logs.sh

Provides a quick way to **view important system logs** using systemd journal logs.

---

### 8. top_error_messages.sh

Extracts and lists the **most frequent error messages** found in system logs.

---

### 9. recent_login_history.sh

Displays **recent successful SSH login sessions** from system journal logs.

---

### 10. failed_sudo_attempts.sh

Detects **failed sudo authentication attempts**, helping identify unauthorized privilege escalation attempts.

---

## ⚙ Requirements

These scripts are designed for **modern Linux systems using systemd**.

Required tools:

* bash
* journalctl
* grep
* awk
* sort
* uniq

Most of these utilities are preinstalled on distributions such as:

* Kali Linux
* Ubuntu
* Debian
* Fedora

---

## ▶ Usage

Make scripts executable:

```bash
chmod +x script_name.sh
```

Run the script:

```bash
./script_name.sh
```

Example:

```bash
./top_failed_ssh_ips.sh
```

---

## 🎯 Purpose

The goal of these scripts is to automate common **log monitoring and security analysis tasks**, including:

* Detecting authentication failures
* Monitoring logs in real time
* Identifying suspicious IP activity
* Reviewing system errors
* Auditing sudo access attempts

---

## 👨‍💻 Author

Sonu Kumar Kushwaha

Project: **Linux-Automation-Toolkit**
