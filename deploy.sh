#!/bin/bash
# Clean deployment script for GitHub Pages

echo "🚀 Starting deployment..."

# Remove old _site
echo "🗑️  Cleaning old build..."
rm -rf _site

# Build fresh
echo "📦 Building site..."
JEKYLL_ENV=production bundle exec jekyll build

if [ $? -ne 0 ]; then
    echo "❌ Build failed!"
    exit 1
fi

# Clean root of old built files (keep sources!)
echo "🧹 Removing old built HTML from root..."
rm -rf 404.html index.html sitemap.xml feed.xml \
       news projects cv publications papers-i-like project-ideas \
       people repositories teaching 2>/dev/null

# Deploy new build
echo "📋 Deploying to root..."
cp -r _site/* .
cp _site/.nojekyll . 2>/dev/null || true

# Git operations
echo "💾 Committing..."
git add .
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"

echo "⬆️  Pushing..."
git push

echo "✅ Deployed!"
echo "🌐 Live at: https://deepak-kapa.github.io"
