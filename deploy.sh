#!/bin/bash

# Move contents from 'main' and 'MyImageEditor' to current directory root
if [ -d "main" ]; then
  mv main/* ./
  rm -rf main
fi

if [ -d "MyImageEditor" ]; then
  mv MyImageEditor/* ./
  rm -rf MyImageEditor
fi

# Create .nojekyll file
touch .nojekyll

# Add all changes
git add .

# Commit with message
git commit -m "Cleanup: Move frontend files to root for GitHub Pages"

# Push to gh-pages branch
git push origin gh-pages
