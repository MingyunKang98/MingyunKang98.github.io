---
layout: page
title: TOEFL
permalink: /toefl/
description: TOEFL iBT 2026 practice — Reading Task 1, 짝표현, and 접두사
nav: true
nav_order: 6
---

<!-- pages/toefl.md -->
<div class="projects">
  {% assign sorted_toefl = site.toefl | sort: "importance" %}
  <div class="row row-cols-1 row-cols-md-3">
    {% for item in sorted_toefl %}
      <div class="col">
        <a href="{{ item.url | relative_url }}">
          <div class="card h-100 hoverable">
            {% if item.img %}
              {%
                include figure.liquid
                loading="eager"
                path=item.img
                sizes = "250px"
                alt="toefl thumbnail"
                class="card-img-top"
              %}
            {% endif %}
            <div class="card-body">
              <h2 class="card-title">{{ item.title }}</h2>
              <p class="card-text">{{ item.description }}</p>
            </div>
          </div>
        </a>
      </div>
    {% endfor %}
  </div>
</div>
