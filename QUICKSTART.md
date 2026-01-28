# Quick Start Guide

Get into the Unix learning environment in under 5 minutes.

## ⚡ Choose Your Setup Method

### Option A: GitHub Codespaces (Fastest - 2 Minutes) ⭐ RECOMMENDED FOR BEGINNERS

**✅ No installation required**  
**✅ Works in your browser**  
**✅ Free tier: 120 hours/month**

#### Steps:
1. Make sure you have a GitHub account ([sign up free](https://github.com/join))
2. Go to this repository on GitHub
3. Click the green **"Code"** button
4. Select **"Codespaces"** tab
5. Click **"Create codespace on main"**
6. Wait ~2 minutes (first time only)
7. Terminal opens automatically ✨

```bash
# You're in! Start learning:
cd ~/exercises/session1-navigation
cat README.md
```

**💡 Tip:** Bookmark your codespace URL for quick access later!

**⚠️ Troubleshooting:** If you don't see the repository files (missing `exercises`, `solutions` folders), the codespace may not have loaded them properly. **Quick fix:**

```bash
cd ~
git clone https://github.com/vishwanthini77/unix-fundamental-sandbox.git
cd unix-fundamental-sandbox
chmod +x sandbox-setup/init.sh
sudo sandbox-setup/init.sh
cd ~/exercises/session1-navigation
```

Now you're ready to learn!

---

### Option B: Docker Desktop (15 Minutes)

**✅ Works offline**  
**✅ Most realistic environment**  
**⚠️ Requires installation**

#### Step 1: Install Docker Desktop FIRST

**🚨 IMPORTANT: You MUST install Docker Desktop before proceeding!**

Running `docker` commands without Docker installed will give you: `command not found`

**Install from:** https://www.docker.com/products/docker-desktop/

**System Requirements:**
- Windows 10/11 Pro or macOS 10.15+
- 4GB RAM (8GB recommended)
- ~3GB free disk space

**After installing:**
1. Open Docker Desktop
2. Wait for it to start completely (whale icon in system tray)
3. Verify: Open terminal and run `docker --version`
   - Should show version number
   - If "command not found", restart computer

#### Step 2: Set Up Sandbox

```bash
# Clone repository
git clone https://github.com/yourusername/unix-fundamentals-sandbox.git
cd unix-fundamentals-sandbox/docker

# Start container (use command without hyphen on newer Docker)
docker compose up -d

# If "command not found", try old syntax:
# docker-compose up -d

# Enter the sandbox
docker exec -it unix-fundamentals-sandbox bash

# Start learning!
cd ~/exercises/session1-navigation
cat README.md
```

#### To Stop:
```bash
# Exit container
exit

# Stop container
docker compose down
```

---

### Option C: Replit (Alternative Browser)

**✅ Browser-based**  
**✅ No installation**  
**⚠️ Requires Replit account**

#### Steps:
1. Go to [replit.com](https://replit.com) and sign up (free)
2. Click "Create Repl"
3. Select "Import from GitHub"
4. Paste repository URL
5. Click "Import" and wait for setup
6. Terminal opens - you're ready!

```bash
cd ~/exercises/session1-navigation
cat README.md
```

---

## 🎯 What to Do First

Once you're in the sandbox (any method):

### 1. Orient Yourself
```bash
# Where am I?
pwd
# Output: /home/student

# What's here?
ls
# Output: exercises, solutions, cheatsheets
```

### 2. Start Session 1
```bash
cd ~/exercises/session1-navigation
cat README.md
```

### 3. Follow the Exercises
- Read the instructions
- Try the commands
- Experiment!
- Check solutions if stuck: `~/solutions/session1-navigation/SOLUTIONS.md`

### 4. Use the Cheat Sheet
```bash
cat ~/cheatsheets/unix-commands.md
```

---

## 🆘 Troubleshooting

### "docker: command not found"
→ Install Docker Desktop first: https://www.docker.com/products/docker-desktop/

### "docker-compose: command not found"
→ Use `docker compose` (no hyphen) instead

### Codespace won't load
→ Wait 2-3 minutes, refresh page, or try different browser

### Still stuck?
→ See [TROUBLESHOOTING.md](TROUBLESHOOTING.md) for detailed help

---

## 📊 Quick Comparison

| Method | Setup Time | Requirements | Best For |
|--------|-----------|--------------|----------|
| **Codespaces** | 2 min | Browser + GitHub account | Beginners, quick start |
| **Docker** | 15 min | Docker Desktop installed | Offline work, recording |
| **Replit** | 5 min | Replit account | Alternative browser option |

---

## ✅ You're Ready!

Pick your method above and start learning. Remember:
- **Session 1** teaches file system navigation
- Work through **sessions in order**
- **Experiment freely** - you can't break anything!
- **Check solutions** if you get stuck

**Have fun learning Unix!** 🚀

---

## 🔗 Quick Links

- [Full README](README.md) - Complete documentation
- [Troubleshooting Guide](TROUBLESHOOTING.md) - Common issues
- [Exercises Overview](exercises/README.md) - All 5 sessions
- [Commands Cheat Sheet](cheatsheets/unix-commands.md) - Quick reference

---

**Questions?** Open an issue on GitHub or check the [Troubleshooting Guide](TROUBLESHOOTING.md)!

