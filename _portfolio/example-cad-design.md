---
layout: page
title: Example CAD Design
description: Replace with your CAD design description
img: assets/img/portfolio/placeholder.jpg
redirect: https://grabcad.com/your-design
importance: 1
category: actuators
---

This is an example portfolio entry. Replace this with your actual CAD design!

## How to Add Your CAD Designs

1. **Add your CAD screenshot/render** to `assets/img/portfolio/`
2. **Create a new file** in `_portfolio/` (e.g., `pancake-actuator-cad.md`)
3. **Update the frontmatter** with your information:

```yaml
---
layout: page
title: Pancake Actuator 3D Model
description: Novel planetary gearbox configuration
img: assets/img/portfolio/pancake-actuator.jpg
redirect: https://grabcad.com/library/your-model
importance: 1
category: actuators
---
```

4. **(Optional) Add detailed description** in the markdown body

## Fields Explanation

- **title**: Name of your CAD design
- **description**: Brief description (appears on hover/card)
- **img**: Path to image (relative to site root)
- **redirect**: External link (GrabCAD, OnShape, etc.) - opens when clicked
- **importance**: Display order (1 = first, 2 = second, etc.)
- **category**: Optional category for grouping

## Example Categories

- `actuators` - Actuator designs
- `robots` - Robot assemblies
- `mechanisms` - Linkages and mechanisms
- `parts` - Individual components
