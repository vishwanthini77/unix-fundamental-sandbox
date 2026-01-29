# Quick Start Guide

**Goal:** Get you learning Unix in under 2 minutes. No setup required.

---

## ⚡ Fastest Way to Start (Recommended)

### Click This Button:

[![Run on Repl.it](https://replit.com/badge/github/yourusername/unix-fundamentals-sandbox)](https://replit.com/github/yourusername/unix-fundamentals-sandbox)

**Then:**
1. Click **"Fork Repl"** (creates your own copy)
2. Wait 30 seconds while it sets up
3. Terminal appears automatically
4. Start typing commands!

```bash
# Your first command - try it now:
pwd

# Where are the exercises?
ls exercises/

# Start learning:
cd exercises/session1-navigation
cat README.md
```

**That's it! You're learning Unix.** 🎉

---

## Why Replit?

✅ **Zero installation** - Works in your browser  
✅ **No Unix knowledge needed** - Just click and go  
✅ **Free** - Generous free tier  
✅ **Persistent** - Your work is saved  
✅ **Accessible** - Works on any device  

**Perfect for beginners!**

---

## Alternative Options (Advanced Users)

<details>
<summary><b>GitHub Codespaces</b> (Browser, requires some setup)</summary>

**Prerequisites:** 
- GitHub account
- Comfortable running commands

**Steps:**
1. Go to: https://github.com/yourusername/unix-fundamental-sandbox
2. Click **"Code"** → **"Codespaces"** → **"Create codespace on main"**
3. Wait 2-3 minutes
4. Run these commands in terminal:
   ```bash
   cd ~
   git clone https://github.com/yourusername/unix-fundamental-sandbox.git
   cd unix-fundamental-sandbox
   cd exercises/session1-navigation
   cat README.md
   ```

⚠️ **Note:** Requires manual setup. If you're a complete beginner, use Replit instead.
</details>

<details>
<summary><b>Docker Desktop</b> (Local, for recording videos)</summary>

**Prerequisites:**
- Docker Desktop installed: https://www.docker.com/products/docker-desktop/
- Terminal/command-line comfort
- 15-20 minutes

**Steps:**
```bash
git clone https://github.com/yourusername/unix-fundamentals-sandbox.git
cd unix-fundamentals-sandbox/docker
docker compose up -d
docker exec -it unix-fundamentals-sandbox bash
cd ~/exercises/session1-navigation
cat README.md
```

**Best for:** Recording video tutorials, offline work
</details>

---

## 🎯 What to Do First

Once you're in any environment:

### 1. Orient Yourself
```bash
# Where am I?
pwd

# What's here?
ls
```

### 2. Find the Exercises
```bash
# List all sessions
ls exercises/

# Go to Session 1
cd exercises/session1-navigation
```

### 3. Read the Instructions
```bash
# Read Session 1 exercises
cat README.md

# Or use 'less' to page through:
less README.md
# (Press 'q' to quit)
```

### 4. Start Learning!
Follow the exercises, experiment, make mistakes (they're how you learn!).

### 5. Check Solutions If Stuck
```bash
cd solutions/session1-navigation
cat SOLUTIONS.md
```

### 6. Use the Cheat Sheet
```bash
cat cheatsheets/unix-commands.md
# Or: less cheatsheets/unix-commands.md
```

---

## 📊 Comparison Table

| Method | Setup Time | Best For | Requirements |
|--------|-----------|----------|--------------|
| **Replit** ⭐ | 30 seconds | Complete beginners | Browser only |
| **Codespaces** | 2-5 min | Some Unix knowledge | GitHub account, manual setup |
| **Docker** | 15-20 min | Video recording, offline | Docker installed, CLI comfort |

---

## 🆘 Troubleshooting

### Replit Issues

**Problem:** Can't find exercises folder  
**Solution:** They should appear automatically. Try: `ls exercises/`

**Problem:** Repl won't load  
**Solution:** Try different browser, clear cache, or create new Repl

### For Other Setup Methods

See [TROUBLESHOOTING.md](TROUBLESHOOTING.md) for detailed help.

---

## ✅ You're Ready!

Pick your method above and **start learning**.

Remember:
- Session 1 teaches file system navigation
- Work through sessions in order
- Experiment freely - you can't break anything!
- Check solutions if you get stuck

**Have fun learning Unix!** 🚀

---

## 🔗 Quick Links

- [Full README](README.md) - Complete documentation
- [Troubleshooting Guide](TROUBLESHOOTING.md) - Common issues
- [Commands Cheat Sheet](cheatsheets/unix-commands.md) - Quick reference
- [Video Series](#) - Follow along tutorials (coming soon)

---

**Ready? Click the Replit button at the top and start learning!** 👆
