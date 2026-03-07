# Directory Existence Scripts

This folder contains Bash scripts that check whether a **directory exists in the system**.
If the directory does not exist, the scripts automatically **create the directory**.

These scripts demonstrate two ways of taking user input in Bash:

* **Argument-based input**
* **Interactive input**

---

# Folder Contents

```
Directory_existence
│
├── check_and_create_directory_arg.sh
└── check_and_create_directory_interactive.sh
```

---

# 1. check_and_create_directory_arg.sh

## Description

This script checks whether a directory exists using a **command-line argument**.

If the directory already exists, the script displays a message.
If the directory does not exist, the script **creates the directory automatically**.

---

## How It Works

1. The script receives the directory name as a **command-line argument**.
2. It checks if the directory exists using a Bash conditional.
3. If the directory exists → a message is displayed.
4. If the directory does not exist → the script creates it using `mkdir`.

---

## Syntax

```
./check_and_create_directory_arg.sh <directory_name>
```

---

## Example

```
./check_and_create_directory_arg.sh myfolder
```

### Possible Output

```
Directory does not exist.
Creating directory...
Directory created successfully.
```

or

```
Directory already exists.
```

---

# 2. check_and_create_directory_interactive.sh

## Description

This script works in **interactive mode**.
Instead of passing the directory name as an argument, the script **asks the user to enter the directory name during execution**.

---

## How It Works

1. The script prompts the user to enter a directory name.
2. It reads the input using the `read` command.
3. The script checks whether the directory exists.
4. If the directory does not exist → it creates the directory using `mkdir`.

---

## Syntax

```
./check_and_create_directory_interactive.sh
```

---

## Example Execution

```
Enter directory name: project_folder
```

### Possible Output

```
Directory does not exist.
Creating directory...
Directory created successfully.
```

or

```
Directory already exists.
```

---

# Argument Script vs Interactive Script

| Type               | Description                                                |
| ------------------ | ---------------------------------------------------------- |
| Argument Script    | Takes the directory name directly from the command line    |
| Interactive Script | Asks the user to input the directory name during execution |

Both approaches are useful depending on the automation scenario.

---

# Make Script Executable

Before running the scripts, give execute permission:

```
chmod +x check_and_create_directory_arg.sh
chmod +x check_and_create_directory_interactive.sh
```

---

# Purpose of These Scripts

These scripts are part of the **Linux Automation Toolkit** and help automate basic directory management tasks such as:

* Checking directory existence
* Automatically creating directories
* Understanding Bash conditional statements
* Learning argument-based and interactive scripting

---

# Author

**Sonu Kumar Kushwaha**

Part of the **Linux Automation Toolkit** project.
