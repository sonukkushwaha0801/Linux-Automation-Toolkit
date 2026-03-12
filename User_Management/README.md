# User Management

This directory contains Bash scripts designed to automate **user administration and security auditing tasks** on Linux systems.

These scripts help system administrators manage user accounts, monitor privileges, detect locked accounts, and analyze login history.

This module is part of the **Linux-Automation-Toolkit** project.

---

## 📂 Available Scripts

### 1. `list_all_users.sh`

Lists all user accounts present on the system by reading the `/etc/passwd` file.

---

### 2. `check_user_existence.sh`

Checks whether a specific user exists on the system.

Usage example:

```bash
./check_user_existence.sh username
```

---

### 3. `create_new_user.sh`

Creates a new user account with a home directory.

Note:
Requires **sudo/root privileges**.

---

### 4. `delete_user.sh`

Deletes an existing user account from the system.

The script can also remove the user's home directory.

---

### 5. `sudo_users_detector.sh`

Displays all users who have **sudo privileges** on the system.

Useful for privilege auditing and security checks.

---

### 6. `locked_accounts_detector.sh`

Detects user accounts that are currently **locked or disabled**.

---

### 7. `user_login_history.sh`

Shows the **login history of a specific user** by analyzing system authentication logs.

---

### 8. `user_management_menu.sh`

Interactive menu-based interface that allows administrators to run all user management scripts from a single toolkit.

Features:

* List users
* Check user existence
* Create user
* Delete user
* View sudo users
* Detect locked accounts
* Check login history

---

## ⚙ Requirements

These scripts are designed for **modern Linux distributions** such as:

* Kali Linux
* Ubuntu
* Debian
* Fedora

Required utilities:

* bash
* grep
* awk
* cut
* journalctl
* useradd
* userdel
* passwd

Most of these tools are pre-installed on standard Linux systems.

---

## ▶ Usage

Make scripts executable:

```bash
chmod +x *.sh
```

Run a script:

```bash
./script_name.sh
```

Example:

```bash
./list_all_users.sh
```

Run the interactive menu:

```bash
./user_management_menu.sh
```

---

## 🎯 Purpose

The goal of these scripts is to simplify common **user administration and security auditing tasks**, including:

* Managing user accounts
* Detecting privileged users
* Monitoring login activity
* Identifying locked accounts
* Automating administrative workflows

---

## 👨‍💻 Author

**Sonu Kumar Kushwaha**

Project: **Linux-Automation-Toolkit**
