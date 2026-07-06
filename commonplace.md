---
layout: default
title: Commonplace Book
permalink: /commonplace/
---

<div class="page-content">

<h1>The Commonplace Book</h1>

{% for entry in site.data.commonplace %}
<div class="commonplace-entry">
<blockquote><p>{{ entry.quote }}</p></blockquote>
<p class="commonplace-source">&mdash; {{ entry.source }}</p>
</div>
{% endfor %}

</div>
