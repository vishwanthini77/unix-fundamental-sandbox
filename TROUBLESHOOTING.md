# Troubleshooting Guide

Common issues and solutions for Unix Fundamentals Sandbox.

## Docker Issues

### ❌ "docker: command not found"

**Symptoms:**
```bash
$ docker --version
bash: docker: command not found
```

**Problem:** Docker Desktop is not installed on your system.

**Solution:**
1. **Install Docker Desktop:**
   - Windows/Mac: https://www.docker.com/products/docker-desktop/
   - Linux: https://docs.docker.com/engine/install/

2. **Start Docker Desktop:**
   - Open the Docker Desktop application
   - Wait for the whale icon to appear in your system tray/menu bar
   - The icon should NOT be animated (means it's fully started)

3. **Verify installation:**
   ```bash
   docker --version
   # Should show: Docker version 24.x.x or similar
   ```

4. **Restart your terminal** and try again

**Still not working?**
- Make sure you restarted your computer after installing Docker Desktop
- Check if Docker Desktop is running (look for whale icon in system tray)
- Try running Docker Desktop as administrator (Windows) or with sudo (Linux)

---

### ❌ "docker-compose: command not found"

**Symptoms:**
```bash
$ docker-compose up -d
bash: docker-compose: command not found
```

**Problem:** You have Docker Compose V2, which uses different syntax.

**Solution:** Use `docker compose` (space, no hyphen):
```bash
# New syntax (V2)
docker compose up -d
docker compose down

# Old syntax (V1) - don't use this
docker-compose up -d
```

**Why?** Docker Compose V2 is built into Docker Desktop and uses `docker compose` as a subcommand.

---

### ❌ "Cannot connect to the Docker daemon"

**Symptoms:**
```bash
$ docker compose up -d
Cannot connect to the Docker daemon at unix:///var/run/docker.sock
```

**Problem:** Docker Desktop is not running.

**Solution:**
1. Open Docker Desktop application
2. Wait for it to fully start (whale icon appears in system tray)
3. Try your command again

---

### ❌ "Error response from daemon: driver failed"

**Symptoms:**
```bash
Error response from daemon: driver failed programming external connectivity
```

**Problem:** Port conflict - something else is using port 3000 or 80.

**Solution:**
```bash
# Stop any other Docker containers
docker stop $(docker ps -q)

# Or change the port in docker-compose.yml
# Edit docker/docker-compose.yml and change port mappings
```

---

### ❌ Container starts but exercises folder is empty

**Symptoms:**
```bash
$ cd ~/exercises
$ ls
# Nothing shows up
```

**Problem:** Initialization script didn't run properly.

**Solution:**
```bash
# Inside the container, manually run setup:
sudo /tmp/init.sh

# Then verify:
ls ~/exercises
cd ~/exercises/session1-navigation
```

---

### ❌ "permission denied" errors inside container

**Symptoms:**
```bash
$ cat ~/exercises/session1-navigation/README.md
cat: permission denied
```

**Problem:** File permissions issue.

**Solution:**
```bash
# Fix ownership:
sudo chown -R student:student /home/student

# Try again:
cd ~/exercises/session1-navigation
cat README.md
```

---

## GitHub Codespaces Issues

### ❌ Codespace starts but repository files aren't loaded

**Symptoms:**
- Codespace opens successfully
- Only see system folders: `.cache`, `.config`, `.vscode-remote`
- Missing: `cheatsheets`, `docker`, `exercises`, `solutions`, `README.md`
- Terminal shows: `ls: cannot access '/home/student/exercises': No such file or directory`

**Problem:** The `.devcontainer` configuration didn't properly clone the repository.

**Solution: Clone the repository manually**

In the codespace terminal, run these commands:

```bash
# Navigate to home directory
cd ~

# Clone your repository
git clone https://github.com/vishwanthini77/unix-fundamental-sandbox.git

# Enter the directory
cd unix-fundamental-sandbox

# Verify files are there
ls -la
# You should see: cheatsheets, docker, exercises, solutions, etc.

# Run the setup script
chmod +x sandbox-setup/init.sh
sudo sandbox-setup/init.sh

# Start learning!
cd ~/exercises/session1-navigation
cat README.md
```

**This works every time!** Even if the devcontainer doesn't auto-load files, manual cloning gets you learning in under a minute.

---

### ❌ Codespace won't load or is stuck

**Symptoms:**
- Spinning forever on "Setting up your codespace"
- Blank screen
- Error message

**Solutions:**

**Try 1: Wait longer**
- First-time setup takes 2-3 minutes
- Be patient!

**Try 2: Refresh the page**
- Click refresh in your browser
- Or close tab and reopen from GitHub

**Try 3: Different browser**
- Try Chrome or Edge (best compatibility)
- Disable browser extensions (especially ad blockers)

**Try 4: Delete and recreate**
1. Go to https://github.com/codespaces
2. Find your codespace
3. Click "..." → "Delete"
4. Create a new codespace from your repo

---

### ❌ Terminal not showing up in Codespaces

**Problem:** Terminal panel is hidden or closed.

**Solution:**
1. Press **Ctrl+`** (backtick) to toggle terminal
2. Or: View menu → Terminal
3. Or: Click "+" button in bottom panel

---

### ❌ "No such file or directory" in Codespaces

**Symptoms:**
```bash
$ cd ~/exercises
bash: cd: ~/exercises: No such file or directory
```

**Problem:** Initialization didn't complete.

**Solution:**
```bash
# Check if init script exists:
ls -la /workspaces/unix-fundamentals-sandbox/sandbox-setup/

# Manually run setup:
sudo /workspaces/unix-fundamentals-sandbox/sandbox-setup/init.sh

# Exercises should now be in:
cd /home/student/exercises
```

---

### ❌ Running out of Codespaces hours

**Problem:** GitHub free tier gives 120 hours/month, you've used them up.

**Solutions:**

**Option 1: Wait for next month**
- Free tier resets monthly

**Option 2: Use Docker locally**
- Install Docker Desktop and run locally

**Option 3: Upgrade GitHub**
- GitHub Pro: 180 hours/month
- See: https://github.com/pricing

**Tip:** Stop codespaces when not in use!
- Go to https://github.com/codespaces
- Stop unused codespaces to preserve hours

---

## General Learning Issues

### ❓ "I'm lost, where do I start?"

**Solution:**
```bash
# Start here:
cd ~/exercises
cat README.md

# Then Session 1:
cd session1-navigation
cat README.md

# Follow the exercises in order
```

---

### ❓ "The exercises are too hard"

**Solution:**
1. **Read the concepts first** in each session's README
2. **Try the command** and see what happens
3. **Read error messages** - they tell you what's wrong
4. **Check the solutions** - `~/solutions/session1-navigation/SOLUTIONS.md`
5. **Use the cheat sheet** - `cat ~/cheatsheets/unix-commands.md`

**Remember:** Making mistakes is part of learning! This is a safe environment.

---

### ❓ "I broke something!"

**Good news:** You can't really break this sandbox!

**Solutions:**

**In Docker:**
```bash
# Exit the container
exit

# Stop and remove it
docker compose down

# Start fresh
docker compose up -d
docker exec -it unix-fundamentals-sandbox bash
```

**In Codespaces:**
1. Delete the codespace
2. Create a new one
3. Everything resets!

---

### ❓ "Command not found" for basic commands

**Symptoms:**
```bash
$ ls
bash: ls: command not found
```

**Problem:** Something is seriously wrong with your environment.

**Solution:**
- **Docker:** Rebuild container from scratch
- **Codespaces:** Delete and recreate
- **Verify:** You're using the right setup (Ubuntu-based)

---

## Platform-Specific Issues

### Windows Issues

#### Issue: Line ending problems
**Symptoms:** Scripts have `^M` characters or don't run

**Solution:**
```bash
# Fix line endings:
sudo apt-get install dos2unix
dos2unix ~/exercises/session1-navigation/README.md
```

#### Issue: Git bash vs PowerShell vs CMD
**Recommendation:** Use Git Bash or Windows Terminal with WSL2 for best results

---

### Mac Issues

#### Issue: Rosetta 2 on M1/M2 Macs
**Solution:** Docker Desktop for Apple Silicon handles this automatically. Make sure you have the ARM64 version installed.

---

## Getting Help

### Before asking for help:

1. ✅ Check this troubleshooting guide
2. ✅ Read the error message carefully
3. ✅ Try the command again (typos happen!)
4. ✅ Search existing GitHub issues

### How to ask for help:

**Open a GitHub Issue with:**
1. **What you're trying to do**
   - "I'm trying to start the Docker container"

2. **What you expected**
   - "Container should start and I can enter it"

3. **What actually happened**
   - "Got error: docker: command not found"

4. **Your environment**
   - OS: Windows 11
   - Docker version: Not installed
   - Setup method: Docker

5. **What you've tried**
   - "Tried running docker-compose up -d"
   - "Searched for Docker installation guides"

**Include screenshots** if helpful!

---

## Quick Reference

### Useful Commands for Troubleshooting

```bash
# Check where you are
pwd

# List what's in current directory
ls -la

# Check if Docker is installed
docker --version

# Check if Docker is running
docker ps

# Check Codespace disk space
df -h

# Check processes
ps aux

# View recent terminal history
history | tail -20
```

---

## Still Stuck?

**Community Support:**
- GitHub Issues: [Report a problem](https://github.com/yourusername/unix-fundamentals-sandbox/issues)
- Discussions: [Ask a question](https://github.com/yourusername/unix-fundamentals-sandbox/discussions)

**Email:** your-email@example.com

**Remember:** There are no stupid questions! We all started as beginners. 🙂

