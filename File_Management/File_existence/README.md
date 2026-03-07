# File Existence Scripts

This folder contains Bash scripts that check whether a **file exists in the system**.
If the file does not exist, the scripts automatically **create the file**.

These scripts demonstrate two different methods of handling user input in Bash:

* **Command-line Argument Input**
* **Interactive User Input**

---

# Folder Structure

```
File_existence
│
├── check_and_create_file_arg.sh
└── check_and_create_file_interactive.sh
```

---

# 1. check_and_create_file_arg.sh

## Description

This script checks whether a file exists using a **command-line argument**.
If the file does not exist, the script creates the file automatically using the `touch` command.

---

## How It Works

1. The script receives the **file name as a command-line argument**.
2. It checks if the file already exists using a conditional statement.
3. If the file exists → a message is displayed.
4. If the file does not exist → the script creates the file using `touch`.

---

## Syntax

```
./check_and_create_file_arg.sh <file_name>
```

---

## Example

```
./check_and_create_file_arg.sh test.txt
```

### Possible Output

```
File does not exist.
Creating file...
File created successfully.
```

or

```
File already exists.
```

---

# 2. check_and_create_file_interactive.sh

## Description

This script works in **interactive mode**.
Instead of passing the file name as a command-line argument, the script asks the user to enter the file name during execution.

---

## How It Works

1. The script prompts the user to **enter a file name**.
2. The input is captured using the `read` command.
3. The script checks whether the file exists.
4. If the file does not exist → the script creates the file using `touch`.

---

## Syntax

```
./check_and_create_file_interactive.sh
```

---

## Example Execution

```
Enter file name: notes.txt
```

### Possible Output

```
File does not exist.
Creating file...
File created successfully.
```

or

```
File already exists.
```

---

# Argument Script vs Interactive Script

| Type               | Description                                              |
| ------------------ | -------------------------------------------------------- |
| Argument Script    | Accepts the file name directly from the command line     |
| Interactive Script | Prompts the user to enter the file name during execution |

Both approaches are useful depending on the **automation requirement**.

---

# Make Scripts Executable

Before running the scripts, give execute permission:

```
chmod +x check_and_create_file_arg.sh
chmod +x check_and_create_file_interactive.sh
```

---

# Purpose of These Scripts

These scripts are part of the **Linux Automation Toolkit** and help automate basic file management tasks such as:

* Checking file existence
* Automatically creating files
* Understanding Bash conditional checks
* Learning argument-based and interactive Bash scripting

---

# Author

**Sonu Kumar Kushwaha**

Part of the **Linux Automation Toolkit** project.
