---
title: Krieg und Frieden - Lesende
---
<h1>Lesende</h1>

<table id="leaderboard">
  <tr>
    <th>#</th>
    <th>Name</th>
  </tr>
  {% for reader in site.readers %}
  <tr>
    {% assign summaries = site.summaries | where: 'author', reader.name %}
    <td>{{ summaries.size }}</td>
    <td><a href="{{ reader.url }}">{{ reader.name }}</a></td>
  </tr>
  {% endfor %}
</table>

<script src="assets/js/sortLeaderboard.js" defer></script>