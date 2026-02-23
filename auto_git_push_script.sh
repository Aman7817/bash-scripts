#!/bin/bash

# Auto Git Push Script
# Author: Aman

# Check if commit message provided
if [ -z "$1" ]
then
    echo "❌ Please provide a commit message."
    echo "Usage: ./auto_git_push_script.sh \"your commit message\""
    exit 1
fi

echo "🔄 Adding changes..."
git add .

echo "📝 Committing..."
git commit -m "$1"

echo "🚀 Pushing to GitHub..."
git push

echo "✅ Done!"
