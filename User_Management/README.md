# 👤 User Management Module - Linux Automation Toolkit

The **User Management module** is a part of the **Linux Automation Toolkit**.
It provides Bash scripts to manage and audit system users in a Linux environment.

This module allows administrators to perform **user operations, user analysis, and security audits** using a **menu-driven CLI interface**.

---

# 📁 Folder Structure

```bash id="6m7z5k"
User_Management
│
├── user_management.sh        # Main controller script
│
├── create_new_user.sh
├── delete_user.sh
├── check_user_existence.sh
├── list_all_users.sh
├── user_login_history.sh
├── sudo_users_detector.sh
├── locked_accounts_detector.sh
```

---

# 🧭 Module Flow

```text id="k7z1cl"
user_management.sh
   ↓
User Operations
   ↓
User Information
   ↓
Security & Audit
```

👉 `user_management.sh` acts as the **entry point** for this module.

---

# ⚙️ Main Controller Script

## 🔹 user_management.sh

This script provides a **menu-driven interface** for managing users and performing security audits.

### Features

* Interactive CLI navigation
* Categorized user operations
* Safe and structured workflow
* Centralized user management system

### ▶ Run

```bash id="p0q6g4"
bash user_management.sh
```

---

# 👤 1. User Operations

Scripts to manage system users.

### create_new_user.sh

* Creates a new system user

---

### delete_user.sh

```bash id="8y0m4b"
./delete_user.sh username
```

* Deletes an existing user

---

### check_user_existence.sh

```bash id="tx1fxn"
./check_user_existence.sh username
```

* Checks whether a user exists

---

# 📋 2. User Information

Scripts to retrieve user-related data.

### list_all_users.sh

* Displays all system users

---

### user_login_history.sh

* Shows login history of users

---

# 🔐 3. Security & Audit

Scripts to analyze system user security.

### sudo_users_detector.sh

* Lists users with sudo privileges

---

### locked_accounts_detector.sh

* Detects locked user accounts

---

# ⚠️ Important Note (Permissions)

Some operations require **root privileges**, such as:

* Creating users
* Deleting users
* Accessing `/etc/shadow`
* Detecting locked accounts

### ▶ Run with sudo

```bash id="d9sn2c"
sudo ./toolkit.sh
```

---

# 🔄 Script Usage

Most scripts support **argument-based input**.

Example:

```bash id="hlcrsp"
./check_user_existence.sh username
```

👉 This allows both **manual and automated execution**.

---

# ▶️ How to Use

### Make scripts executable

```bash id="8f2q7d"
chmod +x *.sh
```

### Run module

```bash id="z8j6c2"
bash user_management.sh
```

---

# 🔁 Integration with Toolkit

Access this module through the main toolkit:

```bash id="j9t2vn"
./toolkit.sh
```

Navigate to:

```text id="ib0x5f"
User Management → Select Option
```

---

# 🎯 Purpose of This Module

This module is designed to:

* Manage system users efficiently
* Perform user-related operations
* Monitor user activity
* Enhance system security through auditing

---

# 🚀 Future Improvements

* Add user role management
* Add password policy checks
* Add login attempt alerts
* Improve output formatting and logging

---

# 👨‍💻 Author

**Sonu Kumar Kushwaha**
Linux Automation Toolkit Project

