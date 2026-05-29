# Copier 📋

![C](https://img.shields.io/badge/Language-C-blue?style=flat-square&logo=c)
![License](https://img.shields.io/badge/License-GPLv3-green?style=flat-square)
![Maintained](https://img.shields.io/badge/Maintained-Yes-brightgreen?style=flat-square)
![CTF Ready](https://img.shields.io/badge/CTF-Ready-red?style=flat-square)

A lightweight and secure file copying utility written in C. Perfect for CTF challenges where the `cp` command is restricted or unavailable.

---

## 🎯 Purpose

**Copier** was created specifically for **CTF (Capture The Flag)** scenarios where standard UNIX utilities like `cp` are disabled, removed, or sandboxed. It provides a simple, standalone alternative to copy files from one location to another in restricted environments.

### Why Copier?
- ✅ Works when `cp` is disabled
- ✅ No external dependencies
- ✅ Lightweight binary
- ✅ Security hardening built-in
- ✅ Perfect for privilege escalation challenges

---

## 💻 Compilation

### Using GNU Make (Recommended):
```bash
make
```

This will compile with all security hardening flags enabled.

### Manual Compilation:
```bash
gcc copier.c -o copier -fstack-protector-all -Wl,-z,relro,-z,now -z noexecstack -D_FORTIFY_SOURCE=2 -O2 -s -Wno-unused-result
```

---

## 📖 Usage

```bash
./copier
```

Then follow the interactive prompts:
1. **Enter source file path** - The file you want to copy
2. **Enter destination file path** - Where to save the copy
3. **Success message** - Confirmation of successful copy

### Example Usage:

```bash
$ ./copier
Enter the directory where the file will be copied: /etc/passwd
Enter the directory where the file will be pasted: output.txt
File successfully copied from '/etc/passwd' to 'output.txt'

$ cat output.txt
# File contents displayed
```

### CTF Usage Example:

```bash
# On restricted system without 'cp' command
$ which cp
/usr/bin/cp: command not found

# Use copier instead
$ ./copier
Enter the directory where the file will be copied: /tmp/flag.txt
Enter the directory where the file will be pasted: /home/user/flag.txt
File successfully copied from '/tmp/flag.txt' to '/home/user/flag.txt'
```

---

## 🎓 Common CTF Scenarios

- 🔓 Privilege escalation challenges
- 🔒 Restricted shell environments
- ⛓️ Chroot jails
- 🚫 Systems with disabled utilities

---

## 📜 License

This project is licensed under the **GNU General Public License v3.0** - see the [LICENSE](LICENSE) file for details.

---

## 🏁 Quick Start

```bash
# Clone the repository
git clone https://github.com/Axolot1337/copier.git
cd copier

# Compile
make

# Run
./copier
```

**Made for CTF enthusiasts. Happy hacking!** 🔓🎯
