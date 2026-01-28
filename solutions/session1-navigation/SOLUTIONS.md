# Session 1 Solutions: File System Navigation

## Exercise 1: Basic Navigation

```bash
# 1. Find current location
pwd
# Output: /home/student

# 2. Navigate to root
cd /
# Verify with: pwd
# Output: /

# 3. List all directories in root
ls
# You should see: bin, boot, dev, etc, home, opt, root, tmp, usr, var, etc.

# 4. Go back to home
cd ~
# Or just: cd
# Verify with: pwd
# Output: /home/student
```

## Exercise 2: Exploring the Sample App

```bash
# 1. Navigate to sample app
cd /opt/sampleapp

# 2. List contents
ls
# Output: backend  config  frontend  README.md  scripts

# 3. Read the README
cat README.md
# Or use: less README.md (press 'q' to quit)

# 4. Navigate to backend
cd backend

# 5. View server.js
cat server.js
# Or: less server.js

# 6. Go back up
cd ..
# Verify with: pwd
# Output: /opt/sampleapp
```

## Exercise 3: Path Practice

```bash
# Starting from home (/home/student)
cd ~

# 1. Navigate to /var/log/sampleapp (absolute path)
cd /var/log/sampleapp
pwd
# Output: /var/log/sampleapp

# 2. List log files
ls
# Output: access.log  application.log  error.log

# 3. Navigate to /etc/sampleapp using relative path
cd ../../etc/sampleapp
pwd
# Output: /etc/sampleapp
# Explanation: .. goes to /var, .. goes to /, then etc/sampleapp

# 4. Return to previous directory
cd -
pwd
# Output: /var/log/sampleapp
```

## Exercise 4: Hidden Files

```bash
# 1. Go home
cd ~

# 2. List including hidden files
ls -a
# You'll see files starting with . like .bashrc, .bash_profile

# 3. Look for hidden files
# They start with a dot: .bashrc, .profile, etc.

# 4. Detailed list with human-readable sizes
ls -lah
# Shows permissions, owner, size (in KB/MB), and date for all files
```

## Challenge: Create Directory Structure

```bash
# Start from home
cd ~

# Create the structure (using -p to create parent directories)
mkdir -p projects/frontend/src
mkdir -p projects/backend/api

# Verify it was created
tree projects
# Or use: ls -R projects

# Navigate using relative paths
cd projects
pwd
# Output: /home/student/projects

cd frontend
pwd
# Output: /home/student/projects/frontend

cd src
pwd
# Output: /home/student/projects/frontend/src

cd ../../backend
pwd
# Output: /home/student/projects/backend

cd api
pwd
# Output: /home/student/projects/backend/api

cd ~/projects
pwd
# Output: /home/student/projects
```

## Key Concepts Reinforced

1. **Absolute paths** start with `/` (from root)
   - Example: `/var/log/sampleapp`
   - Works from anywhere

2. **Relative paths** don't start with `/`
   - Example: `backend/api`
   - Relative to current location

3. **Special directory symbols:**
   - `~` = home directory
   - `.` = current directory
   - `..` = parent directory
   - `-` = previous directory

4. **Hidden files** start with `.`
   - Usually configuration files
   - Use `ls -a` to see them

## Common Mistakes and Fixes

**Mistake:** `cd projects/frontend/src` from wrong directory
```bash
# Error: bash: cd: projects/frontend/src: No such file or directory
# Fix: Check where you are first
pwd
# Navigate to home first
cd ~
# Then try again
cd projects/frontend/src
```

**Mistake:** Forgetting you're in a different directory
```bash
# Always check location before navigating
pwd
# This saves time and prevents errors
```

**Mistake:** Using absolute path when relative is simpler
```bash
# Inefficient: cd /home/student/projects/backend
# Better (if you're in /home/student): cd projects/backend
# Better (if you're in /home/student/projects): cd backend
```
