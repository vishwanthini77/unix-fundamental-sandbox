# Unix Commands Cheat Sheet

## Navigation Commands

| Command | Description | Example |
|---------|-------------|---------|
| `pwd` | Print working directory (where am I?) | `pwd` |
| `cd <path>` | Change directory | `cd /var/log` |
| `cd ~` | Go to home directory | `cd ~` |
| `cd ..` | Go up one level | `cd ..` |
| `cd -` | Go to previous directory | `cd -` |
| `ls` | List files and directories | `ls` |
| `ls -l` | List with details | `ls -l` |
| `ls -a` | List all (including hidden) | `ls -a` |
| `ls -lah` | List all with human-readable sizes | `ls -lah` |

## File Operations

| Command | Description | Example |
|---------|-------------|---------|
| `cat <file>` | Display file contents | `cat config.txt` |
| `less <file>` | Page through file | `less largefile.log` |
| `head <file>` | Show first 10 lines | `head error.log` |
| `tail <file>` | Show last 10 lines | `tail access.log` |
| `tail -f <file>` | Follow file (live updates) | `tail -f app.log` |
| `mkdir <dir>` | Create directory | `mkdir myproject` |
| `touch <file>` | Create empty file | `touch newfile.txt` |
| `cp <src> <dest>` | Copy file | `cp file.txt backup.txt` |
| `mv <src> <dest>` | Move/rename file | `mv old.txt new.txt` |
| `rm <file>` | Remove file | `rm unwanted.txt` |
| `rm -r <dir>` | Remove directory recursively | `rm -r old_folder` |

## Search and Filter

| Command | Description | Example |
|---------|-------------|---------|
| `grep <pattern> <file>` | Search for pattern in file | `grep ERROR app.log` |
| `grep -r <pattern> <dir>` | Search recursively in directory | `grep -r "TODO" src/` |
| `grep -i <pattern>` | Case-insensitive search | `grep -i error log.txt` |
| `find <path> -name <pattern>` | Find files by name | `find /var -name "*.log"` |
| `find <path> -type f` | Find only files | `find . -type f` |
| `find <path> -type d` | Find only directories | `find . -type d` |

## Permissions

| Command | Description | Example |
|---------|-------------|---------|
| `chmod <mode> <file>` | Change file permissions | `chmod 755 script.sh` |
| `chmod +x <file>` | Make file executable | `chmod +x deploy.sh` |
| `chmod -x <file>` | Remove execute permission | `chmod -x old.sh` |
| `chown <user> <file>` | Change file owner | `sudo chown www-data index.html` |
| `chown <user>:<group> <file>` | Change owner and group | `sudo chown student:student file.txt` |

### Permission Numbers
- **7** = rwx (read, write, execute)
- **6** = rw- (read, write)
- **5** = r-x (read, execute)
- **4** = r-- (read only)
- **0** = --- (no permissions)

**Format:** `chmod [owner][group][others]`
- Example: `chmod 755` = owner can do everything, group and others can read and execute

## Process Management

| Command | Description | Example |
|---------|-------------|---------|
| `ps aux` | List all processes | `ps aux` |
| `ps aux \| grep <name>` | Find specific process | `ps aux \| grep nginx` |
| `top` | Real-time process monitor | `top` |
| `htop` | Better process monitor | `htop` |
| `kill <PID>` | Kill process by ID | `kill 1234` |
| `kill -9 <PID>` | Force kill process | `kill -9 1234` |
| `killall <name>` | Kill process by name | `killall firefox` |
| `<command> &` | Run command in background | `./long-script.sh &` |
| `jobs` | List background jobs | `jobs` |
| `fg` | Bring job to foreground | `fg` |

## systemd Service Management

| Command | Description | Example |
|---------|-------------|---------|
| `systemctl status <service>` | Check service status | `sudo systemctl status nginx` |
| `systemctl start <service>` | Start service | `sudo systemctl start nginx` |
| `systemctl stop <service>` | Stop service | `sudo systemctl stop nginx` |
| `systemctl restart <service>` | Restart service | `sudo systemctl restart nginx` |
| `systemctl enable <service>` | Enable service at boot | `sudo systemctl enable nginx` |
| `systemctl disable <service>` | Disable service at boot | `sudo systemctl disable nginx` |
| `journalctl -u <service>` | View service logs | `sudo journalctl -u nginx` |
| `journalctl -u <service> -f` | Follow service logs | `sudo journalctl -u nginx -f` |

## Package Management

### Ubuntu/Debian (apt)

| Command | Description | Example |
|---------|-------------|---------|
| `apt update` | Update package list | `sudo apt update` |
| `apt upgrade` | Upgrade packages | `sudo apt upgrade` |
| `apt install <pkg>` | Install package | `sudo apt install nginx` |
| `apt remove <pkg>` | Remove package | `sudo apt remove nginx` |
| `apt search <term>` | Search for package | `apt search nodejs` |
| `apt show <pkg>` | Show package details | `apt show nginx` |

### Amazon Linux/RHEL (yum)

| Command | Description | Example |
|---------|-------------|---------|
| `yum update` | Update packages | `sudo yum update` |
| `yum install <pkg>` | Install package | `sudo yum install nginx` |
| `yum remove <pkg>` | Remove package | `sudo yum remove nginx` |
| `yum search <term>` | Search for package | `yum search nodejs` |

## System Information

| Command | Description | Example |
|---------|-------------|---------|
| `whoami` | Show current user | `whoami` |
| `hostname` | Show system hostname | `hostname` |
| `uname -a` | Show system information | `uname -a` |
| `df -h` | Show disk usage | `df -h` |
| `du -sh <dir>` | Show directory size | `du -sh /var/log` |
| `free -h` | Show memory usage | `free -h` |
| `uptime` | Show system uptime | `uptime` |

## Useful Shortcuts

| Shortcut | Description |
|----------|-------------|
| `Tab` | Auto-complete file/directory names |
| `↑` / `↓` | Browse command history |
| `Ctrl + C` | Cancel current command |
| `Ctrl + D` | Exit terminal/logout |
| `Ctrl + L` | Clear screen |
| `Ctrl + R` | Search command history |
| `Ctrl + A` | Move cursor to beginning of line |
| `Ctrl + E` | Move cursor to end of line |

## Important Directories

| Directory | Purpose | Example Contents |
|-----------|---------|------------------|
| `/` | Root of file system | All other directories |
| `/home` | User home directories | `/home/student`, `/home/ec2-user` |
| `/root` | Root user's home | Root user files |
| `/etc` | System configuration | nginx.conf, systemd services |
| `/var` | Variable data | Logs, databases, web files |
| `/var/log` | Log files | access.log, error.log, syslog |
| `/opt` | Optional software | Custom applications |
| `/tmp` | Temporary files | Cleared on reboot |
| `/usr` | User programs | Installed applications |
| `/usr/bin` | User binaries | Most commands live here |
| `/usr/local` | Locally installed | Your custom installs |

## Piping and Redirection

| Operator | Description | Example |
|----------|-------------|---------|
| `\|` | Pipe output to another command | `ps aux \| grep nginx` |
| `>` | Redirect output to file (overwrite) | `echo "test" > file.txt` |
| `>>` | Append output to file | `echo "more" >> file.txt` |
| `<` | Read input from file | `wc -l < file.txt` |
| `2>` | Redirect errors to file | `command 2> errors.log` |
| `&>` | Redirect both output and errors | `command &> all.log` |

## Real-World EC2/Terraform Examples

### Checking Application Logs
```bash
cd /var/log/myapp
tail -f application.log
grep ERROR *.log
```

### Managing a Web Service
```bash
sudo systemctl status nginx
sudo systemctl restart nginx
sudo journalctl -u nginx -n 50
```

### Troubleshooting Deployment
```bash
# Check if service is running
ps aux | grep node

# Check configuration
cat /etc/myapp/config.json

# View recent logs
tail -100 /var/log/myapp/error.log

# Check disk space
df -h
```

### Setting Up Application Directory
```bash
sudo mkdir -p /opt/myapp
sudo chown ec2-user:ec2-user /opt/myapp
cd /opt/myapp
git clone https://github.com/myrepo/app.git
```

## Getting Help

- `man <command>` - Show full manual for any command
- `<command> --help` - Quick help for most commands
- `apropos <keyword>` - Find commands related to keyword

## Tips for Beginners

1. **Use Tab completion** - Let the shell help you type
2. **Start commands with caution** - Especially `rm`, `mv`, `chmod`
3. **Read error messages** - They usually tell you what's wrong
4. **Use `ls -lah` frequently** - Know what's in your directory
5. **Check logs in `/var/log`** - First place to look when troubleshooting
6. **Google the error** - You're probably not the first to see it
7. **Practice in a sandbox** - Like this one! Can't break anything

## Common Mistakes to Avoid

❌ `rm -rf /` - **NEVER run this** (deletes everything)
❌ `chmod 777 file` - Too permissive, security risk
❌ Editing config files without backup
❌ Running unknown scripts as root
❌ Storing passwords in plain text files

✅ Always backup before editing: `cp file.conf file.conf.bak`
✅ Use least privilege: `chmod 644` for configs, `755` for scripts
✅ Test changes in development first
✅ Read documentation before running commands
