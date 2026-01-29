#!/bin/bash

# Load bash configuration
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

clear

echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║        Welcome to Unix Fundamentals Sandbox! 🚀           ║"
echo "║                                                            ║"
echo "║              Unix for the Rest of Us                       ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "You're ready to start learning! Here's what to do first:"
echo ""
echo "  1️⃣  Try your first command:"
echo "     pwd"
echo ""
echo "  2️⃣  See what's available:"
echo "     ls"
echo ""
echo "  3️⃣  Start Session 1:"
echo "     cd exercises/session1-navigation"
echo "     cat README.md"
echo ""
echo "  📝 Need help? Type: cat QUICKSTART.md"
echo "  📚 Cheat sheet: cat cheatsheets/unix-commands.md"
echo ""
echo "════════════════════════════════════════════════════════════"
echo ""

# Start bash shell (inherits the PS1 from .bashrc)
exec bash
