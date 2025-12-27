---
layout: page
title: Portfolio
permalink: /portfolio/
description: CAD designs and mechanical engineering projects
nav: true
nav_order: 5
---

<div class="portfolio-fullscreen">
  <embed src="{{ '/assets/pdf/Portfolio.pdf' | relative_url }}#view=FitH" 
         type="application/pdf" 
         width="100%" 
         height="100%" />
</div>

<style>
.portfolio-fullscreen {
  position: fixed;
  top: 60px; /* Starts right below navigation */
  left: 0;
  right: 0;
  bottom: 0;
  background: var(--global-bg-color);
  z-index: 1;
}

.portfolio-fullscreen embed {
  display: block;
  width: 100%;
  height: 100%;
  border: none;
}
</style>
