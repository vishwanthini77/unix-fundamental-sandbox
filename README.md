# Unix Fundamentals Sandbox 🚀

**Learn Unix without knowing Unix first.**

A hands-on, interactive learning environment for mastering Unix/Linux fundamentals. Perfect for IT managers, project managers, product owners, delivery managers, and anyone who wants to understand what engineers are talking about when they mention `/etc`, `systemd`, or "check the logs."

## 🎯 Who Is This For?

This sandbox is designed for **complete beginners** and **non-technical professionals** who:
- Work with engineers but don't understand Unix terminology
- Want to deploy applications on EC2 using Terraform
- Need to understand system administration basics
- Are tired of "nodding along" when DevOps engineers speak
- Want practical, real-world knowledge (not academic theory)

**You don't need any prior Unix experience!**

---

## 🚀 Get Started in 2 Minutes (No Setup Required!)

### ⭐ RECOMMENDED: Replit (Click and Learn)

**✅ No installation**  
**✅ No commands to set up**  
**✅ Works in your browser**  
**✅ Start learning immediately**

#### Quick Start:
1. Click this button: [![Run on Repl.it](https://replit.com/badge/github/yourusername/unix-fundamentals-sandbox)](https://replit.com/github/yourusername/unix-fundamentals-sandbox)
2. Click **"Fork Repl"** (creates your own copy)
3. Wait 30 seconds for setup
4. Terminal opens automatically
5. **You're learning!**

```bash
# First command to try:
pwd
```

**That's it!** No git, no docker, no configuration. Just click and learn.

**💡 Tip:** Bookmark your Repl for easy access later!

---

## 🌟 What Makes This Different?

✅ **Zero setup friction** - Click button, start learning  
✅ **Pre-configured environment** with sample apps, logs, and configs  
✅ **Real-world scenarios** - EC2 deployments, React apps, troubleshooting  
✅ **Progressive learning** - 5 focused sessions, 3-5 hours total  
✅ **Hands-on exercises** with complete solutions  
✅ **Cheat sheets** for quick reference  

---

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

---

## 📖 How to Use This Sandbox

Once you're in Replit (or your chosen environment):

1. **Start with Session 1:**
   ```bash
   cd exercises/session1-navigation
   cat README.md
   ```

2. **Work through exercises** in each session folder

3. **Check solutions** if you get stuck:
   ```bash
   cd solutions/session1-navigation
   cat SOLUTIONS.md
   ```

4. **Use the cheat sheet** for quick reference:
   ```bash
   cat cheatsheets/unix-commands.md
   ```

5. **Take your time** - this is a safe environment, you can't break anything!

---

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

---

## 🔧 Advanced Setup Options

**Most people should use Replit above.** These options are for advanced users who want local environments or specific setups.

<details>
<summary><b>Option A: GitHub Codespaces</b> (Browser-based, requires manual setup)</summary>

**Prerequisites:** GitHub account (free)

**Note:** This requires some command-line knowledge to set up properly. If you're a complete beginner, use Replit instead.

**Steps:**
1. Go to this repository on GitHub
2. Click **"Code"** → **"Codespaces"** → **"Create codespace on main"**
3. Wait 2-3 minutes for environment to load
4. In terminal, run setup commands:
   ```bash
   cd ~
   git clone https://github.com/yourusername/unix-fundamental-sandbox.git
   cd unix-fundamental-sandbox
   cd exercises/session1-navigation
   cat README.md
   ```

✅ Free tier: 120 hours/month  
⚠️ Requires: Some Unix command knowledge  
⚠️ Requires: Manual setup steps  

See [TROUBLESHOOTING.md](TROUBLESHOOTING.md) for common issues.
</details>

<details>
<summary><b>Option B: Docker Desktop</b> (Local setup, for recording videos)</summary>

**Prerequisites:** 
- Docker Desktop installed (https://www.docker.com/products/docker-desktop/)
- Comfortable with terminal/command line
- 15-20 minutes setup time

**Important:** You must install Docker Desktop BEFORE these steps will work.

**Steps:**
```bash
# Clone repository
git clone https://github.com/yourusername/unix-fundamentals-sandbox.git
cd unix-fundamentals-sandbox/docker

# Start container
docker compose up -d

# Enter sandbox
docker exec -it unix-fundamentals-sandbox bash

# Start learning
cd ~/exercises/session1-navigation
cat README.md
```

**To stop:**
```bash
exit
docker compose down
```

✅ Works offline  
✅ Most realistic environment  
⚠️ Requires: Docker installation  
⚠️ Requires: Command-line comfort  
⚠️ Time: 15-20 minutes to set up  

See [TROUBLESHOOTING.md](TROUBLESHOOTING.md) for Docker-specific issues.
</details>

---

## 💡 Tips for Success

1. **Type commands yourself** - Don't copy/paste everything
2. **Read error messages carefully** - They tell you what's wrong
3. **Use Tab completion** - Let the shell help you type
4. **Experiment freely** - You can't break this sandbox
5. **Take breaks** - Learning is more effective in focused sessions

---

## 🆘 Need Help?

### Quick Fixes
- **Can't find exercises?** Run: `ls exercises/`
- **Lost?** Run: `pwd` to see where you are
- **Start over?** Just refresh Replit or create new Codespace

### Full Troubleshooting
See [TROUBLESHOOTING.md](TROUBLESHOOTING.md) for detailed help with:
- Setup issues
- Docker problems
- Codespaces issues
- Common errors

### Community Support
- **Issues:** [GitHub Issues](https://github.com/yourusername/unix-fundamentals-sandbox/issues)
- **Discussions:** [GitHub Discussions](https://github.com/yourusername/unix-fundamentals-sandbox/discussions)

---

## 🗂️ Repository Structure

```
unix-fundamentals-sandbox/
├── README.md                      # You are here!
├── QUICKSTART.md                  # 2-minute setup guide
├── TROUBLESHOOTING.md             # Common issues and solutions
├── exercises/                     # Learning exercises (5 sessions)
├── solutions/                     # Exercise solutions
├── cheatsheets/                   # Quick reference guides
├── docker/                        # Docker setup (advanced)
└── .devcontainer/                 # Codespaces config (advanced)
```

---

## 📺 Video Tutorial Series

This sandbox accompanies the **"For the Rest of Us"** video tutorial series:
- [Playlist: Unix for the Rest of Us](#) (Coming soon)

**Subscribe for updates when new sessions are released!**

---

## 🤝 Contributing

Found a typo? Have a suggestion? Contributions are welcome!

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

---

## 📄 License

MIT License - Feel free to use this for teaching, learning, or any purpose.

---

## 🙏 About

Created as part of the **"For the Rest of Us"** series - technical skills for the technically adjacent.

**Creator:** Vishu ([vishwanthini77](https://github.com/vishwanthini77))  
**Series:** For the Rest of Us  
**Mission:** Stop nodding along. Start understanding.  

---

## 🚦 What's Next?

Once you've mastered Unix fundamentals, check out other courses in the "For the Rest of Us" series:
- **React for the Rest of Us** (Coming soon)
- **Terraform for the Rest of Us** (Coming soon)
- **Docker for the Rest of Us** (Coming soon)

---

## 📞 Support & Feedback

- **Issues:** [Report a problem](https://github.com/yourusername/unix-fundamentals-sandbox/issues)
- **Discussions:** [Ask a question](https://github.com/yourusername/unix-fundamentals-sandbox/discussions)
- **Email:** your-email@example.com

---

**Ready to start?** 

👉 **Click here:** [![Run on Repl.it](https://replit.com/badge/github/yourusername/unix-fundamentals-sandbox)](https://replit.com/github/yourusername/unix-fundamentals-sandbox)

*Remember: Every expert was once a beginner. You've got this!* 💪
