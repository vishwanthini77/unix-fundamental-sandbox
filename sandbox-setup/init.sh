#!/bin/bash
# Sandbox Initialization Script
# Sets up all directories, files, and sample content for Unix learning

set -e

echo "🚀 Setting up Unix Fundamentals Sandbox..."

# ===========================================
# SESSION 1: Navigation Setup
# ===========================================

echo "📁 Setting up Session 1: File System Navigation..."

# Create a realistic project structure
mkdir -p /opt/sampleapp/{frontend,backend,config,scripts}
mkdir -p /var/log/sampleapp
mkdir -p /etc/sampleapp

# Sample application files
cat > /opt/sampleapp/README.md << 'EOF'
# Sample Application

This is a sample React + Node.js application structure
used for learning Unix file system navigation.

Structure:
- frontend/ - React application build files
- backend/ - Node.js server code
- config/ - Application configuration
- scripts/ - Deployment and utility scripts
EOF

cat > /opt/sampleapp/frontend/index.html << 'EOF'
<!DOCTYPE html>
<html>
<head><title>Sample React App</title></head>
<body><div id="root">React App Goes Here</div></body>
</html>
EOF

cat > /opt/sampleapp/backend/server.js << 'EOF'
// Sample Node.js Express Server
const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('Hello from Sample App!');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
EOF

cat > /opt/sampleapp/config/app.conf << 'EOF'
# Application Configuration
APP_NAME=SampleApp
APP_ENV=production
LOG_LEVEL=info
PORT=3000
EOF

# ===========================================
# SESSION 2: Permissions Setup
# ===========================================

echo "🔒 Setting up Session 2: Permissions..."

# Create files with different permissions
mkdir -p /home/student/permission-practice
cd /home/student/permission-practice

touch public-file.txt
chmod 644 public-file.txt
echo "This file is readable by everyone" > public-file.txt

touch private-file.txt
chmod 600 private-file.txt
echo "This file is only accessible by the owner" > private-file.txt

touch executable-script.sh
chmod 755 executable-script.sh
cat > executable-script.sh << 'EOF'
#!/bin/bash
echo "This script can be executed!"
EOF

mkdir shared-folder
chmod 755 shared-folder

mkdir private-folder
chmod 700 private-folder

# ===========================================
# SESSION 3: Processes and systemd Setup
# ===========================================

echo "⚙️  Setting up Session 3: Processes and Services..."

# Create a sample systemd service file
cat > /etc/systemd/system/sampleapp.service << 'EOF'
[Unit]
Description=Sample Application Service
After=network.target

[Service]
Type=simple
User=student
WorkingDirectory=/opt/sampleapp
ExecStart=/usr/bin/node /opt/sampleapp/backend/server.js
Restart=on-failure
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

# Create a sample background process script
cat > /home/student/background-process.sh << 'EOF'
#!/bin/bash
while true; do
    echo "Background process running at $(date)" >> /tmp/background.log
    sleep 30
done
EOF
chmod +x /home/student/background-process.sh

# ===========================================
# SESSION 4: Package Management Setup
# ===========================================

echo "📦 Setting up Session 4: Package Management..."

# Create sample configuration files in /etc
cat > /etc/sampleapp/database.conf << 'EOF'
# Database Configuration
DB_HOST=localhost
DB_PORT=5432
DB_NAME=sampledb
DB_USER=appuser
# DB_PASSWORD=changeme (never store passwords in plain text!)
EOF

cat > /etc/sampleapp/nginx.conf << 'EOF'
# Sample Nginx Configuration
server {
    listen 80;
    server_name example.com;
    
    location / {
        proxy_pass http://localhost:3000;
        proxy_set_header Host $host;
    }
}
EOF

# ===========================================
# SESSION 5: Troubleshooting Setup
# ===========================================

echo "🔧 Setting up Session 5: Troubleshooting..."

# Create realistic log files
cat > /var/log/sampleapp/access.log << 'EOF'
2025-01-27 10:15:23 INFO  [GET /api/users] 200 - Response time: 45ms
2025-01-27 10:15:24 INFO  [GET /api/products] 200 - Response time: 32ms
2025-01-27 10:15:25 WARN  [GET /api/orders] 404 - Resource not found
2025-01-27 10:15:26 INFO  [POST /api/users] 201 - User created successfully
2025-01-27 10:15:27 ERROR [GET /api/data] 500 - Database connection failed
2025-01-27 10:15:28 INFO  [GET /health] 200 - Health check passed
EOF

cat > /var/log/sampleapp/error.log << 'EOF'
2025-01-27 10:15:27 ERROR Database connection timeout
  at Connection.connect (/opt/sampleapp/backend/db.js:45)
  Error: connect ETIMEDOUT 192.168.1.100:5432
  
2025-01-27 10:16:15 ERROR Failed to load configuration
  at ConfigLoader.load (/opt/sampleapp/backend/config.js:12)
  Error: ENOENT: no such file or directory '/etc/sampleapp/missing.conf'

2025-01-27 10:17:03 ERROR Memory limit exceeded
  JavaScript heap out of memory
EOF

cat > /var/log/sampleapp/application.log << 'EOF'
2025-01-27 09:00:00 INFO Application started successfully
2025-01-27 09:00:01 INFO Loaded configuration from /etc/sampleapp/app.conf
2025-01-27 09:00:02 INFO Database connection established
2025-01-27 09:00:03 INFO Server listening on port 3000
2025-01-27 10:15:27 ERROR Database connection lost - attempting reconnect
2025-01-27 10:15:37 WARN Reconnect attempt 1 failed
2025-01-27 10:15:47 WARN Reconnect attempt 2 failed
2025-01-27 10:15:57 INFO Database connection restored
EOF

# Create a broken script for troubleshooting
cat > /home/student/broken-script.sh << 'EOF'
#!/bin/bash
# This script has intentional issues for troubleshooting practice
echo "Starting deployment..."
cd /opt/nonexistent-directory
npm install
npm run build
echo "Deployment complete!"
EOF
chmod +x /home/student/broken-script.sh

# ===========================================
# Create Exercise Files
# ===========================================

echo "📝 Creating exercise files..."

# Session 1 Exercises
cat > /home/student/exercises/session1-navigation/README.md << 'EOF'
# Session 1: File System Navigation Exercises

## Exercise 1: Basic Navigation
1. Find out your current location using `pwd`
2. Navigate to the root directory using `cd /`
3. List all directories in root using `ls`
4. Go back to your home directory using `cd ~`

## Exercise 2: Exploring the Sample App
1. Navigate to `/opt/sampleapp`
2. List all files and directories
3. Read the README.md file using `cat` or `less`
4. Navigate into the `backend` directory
5. View the contents of `server.js`
6. Go back up to `/opt/sampleapp` using `cd ..`

## Exercise 3: Path Practice
Starting from your home directory (`/home/student`):
1. Navigate to `/var/log/sampleapp` using an absolute path
2. List the log files
3. Navigate to `/etc/sampleapp` using `cd ../../etc/sampleapp`
4. Return to your previous directory using `cd -`

## Exercise 4: Hidden Files
1. Go to your home directory
2. List all files including hidden ones using `ls -a`
3. Look for files starting with `.` (like .bashrc)
4. Use `ls -lah` to see detailed info with human-readable sizes

## Challenge
Create a directory structure in your home directory that looks like this:
```
~/projects/
  ├── frontend/
  │   └── src/
  └── backend/
      └── api/
```
Then navigate through it using only relative paths!
EOF

# Session 2 Exercises
cat > /home/student/exercises/session2-permissions/README.md << 'EOF'
# Session 2: Permissions Exercises

## Exercise 1: Reading Permissions
1. Navigate to `~/permission-practice`
2. Run `ls -l` and examine the permission strings
3. Identify which files are:
   - Readable by everyone
   - Only accessible by owner
   - Executable

## Exercise 2: Understanding Permission Numbers
The permission string `-rw-r--r--` means:
- Owner can read and write (rw-)
- Group can read (r--)
- Others can read (r--)

Practice: What do these mean?
- `drwxr-xr-x`
- `-rwx------`
- `-rw-rw-r--`

## Exercise 3: Changing Permissions
1. Create a new file: `touch ~/myfile.txt`
2. Check its permissions: `ls -l ~/myfile.txt`
3. Make it executable: `chmod +x ~/myfile.txt`
4. Check permissions again
5. Remove execute permission: `chmod -x ~/myfile.txt`

## Exercise 4: Understanding sudo
1. Try to read: `cat /etc/shadow` (should fail - requires root)
2. Try with sudo: `sudo cat /etc/shadow`
3. Understand why certain files need elevated permissions

## Challenge
Create a deployment script that:
- Only you can read, write, and execute
- No one else can access it
- Hint: Use `chmod 700`
EOF

# Session 3 Exercises
cat > /home/student/exercises/session3-processes/README.md << 'EOF'
# Session 3: Processes and systemd Exercises

## Exercise 1: Viewing Processes
1. Run `ps aux` to see all processes
2. Run `ps aux | grep bash` to see bash processes
3. Run `top` (press 'q' to quit) to see real-time process info
4. Run `htop` (if available) for a better interface

## Exercise 2: Background Processes
1. Start the background process: `~/background-process.sh &`
2. Check it's running: `ps aux | grep background`
3. View its output: `tail -f /tmp/background.log`
4. Find its PID (Process ID)
5. Stop it: `kill <PID>`

## Exercise 3: systemd Basics
1. Check status of sample service: `sudo systemctl status sampleapp`
2. View all services: `systemctl list-units --type=service`
3. Check logs for a service: `sudo journalctl -u sampleapp`

## Exercise 4: Service Management (Conceptual)
Commands you'd use in production (may not work in container):
- Start: `sudo systemctl start sampleapp`
- Stop: `sudo systemctl stop sampleapp`
- Restart: `sudo systemctl restart sampleapp`
- Enable (start on boot): `sudo systemctl enable sampleapp`

## Challenge
Write a simple script that runs forever and practice:
1. Starting it in the background
2. Finding its PID
3. Stopping it gracefully with kill
EOF

# Session 4 Exercises
cat > /home/student/exercises/session4-packages/README.md << 'EOF'
# Session 4: Package Management Exercises

## Exercise 1: Exploring /etc
1. Navigate to `/etc`
2. Run `ls -l` to see all configuration files
3. Look at `/etc/sampleapp` directory
4. Read the configuration files using `cat` or `less`

## Exercise 2: Package Information
1. Check if nginx is installed: `which nginx`
2. Check nginx version: `nginx -v`
3. See where nginx files are: `dpkg -L nginx` (Ubuntu/Debian)

## Exercise 3: Configuration Files
1. View the sample nginx config: `cat /etc/sampleapp/nginx.conf`
2. View the database config: `cat /etc/sampleapp/database.conf`
3. Understand why configs are in /etc

## Exercise 4: Package Operations (Conceptual)
Common package management commands (Ubuntu/Debian):
- Update package list: `sudo apt update`
- Install package: `sudo apt install <package>`
- Remove package: `sudo apt remove <package>`
- Search for package: `apt search <name>`

For Amazon Linux/RHEL, use `yum` instead of `apt`.

## Challenge
Imagine you're deploying a new application. What would go in:
- /opt/ ?
- /etc/ ?
- /var/log/ ?
- /var/lib/ ?
EOF

# Session 5 Exercises
cat > /home/student/exercises/session5-troubleshooting/README.md << 'EOF'
# Session 5: Troubleshooting Exercises

## Exercise 1: Log Investigation
1. Navigate to `/var/log/sampleapp`
2. View the access log: `cat access.log`
3. Find all ERROR lines: `grep ERROR *.log`
4. Count errors: `grep -c ERROR error.log`
5. View last 10 lines: `tail error.log`
6. Follow log in real-time: `tail -f application.log` (Ctrl+C to stop)

## Exercise 2: Debugging the Broken Script
1. Try running: `~/broken-script.sh`
2. Read the error message
3. Identify what's wrong
4. Fix the script by editing it: `nano ~/broken-script.sh`
5. Run it again

## Exercise 3: Finding Files
1. Find all .log files: `find /var/log -name "*.log"`
2. Find files modified today: `find /opt/sampleapp -type f -mtime 0`
3. Find config files: `find /etc -name "*.conf"`

## Exercise 4: Disk Space
1. Check disk usage: `df -h`
2. Check directory sizes: `du -sh /var/log/*`
3. Find large files: `du -sh /opt/* | sort -rh | head -5`

## Exercise 5: Process Troubleshooting
1. Check if a service is running: `ps aux | grep sampleapp`
2. Check service status: `sudo systemctl status sampleapp`
3. View service logs: `sudo journalctl -u sampleapp -n 50`

## Challenge: Real-World Scenario
Your React app deployed on EC2 is throwing 500 errors. Use what you've learned:
1. Check application logs in `/var/log/sampleapp/`
2. Identify the error (hint: database connection)
3. Check if the service is running
4. Review the configuration in `/etc/sampleapp/`
5. What would you check next?
EOF

# Create main exercises README
cat > /home/student/exercises/README.md << 'EOF'
# Unix Fundamentals Learning Path

Welcome to the Unix Fundamentals Sandbox! This is a safe, hands-on environment to learn Unix system administration basics.

## Course Structure

### Session 1: File System Navigation
Learn to move around the Unix file system like a pro.
- Commands: pwd, cd, ls, mkdir
- Understanding the directory hierarchy
- Absolute vs relative paths

### Session 2: Permissions and Security
Understand and manage file permissions and ownership.
- Reading permission strings (rwx)
- chmod and chown commands
- Understanding sudo and root access

### Session 3: Processes and systemd
Manage running processes and system services.
- Viewing processes (ps, top, htop)
- Managing processes (kill, killall)
- systemd service management

### Session 4: Package Management
Install and manage software packages.
- apt/yum package managers
- Configuration files in /etc
- Understanding system directories

### Session 5: Troubleshooting
Debug real-world issues like a DevOps engineer.
- Reading and searching logs
- Finding files
- Diagnosing service issues

## How to Use This Sandbox

1. Start with Session 1: `cd ~/exercises/session1-navigation`
2. Read the README.md in each session folder
3. Complete the exercises
4. Check solutions in `~/solutions/` if you get stuck
5. Move to the next session when ready

## Quick Reference

### Essential Commands
- `pwd` - Print current directory
- `cd` - Change directory
- `ls` - List files
- `cat` - Display file contents
- `less` - Page through file
- `grep` - Search text
- `find` - Find files
- `ps` - Show processes
- `sudo` - Run as root

### Getting Help
- `man <command>` - Show manual for any command
- `<command> --help` - Quick help for most commands

## Useful Tips

- Use Tab to auto-complete file and directory names
- Use arrow keys to browse command history
- Use Ctrl+C to cancel a running command
- Use Ctrl+D to exit the terminal

## Support

If you have questions or find issues, please open an issue on the GitHub repository.

Happy Learning! 🚀
EOF

# ===========================================
# Set Permissions
# ===========================================

echo "🔐 Setting appropriate permissions..."

# Make student own their files
chown -R student:student /home/student

# Set proper permissions for logs
chmod -R 755 /var/log/sampleapp
chmod 644 /var/log/sampleapp/*

# Set proper permissions for configs
chmod -R 755 /etc/sampleapp
chmod 644 /etc/sampleapp/*

# Application directory
chmod -R 755 /opt/sampleapp
chown -R student:student /opt/sampleapp

echo "✅ Sandbox setup complete!"
echo ""
echo "🎓 To start learning:"
echo "   cd ~/exercises/session1-navigation"
echo "   cat README.md"
