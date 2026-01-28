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

## 🚀 Quick Start

Choose your preferred setup method:

### Option 1: Docker (Recommended - Most Realistic)

**Prerequisites:** [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed

```bash
# Clone the repository
git clone https://github.com/yourusername/unix-fundamentals-sandbox.git
cd unix-fundamentals-sandbox

# Build and run the container
cd docker
docker-compose up -d

# Enter the sandbox
docker exec -it unix-fundamentals-sandbox bash

# You're now in the sandbox! Start learning:
cd ~/exercises/session1-navigation
cat README.md
```

**To exit:** Type `exit`, then `docker-compose down` to stop the container.

### Option 2: GitHub Codespaces (Browser-Based - Zero Install)

**Prerequisites:** GitHub account (free)

1. Click the green "Code" button on this repository
2. Select "Codespaces" tab
3. Click "Create codespace on main"
4. Wait for environment to load (~2 minutes)
5. You're in! Terminal opens automatically

```bash
cd ~/exercises/session1-navigation
cat README.md
```

### Option 3: Replit (Alternative Browser Option)

**Prerequisites:** Replit account (free)

1. Visit [replit.com](https://replit.com)
2. Click "Create Repl"
3. Select "Import from GitHub"
4. Paste this repository URL
5. Click "Import"
6. Terminal opens automatically - start learning!

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

## 🗂️ Repository Structure

```
unix-fundamentals-sandbox/
├── README.md                      # You are here!
├── docker/                        # Docker setup files
│   ├── Dockerfile
│   └── docker-compose.yml
├── .devcontainer/                 # GitHub Codespaces config
│   └── devcontainer.json
├── sandbox-setup/                 # Initialization script
│   └── init.sh
├── exercises/                     # Learning exercises
│   ├── README.md
│   ├── session1-navigation/
│   ├── session2-permissions/
│   ├── session3-processes/
│   ├── session4-packages/
│   └── session5-troubleshooting/
├── solutions/                     # Exercise solutions
│   └── (same structure)
├── cheatsheets/                   # Quick reference
│   └── unix-commands.md
└── resources/                     # Sample files
    ├── sample-app/                # Realistic app structure
    ├── sample-logs/               # Log files for practice
    └── sample-configs/            # Configuration examples
```

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
6. **Ask questions** - Open GitHub issues if stuck

## 📺 Video Tutorial Series

This sandbox accompanies a video tutorial series walking through each session:
- [Session 1: Navigation](#) (Coming soon)
- [Session 2: Permissions](#) (Coming soon)
- [Session 3: Processes](#) (Coming soon)
- [Session 4: Packages](#) (Coming soon)
- [Session 5: Troubleshooting](#) (Coming soon)

## 🤝 Contributing

Found a typo? Have a suggestion? Contributions are welcome!

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

MIT License - Feel free to use this for teaching, learning, or any purpose.

## 🙏 Acknowledgments

Created by [Vishu](https://github.com/yourusername) as part of a journey from IT management to hands-on technical skills. If you're in a similar position, you're not alone!

## 📞 Support & Feedback

- **Issues:** [GitHub Issues](https://github.com/yourusername/unix-fundamentals-sandbox/issues)
- **Discussions:** [GitHub Discussions](https://github.com/yourusername/unix-fundamentals-sandbox/discussions)
- **Video Series:** [YouTube Channel](#)

## 🚦 Next Steps After This Course

Once you've mastered these fundamentals, consider exploring:
- **Advanced Unix:** Shell scripting, cron jobs, ssh configuration
- **AWS Deep Dive:** EC2, VPC, IAM, CloudWatch
- **Terraform:** Infrastructure as Code
- **Docker & Kubernetes:** Containerization
- **CI/CD Pipelines:** GitLab CI, GitHub Actions

---

**Ready to start?** Choose your setup method above and dive into Session 1! 🎉

*Remember: Every expert was once a beginner. You've got this!* 💪
