# Unix Fundamentals Sandbox 🚀

A hands-on, interactive learning environment for mastering Unix/Linux fundamentals. Perfect for IT managers, project managers, product owners, delivery managers, and anyone who wants to understand what engineers are talking about when they mention `/etc`, `systemd`, or "check the logs."

## 🎯 Who Is This For?

This sandbox is designed for **complete beginners** and **non-technical professionals** who:
- Work with engineers but don't understand Unix terminology
- Want to deploy applications on EC2 using Terraform
- Need to understand system administration basics
- Are tired of "nodding along" when DevOps engineers speak
- Want practical, real-world knowledge (not academic theory)

**You don't need any prior Unix experience!**

## 🌟 What Makes This Different?

✅ **Two setup options:** Docker (realistic) and Browser-based (zero install)  
✅ **Pre-configured environment** with sample apps, logs, and configs  
✅ **Real-world scenarios:** EC2 deployments, React apps, troubleshooting  
✅ **Progressive learning:** 5 focused sessions, 3-5 hours total  
✅ **Hands-on exercises** with complete solutions  
✅ **Cheat sheets** for quick reference  

## 📚 Course Structure

### Session 1: File System Navigation (45 min)
Learn to move around the Unix file system confidently.
- **Commands:** `pwd`, `cd`, `ls`, `mkdir`
- **Concepts:** Directory hierarchy, absolute vs relative paths
- **Real-world:** Understanding `/etc`, `/var/log`, `/opt`

### Session 2: Permissions & Security (45 min)
Understand and manage file permissions and ownership.
- **Commands:** `chmod`, `chown`, `ls -l`
- **Concepts:** Permission strings (rwx), sudo, root access
- **Real-world:** Securing deployment scripts, setting up app directories

### Session 3: Processes & systemd (60 min)
Manage running processes and system services.
- **Commands:** `ps`, `top`, `kill`, `systemctl`, `journalctl`
- **Concepts:** Background processes, service management
- **Real-world:** Starting/stopping services, checking service status

### Session 4: Package Management (45 min)
Install software and understand system configuration.
- **Commands:** `apt`/`yum`, package operations
- **Concepts:** Configuration files in `/etc`, environment variables
- **Real-world:** Installing web servers, managing dependencies

### Session 5: Troubleshooting (60 min)
Debug real-world issues like a DevOps engineer.
- **Commands:** `grep`, `find`, `tail`, `df`, `du`
- **Concepts:** Reading logs, finding files, diagnosing issues
- **Real-world:** Debugging failed deployments, analyzing application logs

**Total Time:** 4-5 hours (self-paced)

## 🚀 Quick Start - Choose Your Path

### 🔥 FASTEST: GitHub Codespaces (Browser-Based - 2 Minutes)

**No installation needed! Perfect if you want to start learning RIGHT NOW.**

**Prerequisites:** 
- GitHub account (free) - [Sign up here](https://github.com/join)
- Modern web browser

**Steps:**
1. Go to this repository on GitHub
2. Click the green **"Code"** button
3. Click **"Codespaces"** tab
4. Click **"Create codespace on main"**
5. Wait ~2 minutes while environment sets up
6. Terminal opens automatically - you're ready!

```bash
# Once the terminal loads, start learning:
cd ~/exercises/session1-navigation
cat README.md
```

**⚠️ Files not showing?** If you don't see `exercises` or `solutions` folders:
```bash
cd ~
git clone https://github.com/vishwanthini77/unix-fundamental-sandbox.git
cd unix-fundamental-sandbox
chmod +x sandbox-setup/init.sh
sudo sandbox-setup/init.sh
```
See [Troubleshooting Guide](TROUBLESHOOTING.md) for details.

✅ **Pros:** Instant access, works on any device, no setup  
✅ **Free tier:** 120 hours/month (plenty for this course)  
⚠️ **Requires:** Internet connection

---

### 💻 Docker Desktop (Local Setup - 15 Minutes)

**More realistic environment. Best for recording videos or offline work.**

#### Prerequisites - READ THIS FIRST! ⚠️

**YOU MUST INSTALL DOCKER DESKTOP BEFORE PROCEEDING!**

Docker is NOT installed by default on your computer. If you try to run `docker` commands without installing it first, you'll get an error: `command not found` or `docker: command not found`.

**Install Docker Desktop:**
1. Go to: **https://www.docker.com/products/docker-desktop/**
2. Download for your operating system (Windows/Mac/Linux)
3. Install and follow the setup wizard
4. **Restart your computer** if prompted
5. Open Docker Desktop and wait for it to fully start (whale icon in system tray)
6. Verify installation: Open terminal and run `docker --version`
   - Should show: `Docker version 24.x.x` or similar
   - If you see "command not found", Docker isn't installed correctly

**System Requirements:**
- Windows 10/11 (64-bit) or macOS 10.15+ or Linux
- 4GB RAM minimum (8GB recommended)
- ~3GB free disk space

#### Setup Steps (After Docker Desktop is Installed):

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/unix-fundamentals-sandbox.git
cd unix-fundamentals-sandbox

# 2. Navigate to docker directory
cd docker

# 3. Build and start the container
# NOTE: Use "docker compose" (no hyphen) on newer Docker versions
docker compose up -d

# If you get "command not found", try the old syntax:
# docker-compose up -d

# 4. Enter the sandbox
docker exec -it unix-fundamentals-sandbox bash

# 5. You're in! Start learning:
cd ~/exercises/session1-navigation
cat README.md
```

**To exit and stop:**
```bash
# Inside container, type:
exit

# Then stop the container:
docker compose down
```

✅ **Pros:** Works offline, most realistic, full control  
⚠️ **Cons:** Requires installation, uses disk space  

---

### 🌐 Replit (Alternative Browser Option)

**Prerequisites:** Replit account (free)

1. Visit [replit.com](https://replit.com) and sign up
2. Click **"Create Repl"**
3. Select **"Import from GitHub"**
4. Paste this repository URL
5. Click **"Import"**
6. Wait for setup, then terminal opens automatically

```bash
cd ~/exercises/session1-navigation
cat README.md
```

---

## 🆘 Troubleshooting Common Issues

### "docker: command not found" or "docker-compose: command not found"

**Problem:** Docker Desktop is not installed or not running.

**Solution:**
1. Install Docker Desktop from https://www.docker.com/products/docker-desktop/
2. Make sure Docker Desktop is running (check system tray for whale icon)
3. Restart your terminal/command prompt
4. Try again

### "docker-compose: command not found" (but docker works)

**Problem:** You have Docker Compose V2 which uses different syntax.

**Solution:** Use `docker compose` (no hyphen) instead of `docker-compose`:
```bash
docker compose up -d
docker compose down
```

### Container builds but exercises folder is empty

**Problem:** Initialization script didn't run.

**Solution:**
```bash
# Enter the container
docker exec -it unix-fundamentals-sandbox bash

# Manually run setup
sudo /tmp/init.sh

# Then start learning
cd ~/exercises/session1-navigation
```

### GitHub Codespaces not loading

**Problem:** Browser blocking or slow internet.

**Solution:**
1. Try a different browser (Chrome/Edge recommended)
2. Check your internet connection
3. Wait a bit longer - first time setup takes 2-3 minutes
4. Refresh the page

### Still stuck?

**Open an issue:** [GitHub Issues](https://github.com/yourusername/unix-fundamentals-sandbox/issues)

---

## 📖 How to Use This Sandbox

1. **Start with Session 1:**
   ```bash
   cd ~/exercises/session1-navigation
   cat README.md
   ```

2. **Work through exercises** in each session folder

3. **Check solutions** if you get stuck:
   ```bash
   cd ~/solutions/session1-navigation
   cat SOLUTIONS.md
   ```

4. **Use the cheat sheet** for quick reference:
   ```bash
   cat ~/cheatsheets/unix-commands.md
   ```

5. **Take your time** - this is a safe environment, you can't break anything!

## 🎓 What You'll Learn

By the end of this course, you'll be able to:

✅ Navigate any Unix system confidently  
✅ Understand when someone says "check `/var/log`" or "edit `/etc/nginx/nginx.conf`"  
✅ Read and modify file permissions  
✅ Manage system services with systemd  
✅ Troubleshoot common deployment issues  
✅ Read and search log files effectively  
✅ Understand EC2 instance file systems  
✅ Follow along with DevOps engineers  

## 💡 Tips for Success

1. **Type commands yourself** - Don't copy/paste everything
2. **Read error messages carefully** - They tell you what's wrong
3. **Use Tab completion** - Let the shell help you type
4. **Experiment freely** - You can't break this sandbox
5. **Take breaks** - Learning is more effective in focused sessions

## 🗂️ Repository Structure

```
unix-fundamentals-sandbox/
├── README.md                      # You are here!
├── QUICKSTART.md                  # 5-minute quick start guide
├── TROUBLESHOOTING.md             # Common issues and solutions
├── docker/                        # Docker setup files
├── .devcontainer/                 # GitHub Codespaces config
├── exercises/                     # Learning exercises (5 sessions)
├── solutions/                     # Exercise solutions
├── cheatsheets/                   # Quick reference guides
└── resources/                     # Sample files and configs
```

## 📺 Video Tutorial Series

This sandbox accompanies a video tutorial series walking through each session:
- [Playlist: Unix for the Rest of Us](#) (Coming soon)

**Subscribe for updates when new sessions are released!**

## 🤝 Contributing

Found a typo? Have a suggestion? Contributions are welcome!

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

MIT License - Feel free to use this for teaching, learning, or any purpose.

## 🙏 About

Created as part of the **"For the Rest of Us"** series - technical skills for the technically adjacent.

**Creator:** [Your Name](https://github.com/yourusername)  
**Series:** For the Rest of Us  
**Website:** [Coming soon]  

## 📞 Support & Feedback

- **Issues:** [GitHub Issues](https://github.com/yourusername/unix-fundamentals-sandbox/issues)
- **Discussions:** [GitHub Discussions](https://github.com/yourusername/unix-fundamentals-sandbox/discussions)
- **Video Series:** [YouTube Channel](#)

## 🚦 What's Next?

Once you've mastered Unix fundamentals, check out other courses in the "For the Rest of Us" series:
- **React for the Rest of Us** (Coming soon)
- **Terraform for the Rest of Us** (Coming soon)
- **Docker for the Rest of Us** (Coming soon)

---

**Ready to start?** 

👉 **Fastest:** [Try GitHub Codespaces](#-fastest-github-codespaces-browser-based---2-minutes) (2 minutes, no install)  
👉 **Most realistic:** [Install Docker Desktop](#-docker-desktop-local-setup---15-minutes) (15 minutes, works offline)

*Remember: Every expert was once a beginner. You've got this!* 💪

