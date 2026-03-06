# File Management - Linux Automation Scripts

This module is part of the **Linux-Automation-Toolkit** repository.
It contains Bash scripts designed to automate common **file and directory management operations in Linux systems**.

These scripts help system administrators and developers quickly verify file/directory existence and validate file permissions.

---

# Folder Structure

```
File_Management
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
    ├── check_execute_permission_arg.sh
    ├── check_execute_permission_interactive.sh
    ├── check_read_permission_arg.sh
    ├── check_read_permission_interactive.sh
    ├── check_write_permission_arg.sh
    └── check_write_permission_interactive.sh
```

---

# 1️⃣ [Directory Existence] (#directory-existence)

This folder contains scripts that check whether a **directory exists in the system**.
If the directory does not exist, the script **automatically creates it**.

### Scripts

### `check_and_create_directory_arg.sh`

This script takes the **directory name as a command line argument**.

#### Working

1. The script receives a directory name as input.
2. It checks if the directory already exists.
3. If the directory exists → It prints a message.
4. If the directory does not exist → It creates the directory.

#### Example

```
./check_and_create_directory_arg.sh myfolder
```

Output:

```
Directory does not exist. Creating directory...
Directory created successfully.
```

---

### `check_and_create_directory_interactive.sh`

This script asks the **user to input the directory name interactively**.

#### Working

1. The script prompts the user to enter a directory name.
2. It checks whether the directory exists.
3. If not found, it creates the directory.

---

# 2️⃣ File Existence

This folder contains scripts that verify whether a **file exists** and create it if necessary.

---

### `check_and_create_file_arg.sh`

This script takes the **file name as a command-line argument**.

#### Working

1. The script receives the file name.
2. It checks whether the file exists.
3. If the file exists → It prints a message.
4. If the file does not exist → It creates the file using `touch`.

#### Example

```
./check_and_create_file_arg.sh myfile.txt
```

---

### `check_and_create_file_interactive.sh`

This script works in **interactive mode**.

#### Working

1. The script asks the user to enter the file name.
2. It checks whether the file exists.
3. If the file does not exist → The script creates the file.

---

# 3️⃣ Permission Checks

This folder contains scripts that check **file permissions in Linux**.

The scripts verify whether a file has:

* Read Permission
* Write Permission
* Execute Permission

Each permission type has **two versions**:

* Argument based script
* Interactive script

---

## Read Permission

### `check_read_permission_arg.sh`

Checks whether a file has **read permission** using a command-line argument.

Example:

```
./check_read_permission_arg.sh file.txt
```

The script checks the file using:

```
-r
```

If the user has read permission, it prints a success message.

---

### `check_read_permission_interactive.sh`

This script asks the user to input the file name and then checks **read permission**.

---

## Write Permission

### `check_write_permission_arg.sh`

Checks if a file has **write permission** using an argument.

Example:

```
./check_write_permission_arg.sh file.txt
```

Uses the permission check:

```
-w
```

---

### `check_write_permission_interactive.sh`

This script asks the user to input the file name and verifies **write permission**.

---

## Execute Permission

### `check_execute_permission_arg.sh`

Checks if a file has **execute permission**.

Example:

```
./check_execute_permission_arg.sh script.sh
```

Uses the permission check:

```
-x
```

---

### `check_execute_permission_interactive.sh`

This script asks the user to input the file name and verifies **execute permission** interactively.

---

# Argument vs Interactive Scripts

| Type                | Description                                     |
| ------------------- | ----------------------------------------------- |
| Argument Scripts    | Take input directly from command-line arguments |
| Interactive Scripts | Ask the user for input during execution         |

This helps demonstrate **different ways of handling input in Bash scripts**.

---

# How to Run the Scripts

Make the script executable:

```
chmod +x script_name.sh
```

Run the script:

```
./script_name.sh
```

Example:

```
./check_and_create_file_arg.sh demo.txt
```

---

# Purpose of This Module

The purpose of this module is to demonstrate **basic file management automation using Bash scripting**.

These scripts help in:

* Automating repetitive file system tasks
* Learning Bash scripting fundamentals
* Understanding Linux file permissions
* Improving system administration efficiency

---

# Author

**Sonu Kumar Kushwaha**

Linux Automation Toolkit Project
