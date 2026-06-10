---
layout: single
title: "Writing"
permalink: /writing/
author_profile: false
classes: wide
show_date: false
related: false
sidebar:
  nav: false
toc: false
pagination: false
---

A collection of non-peer reviewed things that I have written

{% for post in site.posts %}
<div class="writing-entry">
  <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
  <p class="meta">{{ post.date | date: "%B %Y" }}{% if post.category %} · {{ post.category }}{% endif %}</p>
  {% if post.excerpt %}<p>{{ post.excerpt }}</p>{% endif %}
</div>
{% endfor %}