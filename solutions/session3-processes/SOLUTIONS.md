# Session 3 Solutions: Processes (Brief Guide)

## Key Commands
```bash
# View all processes
ps aux | less

# Find specific process
ps aux | grep nginx

# Kill process
kill 1234          # Graceful
kill -9 1234       # Force kill

# Service management
sudo systemctl status nginx
sudo systemctl restart nginx
sudo journalctl -u nginx -f
```
