---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}

## Manuscripts in Preparation

- S.M.B Gautham, R. Banerjee, and P. K. Maiti, "Optimizing water harvesting in TTBA COF: An advanced NVT+W approach" (2026)
- S.M.B Gautham and P. K. Maiti, "Tuning the viscoelasticity of paint formulations using copolymer grafted nanocomposites" (2026)
- S.M.B Gautham, R. Banerjee, and P. K. Maiti, "Molecular mechanisms of water adsorption in functionalized covalent organic frameworks" (2027)
- S.M.B Gautham and T. K. Patra, "Machine learning guided design of multi-component copolymer nanocomposites for industrial coatings" (2027)
