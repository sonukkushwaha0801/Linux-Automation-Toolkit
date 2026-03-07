# File Permission Check Scripts

This folder contains Bash scripts that check different **file permissions in Linux**.

The scripts verify whether a file has the following permissions:

* Read Permission
* Write Permission
* Execute Permission

Each permission check is implemented in two ways:

1. **Argument-based scripts**
2. **Interactive scripts**

This helps demonstrate multiple ways of handling user input in Bash scripting.

---

# Folder Structure

```
Permission
│
├── check_read_permission_arg.sh
├── check_read_permission_interactive.sh
│
├── check_write_permission_arg.sh
├── check_write_permission_interactive.sh
│
├── check_execute_permission_arg.sh
└── check_execute_permission_interactive.sh
```

---

# 1. Read Permission Scripts

Read permission determines whether a user can **view the contents of a file**.

In Bash, read permission is checked using:

```
-r
```

---

## check_read_permission_arg.sh

### Description

This script checks whether a file has **read permission** using a **command-line argument**.

### Working

1. The script receives the file name as an argument.
2. It checks if the file exists.
3. It verifies whether the file has read permission.
4. It displays the appropriate message.

### Example

```
./check_read_permission_arg.sh file.txt
```

### Possible Output

```
You have read permission for this file.
```

or

```
You do not have read permission for this file.
```

---

## check_read_permission_interactive.sh

### Description

This script asks the user to **enter the file name interactively** and then checks the read permission.

### Example Execution

```
Enter file name: file.txt
```

---

# 2. Write Permission Scripts

Write permission determines whether a user can **modify or edit a file**.

In Bash, write permission is checked using:

```
-w
```

---

## check_write_permission_arg.sh

### Description

This script checks **write permission** using a command-line argument.

### Example

```
./check_write_permission_arg.sh file.txt
```

### Possible Output

```
You have write permission for this file.
```

or

```
You do not have write permission for this file.
```

---

## check_write_permission_interactive.sh

### Description

This script prompts the user to **enter the file name** and then checks the write permission interactively.

---

# 3. Execute Permission Scripts

Execute permission determines whether a file can be **run as a program or script**.

In Bash, execute permission is checked using:

```
-x
```

---

## check_execute_permission_arg.sh

### Description

This script checks **execute permission** using a command-line argument.

### Example

```
./check_execute_permission_arg.sh script.sh
```

### Possible Output

```
You have execute permission for this file.
```

or

```
You do not have execute permission for this file.
```

---

## check_execute_permission_interactive.sh

### Description

This script asks the user to input the file name and then checks execute permission.

---

# Argument vs Interactive Scripts

| Type                | Description                                          |
| ------------------- | ---------------------------------------------------- |
| Argument Scripts    | Accept file names directly from the command line     |
| Interactive Scripts | Prompt the user to enter file names during execution |

Both methods are commonly used in **Linux automation and scripting**.

---

# Make Scripts Executable

Before running the scripts, give execute permission:

```
chmod +x check_read_permission_arg.sh
chmod +x check_write_permission_arg.sh
chmod +x check_execute_permission_arg.sh
```

---

# Purpose of These Scripts

These scripts are part of the **Linux Automation Toolkit** and help demonstrate:

* Linux file permission checks
* Bash conditional statements
* Argument handling in Bash
* Interactive input using `read`

These scripts are useful for **learning Bash scripting and Linux system administration basics**.

---

# Author

**Sonu Kumar Kushwaha**

Part of the **Linux Automation Toolkit** project.
