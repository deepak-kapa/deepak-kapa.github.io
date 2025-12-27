---
layout: page
permalink: /cv/
title: CV
nav: true
nav_order: 4
---

<div class="cv-fullscreen">
  <embed src="{{ '/assets/pdf/CV_GTech_MSR.pdf' | relative_url }}#view=FitH" 
         type="application/pdf" 
         width="100%" 
         height="100%" />
</div>

<style>
.cv-fullscreen {
  position: fixed;
  top: 60px; /* Starts right below navigation */
  left: 0;
  right: 0;
  bottom: 0;
  background: var(--global-bg-color);
  z-index: 1;
}

.cv-fullscreen embed {
  display: block;
  width: 100%;
  height: 100%;
  border: none;
}
</style>
