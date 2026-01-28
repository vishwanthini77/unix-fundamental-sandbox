# Unix Fundamentals Learning Sandbox
# Based on Ubuntu for familiarity and widespread use

FROM ubuntu:22.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install essential packages
RUN apt-get update && apt-get install -y \
    sudo \
    vim \
    nano \
    curl \
    wget \
    git \
    tree \
    htop \
    net-tools \
    nginx \
    nodejs \
    npm \
    systemd \
    man-db \
    less \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user (similar to ec2-user)
RUN useradd -m -s /bin/bash student && \
    echo "student ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Copy the sandbox setup script
COPY ../sandbox-setup/init.sh /tmp/init.sh
RUN chmod +x /tmp/init.sh

# Run the initialization script to set up all directories and files
RUN /tmp/init.sh

# Set working directory to student home
WORKDIR /home/student

# Switch to student user
USER student

# Welcome message
RUN echo 'echo "Welcome to Unix Fundamentals Sandbox!"' >> /home/student/.bashrc && \
    echo 'echo "Type: cd ~/exercises/session1-navigation to start Session 1"' >> /home/student/.bashrc && \
    echo 'echo "Type: cat ~/exercises/README.md for full guide"' >> /home/student/.bashrc

# Default command
CMD ["/bin/bash"]
