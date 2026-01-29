# Session 1: File System Navigation Exercises

Welcome to your first Unix session! In this session, you'll learn to navigate the Unix file system like a pro.

## 🎯 What You'll Learn

- Where you are in the file system (`pwd`)
- How to move around (`cd`)
- How to see what's in a directory (`ls`)
- Understanding absolute vs relative paths
- The Unix directory structure

---

## Exercise 1: Finding Your Location

The first step in navigation is knowing where you are!

**Commands to learn:**
- `pwd` - Print Working Directory (shows your current location)

**Tasks:**
1. Type `pwd` and press Enter
   - What do you see? This is your current location!
2. The output probably shows something like `/home/runner/unix-fundamental-sandbox`
3. This is called a "path" - it shows your location in the file system

**Understanding the output:**
- `/` at the beginning means "root" (top of everything)
- Each `/` separates directory names
- You're "inside" several nested directories

---

## Exercise 2: Looking Around

Now let's see what's in your current directory.

**Commands to learn:**
- `ls` - List contents of current directory
- `ls -l` - List with details (long format)
- `ls -a` - List all files (including hidden ones)
- `ls -la` - Combine both!

**Tasks:**
1. Type `ls` - you'll see folders and files
2. Type `ls -l` - see detailed information
3. Type `ls -a` - notice files starting with `.` (hidden files)
4. Type `ls -la` - all files with all details!

**What you're seeing:**
- Folders (directories) you can go into
- Files you can read or edit
- Hidden files that start with `.` (configuration files)

---

## Exercise 3: Moving Around (Absolute Paths)

Time to travel! Let's move to different directories.

**Commands to learn:**
- `cd <path>` - Change Directory
- `cd /` - Go to root (top of file system)
- `cd ~` or just `cd` - Go to your home directory

**Tasks:**
1. Type `cd /` - go to the root directory
2. Type `pwd` - see that you're now at `/`
3. Type `ls` - see everything at the root level
4. Type `cd ~` - go back to your home directory
5. Type `pwd` - you're back where you started!

**Understanding paths:**
- Paths starting with `/` are "absolute" - they work from anywhere
- `/` by itself means the root directory
- `~` is a shortcut for your home directory

---

## Exercise 4: Moving Around (Relative Paths)

Now let's use relative paths - moving based on where you currently are.

**Commands to learn:**
- `cd <foldername>` - Go into a folder (no `/` at start)
- `cd ..` - Go up one level (to parent directory)
- `cd ../..` - Go up two levels
- `cd -` - Go back to previous directory

**Tasks:**
1. Make sure you're in your home: `cd ~`
2. Type `pwd` to confirm
3. Type `ls` to see what's available
4. Go into the exercises folder: `cd exercises`
5. Type `pwd` - see your new location
6. Go up one level: `cd ..`
7. Type `pwd` - you're back in home!

**Try this:**
```bash
cd exercises
cd session1-navigation
pwd
# You're deep in the folder structure!

cd ../..
pwd
# You went up two levels
```

---

## Exercise 5: The Magic of Tab Completion

Let the computer help you type!

**How it works:**
1. Start typing a folder or file name
2. Press the `Tab` key
3. The shell completes it for you!

**Tasks:**
1. Type `cd ex` and press Tab - it completes to `exercises/`!
2. Type `ls cheat` and press Tab - it completes to `cheatsheets/`
3. This works for any file or folder name
4. If there are multiple matches, press Tab twice to see options

**Pro tip:** This saves SO much typing and prevents typos!

---

## Exercise 6: Exploring the Unix Directory Structure

Let's explore the standard Unix directories.

**Tasks:**
1. Go to root: `cd /`
2. List contents: `ls`
3. You'll see directories like:
   - `bin` - Binary programs (commands)
   - `etc` - Configuration files
   - `home` - User home directories
   - `tmp` - Temporary files
   - `var` - Variable data (logs, etc.)

4. Look in each one:
   ```bash
   ls /bin     # System commands
   ls /etc     # Configuration files
   ls /tmp     # Temporary stuff
   ls /home    # User directories
   ```

**Remember:** You're just *looking* - you can't break anything by exploring!

---

## Exercise 7: Practice Makes Perfect

Create your own directory structure and navigate it!

**Task:** Create this structure in your home directory:
```
~/practice/
  ├── project1/
  │   ├── code/
  │   └── docs/
  └── project2/
      └── tests/
```

**Commands you'll need:**
```bash
cd ~
mkdir -p practice/project1/code
mkdir -p practice/project1/docs
mkdir -p practice/project2/tests
```

**Now navigate through it:**
```bash
cd practice
ls
cd project1
ls
cd code
pwd
cd ../docs
pwd
cd ../../project2
pwd
cd ~/practice/project1/code
pwd
```

---

## 🎓 Challenge: Navigation Master

Can you complete these tasks using the commands you learned?

1. **Start fresh:** Go to your home directory
2. **Deep dive:** Navigate to `exercises/session1-navigation` in one command
3. **Go exploring:** From there, navigate to the `solutions` folder using only relative paths
4. **Quick jump:** Use `cd -` to toggle between two directories
5. **Speed run:** Use Tab completion to navigate to `cheatsheets/unix-commands.md` as fast as possible

---

## 📝 Summary: Commands You Learned

| Command | What It Does |
|---------|--------------|
| `pwd` | Show current directory |
| `ls` | List files and folders |
| `ls -la` | List all files with details |
| `cd <path>` | Change directory |
| `cd ~` | Go to home directory |
| `cd /` | Go to root directory |
| `cd ..` | Go up one level |
| `cd -` | Go to previous directory |
| `mkdir <name>` | Create directory |

---

## ✅ Check Your Understanding

Before moving to Session 2, make sure you can:

- [ ] Find out where you are (`pwd`)
- [ ] See what's in a directory (`ls`)
- [ ] Move to any directory using absolute paths
- [ ] Move to any directory using relative paths
- [ ] Use `..` to go up in the directory tree
- [ ] Use Tab completion to speed up typing
- [ ] Understand the difference between `/`, `~`, and `..`

---

## 🆘 Need Help?

**Stuck on something?** Check the solutions:
```bash
cd ~/solutions/session1-navigation
cat SOLUTIONS.md
```

**Want a quick reference?** Check the cheat sheet:
```bash
cat ~/cheatsheets/unix-commands.md
```

---

## 🎉 Ready for More?

**Great job completing Session 1!** You now know how to navigate any Unix system.

**Next up:** Session 2 - Permissions & Security

```bash
cd ~/exercises/session2-permissions
cat README.md
```

Remember: Practice makes perfect. The more you use these commands, the more natural they'll become!
