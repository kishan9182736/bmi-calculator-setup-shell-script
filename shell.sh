#!/bin/bash

# GitHub username as an argument
GITHUB_USER=$1

if [ -z "$GITHUB_USER" ]; then
    echo "⚠️  Please provide your GitHub username as an argument."
    echo "   Usage: ./setup.sh your-github-username"
    exit 1
fi

# Repository details
REPO="Bmi-Calculator-kishan"
ORIGINAL_REPO="salamshanto/Bmi-Calculator"
USER_FORK_URL="git@github.com:$GITHUB_USER/$REPO.git"
ORIGINAL_URL="git@github.com:$ORIGINAL_REPO.git"

# Cloning the repository
echo "📂 Cloning repo: $REPO from $GITHUB_USER's fork..."
if git ls-remote "$USER_FORK_URL" &>/dev/null; then
    git clone "$USER_FORK_URL"
    cd "$REPO"
else
    echo "⚠️  Repository $REPO not found under your GitHub account ($GIT>
    echo "   Please fork it from $ORIGINAL_URL before running this scri>
    exit 1
fi

# Set up Git remotes
echo "🔗 Setting up remotes for $REPO..."
git remote add upstream "$ORIGINAL_URL"

# Check if PHP is installed
if ! command -v php &>/dev/null; then
    echo "📦 Installing PHP..."
    sudo apt update && sudo apt install -y php
else
    echo "✅ PHP is already installed!"
fi

# Check if Composer is installed
if ! command -v composer &>/dev/null; then
    echo "📦 Installing Composer..."
    curl -sS https://getcomposer.org/installer | php
    sudo mv composer.phar /usr/local/bin/composer
else
    echo "✅ Composer is already installed!"
fi

# Install PHP dependencies if composer.json exists
if [ -f "composer.json" ]; then
    echo "📦 Installing PHP dependencies..."
    composer install
fi

# Final message
echo "✅ Setup complete! Ready to code 🚀"
