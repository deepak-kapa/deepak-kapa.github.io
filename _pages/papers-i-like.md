---
layout: page
title: Papers I Like
permalink: /papers-i-like/
description: Curated list of influential papers in robotics and related fields
nav: true
nav_order: 6
---

This is a curated collection of papers that have inspired my research and shaped my understanding of robotics, legged locomotion, and actuator design.

## Legged Robotics

<div class="paper-entry">
  <h3>Dynamic Locomotion in the MIT Cheetah 3 Through Convex Model-Predictive Control</h3>
  <p class="authors">Jared Di Carlo, Patrick M. Wensing, Benjamin Katz, Gerardo Bledt, Sangbae Kim</p>
  <p class="venue">IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), 2018</p>
  <p class="description">
    This paper presents a Model Predictive Control approach for dynamic locomotion that has become foundational in legged robotics.
    The MIT Cheetah 3's blind locomotion capabilities demonstrated the power of robust control algorithms.
  </p>
  <div class="paper-links">
    <a href="#" class="btn btn-sm z-depth-0" role="button">PDF</a>
    <a href="#" class="btn btn-sm z-depth-0" role="button">DOI</a>
  </div>
</div>

<div class="paper-entry">
  <h3>Learning Quadrupedal Locomotion over Challenging Terrain</h3>
  <p class="authors">Joonho Lee, Jemin Hwangbo, Lorenz Wellhausen, Vladlen Koltun, Marco Hutter</p>
  <p class="venue">Science Robotics, 2020</p>
  <p class="description">
    A breakthrough in applying reinforcement learning to legged locomotion. The ANYmal robot's ability to traverse
    challenging terrain using learned policies has influenced many subsequent works in the field.
  </p>
  <div class="paper-links">
    <a href="#" class="btn btn-sm z-depth-0" role="button">PDF</a>
    <a href="#" class="btn btn-sm z-depth-0" role="button">DOI</a>
  </div>
</div>

## Actuator Design

<div class="paper-entry">
  <h3>Design Principles for Energy-Efficient Legged Locomotion and Implementation on the MIT Cheetah Robot</h3>
  <p class="authors">Sangbae Kim, Cecilia Laschi, Barry Trimmer</p>
  <p class="venue">IEEE/ASME Transactions on Mechatronics, 2013</p>
  <p class="description">
    Essential reading for understanding the relationship between actuator design and locomotion efficiency.
    This work laid the groundwork for modern high-torque density actuators in robotics.
  </p>
  <div class="paper-links">
    <a href="#" class="btn btn-sm z-depth-0" role="button">PDF</a>
    <a href="#" class="btn btn-sm z-depth-0" role="button">DOI</a>
  </div>
</div>

## Optimization & Co-Design

<div class="paper-entry">
  <h3>Co-Optimization of Robot Design and Motion Planning</h3>
  <p class="authors">Various Authors</p>
  <p class="venue">Conference, Year</p>
  <p class="description">
    Demonstrates the importance of simultaneous optimization of mechanical design and control strategies.
  </p>
  <div class="paper-links">
    <a href="#" class="btn btn-sm z-depth-0" role="button">PDF</a>
    <a href="#" class="btn btn-sm z-depth-0" role="button">DOI</a>
  </div>
</div>

---

**Note:** Replace the example papers above with your actual favorite papers. Each entry should include:
- Paper title
- Authors
- Venue and year
- Why you find it interesting/influential
- Links to PDF, DOI, or other resources

<style>
.paper-entry {
    background: var(--global-bg-color);
    border-left: 3px solid var(--global-theme-color);
    padding: 1.5rem;
    margin-bottom: 2rem;
    border-radius: 4px;
}

.paper-entry h3 {
    margin-top: 0;
    color: var(--global-theme-color);
}

.paper-entry .authors {
    color: var(--global-text-color-light);
    font-style: italic;
    margin: 0.5rem 0;
}

.paper-entry .venue {
    color: var(--global-text-color-light);
    font-size: 0.9rem;
    margin: 0.5rem 0;
}

.paper-entry .description {
    margin: 1rem 0;
    line-height: 1.6;
}

.paper-entry .paper-links {
    margin-top: 1rem;
}

.paper-entry .paper-links a {
    margin-right: 0.5rem;
}
</style>
