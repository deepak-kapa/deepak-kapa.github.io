#!/usr/bin/env fish
# Clean deployment script for GitHub Pages (Fish Shell)

echo "🚀 Starting deployment..."

# Remove old _site
echo "🗑️  Cleaning old build..."
rm -rf _site

# Build fresh
echo "📦 Building site..."
env JEKYLL_ENV=production bundle exec jekyll build

if test $status -ne 0
    echo "❌ Build failed!"
    exit 1
end

# Clean root of old built files (keep sources!)
echo "🧹 Removing old built HTML from root..."
rm -rf 404.html index.html sitemap.xml feed.xml \
       news projects cv publications papers-i-like project-ideas \
       portfolio blog people repositories teaching 2>/dev/null

# Deploy new build
echo "📋 Deploying to root..."
cp -r _site/* .
cp _site/.nojekyll . 2>/dev/null; or true

# Git operations
echo "💾 Committing..."
git add .
git commit -m "Deploy: "(date '+%Y-%m-%d %H:%M:%S')

echo "⬆️  Pushing..."
git push

echo "✅ Deployed!"
echo "🌐 Live at: https://deepak-kapa.github.io"
echo ""
echo "📝 Edit files in:"
echo "  - _projects/  (your projects)"
echo "  - _news/      (news items)"
echo "  - _pages/     (main pages)"
echo "  - _bibliography/papers.bib (publications)"
