# Customization Guide for Deepak Kapa's Portfolio

This guide explains how to customize your al-folio portfolio with your personal information.

## ✅ What's Already Done

- ✅ al-folio theme installed
- ✅ Ruby, Jekyll, and dependencies installed
- ✅ `_config.yml` updated with your name
- ✅ Portfolio collection added
- ✅ Custom pages created:
  - Portfolio (CAD designs)
  - Papers I Like
  - Project Ideas
- ✅ Social media links configured

## 📝 What You Need to Do

### 1. Update About Page

**File:** `_pages/about.md`

**Add your introduction video:**
```html
<div style="margin: 2rem 0;">
  <video width="100%" controls>
    <source src="{{ '/assets/video/intro.mp4' | relative_url }}" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>
```

**Or for YouTube:**
```html
<div style="margin: 2rem 0;">
  <iframe width="100%" height="400" 
    src="https://www.youtube.com/embed/YOUR_VIDEO_ID" 
    frameborder="0" allowfullscreen>
  </iframe>
</div>
```

Replace the bio section with your information.

### 2. Add Publications

**File:** `_bibliography/papers.bib`

Add your 5 publications in BibTeX format:

```bibtex
@inproceedings{kapa2025pancake,
  title={Pancake 3K Planetary Actuator: A Lightweight, Compact, and Low-Backlash Actuator},
  author={Kapa, Deepak and Singh, Aman and Kolathaya, Shishir N.Y.},
  booktitle={IEEE-RAS 24th Int. Conf. on Humanoid Robots (LBR)},
  year={2025},
  pdf={pancake-actuator.pdf},
  abstract={We introduce the Pancake 3K Planetary Actuator...},
  selected={true}
}

@inproceedings{singh2025comparison,
  title={Comparison between External and Internal Single Stage Planetary Gearbox Actuators for Legged Robots},
  author={Singh, Aman and Kapa, Deepak and Chedda, Prasham and Kolathaya, Shishir N.Y.},
  booktitle={Advances in Robotics 2025 (AIR)},
  year={2025},
  pdf={planetary-comparison.pdf}
}

@inproceedings{singh2025codesign,
  title={A Co-Design Framework for Energy-Aware Monoped Jumping with Detailed Actuator Modeling},
  author={Singh, Aman and Mishra, Aasta and Kapa, Deepak and Joshi, Suryank and Kolathaya, Shishir N.Y.},
  booktitle={IEEE-RAS 24th Int. Conf. on Humanoid Robots},
  year={2025},
  pdf={codesign-monoped.pdf}
}

@article{kapa2026compact,
  title={COMPAct: Computational Optimization and Automated Modular Design of Planetary Actuators},
  author={Kapa, Deepak and Singh, Aman and Joshi, Suryank and Kolathaya, Shishir N.Y.},
  journal={Under Review - IEEE Int. Conf. on Robotics and Automation (ICRA)},
  year={2026},
  note={Under Review}
}

@article{kapa2026fivebar,
  title={A Novel Energy Efficient Quadruped with Direct-Drive Five-Bar Leg Architecture},
  author={Kapa, Deepak and Singh, Aman and Ramesh, Shashank and Plecnik, Mark and Kolathaya, Shishir N.Y.},
  journal={Under Review - IEEE Int. Conf. on Robotics and Automation (ICRA)},
  year={2026},
  note={Under Review}
}
```

**Add PDF files** to `assets/pdf/` folder.

### 3. Create Project Pages

**Folder:** `_projects/`

Create individual files for each project. Example (`_projects/pancake-actuator.md`):

```markdown
---
layout: page
title: Pancake Planetary Actuator
description: Novel configuration reducing mass and width by 50%
img: assets/img/pancake-actuator.jpg
importance: 1
category: bachelor-thesis
---

## Overview

Bachelor thesis project developing a novel planetary actuator configuration...

## Key Features

- 50% reduction in mass
- 50% reduction in axial width
- Patent pending
- Maintained torque capacity

## Technical Details

[Add your technical description]

## Gallery

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid path="assets/img/pancake-1.jpg" title="CAD Model" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
```

Create similar files for:
- `lunar-rover.md`
- `pipe-inspection.md`
- `origami-robot.md`
- `telescopic-agitator.md`
- `mars-rover.md`

### 4. Setup CV

#### Option A: JSON Resume (Recommended)

**File:** `assets/json/resume.json`

Use the [JSON Resume](https://jsonresume.org/) format. Example:

```json
{
  "basics": {
    "name": "Deepak Kapa",
    "label": "Robotics Engineer & Researcher",
    "email": "deepak_k1@ph.iitr.ac.in",
    "phone": "",
    "url": "https://your-username.github.io",
    "summary": "May 2026 IITR graduate with a passion for designing robots...",
    "location": {
      "city": "Roorkee",
      "countryCode": "IN"
    },
    "profiles": [
      {
        "network": "LinkedIn",
        "username": "deepak-kapa-iitr26",
        "url": "https://linkedin.com/in/deepak-kapa-iitr26"
      }
    ]
  },
  "work": [
    {
      "name": "Cenizas Labs",
      "position": "Robotics Engineer (Mechanical)",
      "url": "",
      "startDate": "2025-08",
      "endDate": "",
      "summary": "Designing workspace-assistive robots",
      "highlights": [
        "Differential-drive office bot",
        "8-DOF carbon fiber robotic arm"
      ]
    }
  ],
  "education": [
    {
      "institution": "Indian Institute of Technology, Roorkee",
      "url": "",
      "area": "Engineering Physics",
      "studyType": "BTech",
      "startDate": "2022",
      "endDate": "2026",
      "score": "7.8/10",
      "courses": []
    }
  ]
}
```

#### Option B: YAML CV

**File:** `_data/cv.yml`

Already exists - add your experience, education, skills, awards.

#### Option C: Inline PDF Viewer

**File:** `_pages/cv.md`

Replace content with:

```markdown
---
layout: page
permalink: /cv/
title: CV
nav: true
nav_order: 3
---

<iframe src="{{ '/assets/pdf/CV_Deepak_Kapa.pdf' | relative_url }}" 
  width="100%" height="1000px" style="border: none;">
</iframe>

<p style="text-align: center; margin-top: 1rem;">
  <a href="{{ '/assets/pdf/CV_Deepak_Kapa.pdf' | relative_url }}" 
     class="btn btn-primary" download>
    <i class="fas fa-download"></i> Download CV
  </a>
</p>
```

### 5. Add CAD Designs to Portfolio

**Folder:** `_portfolio/`

Create entries for each CAD design:

**Example** (`_portfolio/pancake-cad.md`):

```markdown
---
layout: page
title: Pancake Actuator 3D Model
description: Novel planetary gearbox configuration
img: assets/img/portfolio/pancake-actuator.jpg
redirect: https://grabcad.com/library/your-model-link
importance: 1
category: actuators
---
```

**Add images** to `assets/img/portfolio/`

### 6. Add News Items

**Folder:** `_news/`

Create announcement files (`_news/hyundai-scholar.md`):

```markdown
---
layout: post
date: 2025-01-15
inline: true
related_posts: false
---

Received Hyundai Hope Scholar award from Hyundai Motor India Limited.
```

### 7. Disable Unwanted Features

**File:** `_config.yml`

To disable blog, books, or teaching pages, add to `exclude` section:

```yaml
exclude:
  - _posts/  # Disable blog
  - _books/  # Disable books
  - _pages/teaching.md  # Disable teaching page
  - _pages/books.md
  - _pages/blog.md
```

## 🚀 Running the Site

### Start Development Server

```bash
cd /home/stoxy/kapa_folio
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"
bundle exec jekyll serve
```

Access at: **http://localhost:4000**

### Stop Server

```bash
pkill -f jekyll
```

### Build for Production

```bash
bundle exec jekyll build
```

Output will be in `_site/` folder.

## 📂 Directory Structure Reference

```
kapa_folio/
├── _config.yml              # Main configuration ✅ UPDATED
├── _data/
│   ├── cv.yml              # CV data (Option B)
│   └── socials.yml         # Social links ✅ UPDATED
├── _pages/
│   ├── about.md            # Homepage - ADD YOUR BIO & VIDEO
│   ├── publications.md     # Auto-generated from BibTeX
│   ├── projects.md         # Auto-generated from _projects/
│   ├── cv.md              # CV page
│   ├── portfolio.md        # CAD designs ✅ CREATED
│   ├── papers-i-like.md    # Favorite papers ✅ CREATED
│   └── project-ideas.md    # Future ideas ✅ CREATED
├── _bibliography/
│   └── papers.bib         # ADD YOUR PUBLICATIONS
├── _projects/             # CREATE PROJECT FILES
├── _portfolio/            # ADD CAD DESIGN ENTRIES ✅ CREATED
├── _news/                 # ADD NEWS/ANNOUNCEMENTS
├── assets/
│   ├── pdf/
│   │   └── CV_Deepak_Kapa.pdf  # ADD YOUR CV
│   ├── video/
│   │   └── intro.mp4      # ADD YOUR VIDEO
│   ├── img/
│   │   └── portfolio/     # ADD CAD IMAGES ✅ CREATED
│   └── json/
│       └── resume.json    # CV in JSON format (Option A)
```

## 🎨 Customization Tips

### Change Theme Color

**File:** `_sass/_themes.scss`

Find `--global-theme-color` and change the color:

```scss
--global-theme-color: #2c5aa0;  // Change this hex color
```

### Update Navigation Order

In page frontmatter, change `nav_order`:

```yaml
---
nav: true
nav_order: 1  # Lower number = appears first
---
```

## 🐛 Troubleshooting

### Site not loading?
- Check Jekyll is running: `ps aux | grep jekyll`
- Check for errors in terminal
- Try rebuilding: `bundle exec jekyll clean && bundle exec jekyll serve`

### Changes not appearing?
- Stop and restart Jekyll server
- Clear browser cache (Ctrl+Shift+R)
- Check file is not in `exclude` list in `_config.yml`

### Images not showing?
- Check image path is correct (relative to site root)
- Ensure image exists in `assets/img/`
- Try adding `/` at start of path: `/assets/img/image.jpg`

## 📚 Additional Resources

- **al-folio Documentation:** `/home/stoxy/kapa_folio/CUSTOMIZE.md`
- **Jekyll Documentation:** https://jekyllrb.com/docs/
- **JSON Resume:** https://jsonresume.org/
- **BibTeX Format:** https://www.bibtex.org/Format/

## 🆘 Need Help?

- Check al-folio FAQ: `/home/stoxy/kapa_folio/FAQ.md`
- Visit al-folio GitHub: https://github.com/alshedivat/al-folio
- Jekyll issues: https://jekyllrb.com/docs/troubleshooting/

---

**Next Steps:**
1. Add your video to about page
2. Add publications to BibTeX file
3. Create project pages
4. Add CAD designs to portfolio
5. Upload your CV PDF
6. Test everything locally
7. Deploy to GitHub Pages

Good luck with your portfolio! 🚀
