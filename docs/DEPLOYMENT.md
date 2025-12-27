# 🚀 GitHub Pages Deployment Guide

Your portfolio is ready to be hosted on GitHub Pages! Follow these steps to deploy.

## 📋 Prerequisites

- GitHub account
- Git installed on your system
- Your portfolio files ready (already done ✅)

## 🎯 Step-by-Step Deployment

### 1. Create a GitHub Repository

1. Go to [GitHub](https://github.com) and log in
2. Click the `+` icon (top right) → "New repository"
3. Repository name options:
   - **For personal site**: `your-username.github.io` (recommended)
   - **For project site**: Any name (e.g., `kapa_folio`, `portfolio`, etc.)
4. Keep it **Public**
5. **Do NOT** initialize with README, .gitignore, or license
6. Click "Create repository"

### 2. Initialize Git Repository Locally

```bash
cd /home/stoxy/kapa_folio

# Initialize git (if not already)
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Complete portfolio with CV and Portfolio PDFs"

# Add remote (replace with your repository URL)
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### 3. Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top menu)
3. In left sidebar, click **Pages**
4. Under "Build and deployment":
   - **Source**: Select "GitHub Actions"
5. The workflow will automatically deploy your site!

### 4. Wait for Deployment

- Go to **Actions** tab in your repository
- Watch the "Deploy to GitHub Pages" workflow run
- Usually takes 2-5 minutes
- Green checkmark ✅ means success!

### 5. Access Your Live Site

**If you named your repo `username.github.io`:**
```
https://your-username.github.io
```

**If you named your repo something else (e.g., `kapa_folio`):**
```
https://your-username.github.io/kapa_folio
```

## 🔧 Configuration

### Update Your URLs in _config.yml

For **username.github.io** repository:
```yaml
url: https://your-username.github.io
baseurl: ""
```

For **other repository names**:
```yaml
url: https://your-username.github.io
baseurl: /your-repo-name
```

**Note**: The GitHub Actions workflow automatically handles this!

## 📝 Making Updates

After initial deployment, to update your site:

```bash
# Make your changes
# ... edit files ...

# Stage changes
git add .

# Commit
git commit -m "Update: describe your changes"

# Push to GitHub
git push

# GitHub Actions will automatically rebuild and redeploy!
```

## ✅ What's Already Configured

Your portfolio already has:
- ✅ GitHub Actions workflow (`.github/workflows/deploy.yml`)
- ✅ All dependencies listed in `Gemfile`
- ✅ Proper Jekyll configuration
- ✅ All content from your CV
- ✅ PDF files for CV and Portfolio
- ✅ Clean navigation and footer

## 🎨 Your Live Portfolio Will Include

1. **Homepage** - Bio, research interests, news
2. **Publications** - 5 papers (4 selected)
3. **Projects** - 6 detailed projects
4. **CV** - Fullscreen PDF viewer
5. **Portfolio** - Fullscreen PDF with CAD designs
6. **Papers I Like** - Curated papers
7. **Project Ideas** - Future research

## 🔍 Troubleshooting

### Build Fails?

1. Check the Actions tab for error messages
2. Common issues:
   - Missing dependencies in Gemfile
   - Syntax errors in `_config.yml`
   - Invalid markdown in pages

### PDF Files Not Showing?

- Make sure PDFs are committed: `git add assets/pdf/*.pdf`
- Check file paths in `_pages/cv.md` and `_pages/portfolio.md`

### 404 Error?

- Make sure GitHub Pages is enabled (Settings → Pages)
- Check the correct URL (username.github.io vs username.github.io/repo-name)
- Wait a few minutes after first deployment

## 📧 Custom Domain (Optional)

Want to use `yourname.com` instead?

1. Buy a domain from any registrar
2. In your repository:
   - Settings → Pages → Custom domain
   - Enter your domain
3. Configure DNS with your registrar:
   ```
   A Record: 185.199.108.153
   A Record: 185.199.109.153
   A Record: 185.199.110.153
   A Record: 185.199.111.153
   ```
4. Create `CNAME` file in repository root with your domain

## 🎉 You're Done!

Your professional portfolio with fullscreen PDF viewers is now live on GitHub Pages!

**Need help?**
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [al-folio Documentation](https://github.com/alshedivat/al-folio)
- [Jekyll Documentation](https://jekyllrb.com/docs/)
