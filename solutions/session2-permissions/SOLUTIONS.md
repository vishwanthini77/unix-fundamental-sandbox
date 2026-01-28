# Session 2 Solutions: Permissions (Brief Guide)

## Permission Patterns Explained
- `drwxr-xr-x` = Directory, owner: rwx, group: r-x, others: r-x
- `-rwx------` = File, owner: rwx, group: none, others: none
- `-rw-rw-r--` = File, owner: rw, group: rw, others: r

## Common Tasks
```bash
# Make script executable
chmod +x script.sh
chmod 755 script.sh  # Same result with numbers

# Secure private file
chmod 600 secret.txt

# Config file (owner write, all read)
chmod 644 config.conf
```
