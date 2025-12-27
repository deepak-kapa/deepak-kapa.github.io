#!/bin/bash
# Deployment script for GitHub Pages

echo "🚀 Starting deployment process..."

# Build the site
echo "📦 Building site with Jekyll..."
JEKYLL_ENV=production bundle exec jekyll build

if [ $? -ne 0 ]; then
    echo "❌ Build failed!"
    exit 1
fi

# Remove old built files from root (keep source files)
echo "🧹 Cleaning old built files..."
rm -rf 404.html blog books cv feed.xml index.html news papers-i-like people portfolio project-ideas projects publications repositories sitemap.xml teaching 2>/dev/null

# Copy new built files to root
echo "📋 Copying new built files..."
cp -r _site/* .
cp _site/.nojekyll . 2>/dev/null || true

# Stage all changes
echo "📝 Staging changes..."
git add .

# Commit
echo "💾 Committing..."
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git push

echo "✅ Deployment complete!"
echo "🌐 Your site will be live at: https://deepak-kapa.github.io"
