# RUN42C

A lightweight and professional command-line utility for compiling and running C projects quickly on Linux.

Built for developers who want a faster workflow while working with C, especially students from the  ecosystem.

---

# Features

* Automatic compilation of all `.c` files
* Recursive source file discovery
* Execute compiled programs instantly
* Pass arguments to your C application
* Debug mode support (`-g`)
* Valgrind integration
* Custom executable name
* Colored terminal output
* Automatic PATH installation
* Compatible with:

  * Bash
  * Zsh

---

# Project Structure

```text
.
├── cmd
│   └── run42c
├── install.sh
└── README.md
```

---

# Installation

## 1. Clone the repository

```bash
git clone git@github.com:YOUR_USERNAME/run42c.git
```

## 2. Enter the project

```bash
cd run42c
```

## 3. Run installer

```bash
chmod +x install.sh
./install.sh
```

The installer will:

* copy `run42c` to `~/.local/bin`
* make it executable
* configure PATH automatically

---

# Usage

## Basic execution

```bash
run42c
```

---

# Passing Arguments

```bash
run42c -- hello world 42
```

Example in C:

```c
#include <stdio.h>

int main(int argc, char **argv)
{
    int i = 0;

    while (i < argc)
    {
        printf("%s\n", argv[i]);
        i++;
    }

    return (0);
}
```

---

# Debug Mode

Compile with debug symbols:

```bash
run42c -d
```

---

# Valgrind

Run with memory checking:

```bash
run42c -v
```

---

# Custom Executable Name

```bash
run42c -o myapp
```

---

# Help

```bash
run42c -h
```

---

# Example

```bash
run42c -d -- 10 20
```

---

# Supported Options

| Option    | Description                |
| --------- | -------------------------- |
| `-d`      | Compile with debug symbols |
| `-v`      | Execute using valgrind     |
| `-o NAME` | Set executable name        |
| `-h`      | Show help                  |

---

# Example Output

```text
=========================================
            RUN42 COMPILER
=========================================

Compiling project...

Compilation completed.

-----------------------------------------
Executing program...
-----------------------------------------

Hello World

-----------------------------------------
Program finished successfully.
=========================================
```

---

# Requirements

* Linux
* GCC
* Bash or Zsh
* Valgrind (optional)

---

# Install Dependencies

Ubuntu/Debian:

```bash
sudo apt install gcc valgrind
```

Arch Linux:

```bash
sudo pacman -S gcc valgrind
```

Fedora:

```bash
sudo dnf install gcc valgrind
```

---

# Future Improvements

* Makefile support
* Multiple build profiles
* Static analysis
* Clang support
* Parallel compilation
* Cache system
* Unit testing integration

---

# Author

Created by

📍 Luanda, Angola

---

# License

MIT License
