#!/bin/bash

# Finance Portfolio - Quick Start Script
# This script sets up and runs the Jekyll site locally

echo "================================"
echo "Finance Portfolio - Local Setup"
echo "================================"
echo ""

# Check Ruby
echo "✓ Checking Ruby installation..."
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby not found. Installing..."
    sudo apt update
    sudo apt install -y ruby ruby-dev build-essential
else
    echo "✓ Ruby found: $(ruby --version)"
fi

# Check Jekyll
echo ""
echo "✓ Checking Jekyll installation..."
if ! command -v jekyll &> /dev/null; then
    echo "❌ Jekyll not found. Installing..."
    sudo gem install jekyll bundler
else
    echo "✓ Jekyll found: $(jekyll --version)"
fi

# Install dependencies
echo ""
echo "✓ Installing project dependencies..."
cd /home/ravi/wsl_cooklab/finance_portfolio
bundle install

# Clear cache
echo ""
echo "✓ Clearing Jekyll cache..."
rm -rf _site .jekyll-cache 2>/dev/null

# Start server
echo ""
echo "✓ Starting Jekyll server..."
echo ""
echo "================================"
echo "🎉 Server running!"
echo "================================"
echo ""
echo "📱 Visit your site at:"
echo "   http://localhost:4000/finance_portfolio/"
echo ""
echo "📝 Edit files and changes appear instantly!"
echo "   Press Ctrl+C to stop the server"
echo ""
echo "================================"
echo ""

bundle exec jekyll serve
