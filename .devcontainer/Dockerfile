# Use the base image for Java 17
FROM mcr.microsoft.com/devcontainers/java:17

# Install Maven and Node.js
RUN apt-get update && apt-get install -y maven curl \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# Ensure the vscode user exists (skip group creation if it exists)
RUN id -u vscode &>/dev/null || useradd --uid 1000 --gid 1000 -m vscode \
    && echo "vscode ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Set up work directory
WORKDIR /workspace

# Switch to vscode user
USER vscode
