# 📂 File Management Module - Linux Automation Toolkit

The **File Management module** is a core component of the **Linux Automation Toolkit**.
It automates common file system operations such as:

* Directory creation and validation
* File creation and existence checking
* File permission verification

This module is built using a **menu-driven CLI approach**, making it easy to use and extend.

---

# 📁 Folder Structure

```bash
File_Management
│
├── file_management.sh        # Main controller script
│
├── Directory_existence
│   ├── check_and_create_directory_arg.sh
│   └── check_and_create_directory_interactive.sh
│
├── File_existence
│   ├── check_and_create_file_arg.sh
│   └── check_and_create_file_interactive.sh
│
└── Permission
    ├── permission.sh
    ├── check_execute_permission_arg.sh
    ├── check_execute_permission_interactive.sh
    ├── check_read_permission_arg.sh
    ├── check_read_permission_interactive.sh
    ├── check_write_permission_arg.sh
    ├── check_write_permission_interactive.sh
```

---

# 🧭 Module Flow

```text
file_management.sh
   ↓
Directory Management
   ↓
File Management
   ↓
Permission Management
```

👉 `file_management.sh` acts as the **entry point** for this module.

---

# ⚙️ Main Controller Script

## 🔹 file_management.sh

This script provides a **menu-driven interface** to manage all file-related operations.

### Features

* Interactive CLI menu
* Centralized access to all submodules
* Easy navigation between operations
* Clean and structured workflow

### ▶ Run

```bash
bash file_management.sh
```

---

# 📁 1. Directory Management

These scripts check whether a directory exists and create it if necessary.

## Scripts

### check_and_create_directory_arg.sh

* Takes directory name as argument
* Checks if directory exists
* Creates directory if not found

```bash
./check_and_create_directory_arg.sh myfolder
```

---

### check_and_create_directory_interactive.sh

* Prompts user for directory name
* Creates directory if missing

---

# 📄 2. File Management

Scripts to check file existence and create files when required.

## Scripts

### check_and_create_file_arg.sh

* Takes file name as argument
* Creates file using `touch` if it does not exist

```bash
./check_and_create_file_arg.sh file.txt
```

---

### check_and_create_file_interactive.sh

* Interactive input mode
* Creates file if missing

---

# 🔐 3. Permission Management

This section checks file permissions.

Supported permissions:

* Read (`-r`)
* Write (`-w`)
* Execute (`-x`)

---

## 🔹 Permission Controller

### permission.sh

Acts as a **submenu handler** for all permission-related scripts.

---

## 🔹 Permission Scripts

### Read Permission

```bash
./check_read_permission_arg.sh file.txt
```

### Write Permission

```bash
./check_write_permission_arg.sh file.txt
```

### Execute Permission

```bash
./check_execute_permission_arg.sh script.sh
```

---

# 🔄 Argument vs Interactive Scripts

| Type           | Description                             |
| -------------- | --------------------------------------- |
| Argument-Based | Input passed via command-line arguments |
| Interactive    | User input during script execution      |

👉 This demonstrates multiple approaches for handling input in Bash scripting.

---

# ▶️ How to Use

### Make scripts executable

```bash
chmod +x *.sh
```

### Run module

```bash
bash file_management.sh
```

---

# 🔁 Integration with Toolkit

You can access this module from the main toolkit:

```bash
./toolkit.sh
```

Navigate to:

```text
File Management → Choose Operation
```

---

# 🎯 Purpose of This Module

This module helps to:

* Automate repetitive file system operations
* Learn Bash scripting fundamentals
* Understand Linux file permissions
* Improve efficiency in system administration tasks

---

# 🚀 Future Improvements

* Add bulk file/directory operations
* Improve error handling
* Add logging support
* Add colored output for better UX

---

# 👨‍💻 Author

**Sonu Kumar Kushwaha**
Linux Automation Toolkit Project

