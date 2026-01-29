# .bashrc - Bash configuration for Unix Fundamentals Sandbox

# Set a colorful, informative prompt that shows:
# - username@hostname (in green)
# - current directory path (in blue)
# - $ prompt
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Enable color support for ls and add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# Helpful aliases for beginners
alias ll='ls -lah'           # Long list with hidden files
alias la='ls -A'             # List almost all (hidden files)
alias l='ls -CF'             # List in columns with indicators
alias ..='cd ..'             # Go up one directory
alias ...='cd ../..'         # Go up two directories
alias home='cd ~'            # Quick jump to home

# Show helpful message about Tab completion
echo "💡 Tip: Press TAB to auto-complete file and directory names!"
echo ""
