# Session 5 Solutions: Troubleshooting (Brief Guide)

## Common Troubleshooting Commands
```bash
# Find errors in logs
grep -i error /var/log/sampleapp/*.log

# Follow logs live
tail -f /var/log/sampleapp/application.log

# Find files
find /var/log -name "*.log" -mtime -1

# Check disk space
df -h
du -sh /var/log/*

# Check if service running
ps aux | grep myapp
sudo systemctl status myapp
```

## Broken Script Fix
The script tries to cd to non-existent directory.
Fix: Create the directory first or change the path.
