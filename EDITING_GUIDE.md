# 📝 Portfolio Editing Guide

## 🎯 Quick Start

Your portfolio is now clean and ready to edit! Here's the structure:

```
kapa_folio/
├── _config.yml          # Site configuration (name, URL, etc.)
├── _pages/             # Main pages
│   ├── about.md        # Homepage content
│   ├── cv.md           # CV page
│   ├── projects.md     # Projects listing page
│   ├── publications.md # Publications page
│   ├── papers-i-like.md
│   └── project-ideas.md
├── _projects/          # Project files (ADD/EDIT HERE!)
│   ├── mars-rover.md
│   ├── lunar-rover.md
│   ├── pancake-actuator.md
│   ├── asymmetric-quadruped.md
│   ├── pipe-inspection-robot.md
│   └── telescopic-agitator.md
├── _news/              # News items (ADD/EDIT HERE!)
│   ├── irc-2025.md
│   ├── hyundai-scholar-2025.md
│   └── ...
├── _bibliography/      # Publications
│   └── papers.bib      # BibTeX file
├── _data/
│   └── socials.yml     # Social media links
├── assets/
│   ├── img/            # Images
│   └── pdf/            # PDF files (CV, portfolio)
└── deploy.sh           # DEPLOYMENT SCRIPT ⭐
```

## 🚀 How to Deploy Changes

After making any edits, run:

```bash
cd /home/stoxy/kapa_folio
./deploy.sh
```

That's it! Your changes will be live in 30-60 seconds at https://deepak-kapa.github.io

## ✏️ Common Edits

### 1. Update Your Information

Edit `_config.yml`:
```yaml
first_name: Your
last_name: Name
description: Your description here
contact_note: Your contact message
```

### 2. Add a New Project

Create a new file in `_projects/` (e.g., `_projects/my-robot.md`):

```markdown
---
layout: page
title: My Amazing Robot
description: A brief description
img: assets/img/my-robot.jpg  # Add image to assets/img/
importance: 1  # Lower number = shows first
category: competition
---

## Project Description

Your project details here...

### Features
- Feature 1
- Feature 2

## Results
- Result 1
- Result 2
```

### 3. Add a News Item

Create a new file in `_news/` (e.g., `_news/award-2025.md`):

```markdown
---
layout: post
date: 2025-01-15
inline: true
---

Won the XYZ Award for robotics research!
```

### 4. Update Your CV

1. Edit your CV PDF
2. Save as `assets/pdf/CV.pdf`
3. Run `./deploy.sh`

### 5. Update Publications

Edit `_bibliography/papers.bib`:

```bibtex
@article{yourpaper2025,
  title={Your Paper Title},
  author={Your Name and Others},
  journal={Conference Name},
  year={2025},
  selected={true}  # Shows on homepage
}
```

### 6. Add Images

1. Add your image to `assets/img/`
2. Reference it in markdown: `![description]({{ '/assets/img/your-image.jpg' | relative_url }})`

### 7. Update Social Links

Edit `_data/socials.yml`:

```yaml
- name: GitHub
  icon: fa-brands fa-github
  link: https://github.com/your-username
- name: LinkedIn
  icon: fa-brands fa-linkedin
  link: https://linkedin.com/in/your-profile
```

## 📂 File Structure for Editing

### Main Content Files (Edit These!)

```
_pages/about.md          → Homepage content
_pages/cv.md             → CV page
_pages/projects.md       → Projects configuration
_pages/publications.md   → Publications page
_pages/papers-i-like.md  → Curated papers
_pages/project-ideas.md  → Research ideas

_projects/*.md           → Individual project pages
_news/*.md               → News announcements
_bibliography/papers.bib → Publications database

_data/socials.yml        → Social media links
assets/pdf/CV.pdf        → Your CV
assets/pdf/Portfolio.pdf → Your portfolio
assets/img/*             → All images
```

### Don't Edit These!

```
_site/          → Auto-generated (deleted on rebuild)
_includes/      → Template files
_layouts/       → Layout templates  
_sass/          → CSS source files
vendor/         → Dependencies
```

## 🎨 Tips

1. **Always test locally**: Run `bundle exec jekyll serve` to preview at http://localhost:4000
2. **Images**: Keep images under 1MB for faster loading
3. **Projects**: Lower `importance` number = shows first
4. **News**: Use `inline: true` for short announcements
5. **Selected Publications**: Add `selected={true}` in .bib file to feature on homepage

## 🔧 Troubleshooting

**Build fails?**
- Check your markdown syntax
- Ensure all file paths are correct
- Make sure images exist in `assets/img/`

**Projects not showing?**
- Check `category: competition` in project front matter
- Ensure `_pages/projects.md` has `display_categories: [competition]`

**Changes not appearing?**
- Wait 30-60 seconds after push
- Clear your browser cache (Ctrl+Shift+R)
- Check GitHub Actions: https://github.com/deepak-kapa/deepak-kapa.github.io/actions

## 📖 More Help

- Jekyll Docs: https://jekyllrb.com/docs/
- Markdown Guide: https://www.markdownguide.org/
- al-folio Theme: https://github.com/alshedivat/al-folio

---

**Remember**: Edit → Run `./deploy.sh` → Wait 30 seconds → Refresh browser! 🎉
