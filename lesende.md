---
title: Krieg und Frieden - Lesende
---
<h1>Lesende</h1>

<table id="leaderboard">
  <tr>
    <th>#</th>
    <th>Name</th>
  </tr>
  {% for user in site.users %}
  <tr>
    {% assign summaries = site.summaries | where: 'author', user.name %}
    <td>{{ summaries.size }}</td>
    <td><a href="{{ user.url }}">{{ user.name }}</a></td>
  </tr>
  {% endfor %}
</table>

<script src="assets/js/sortLeaderboard.js" defer></script>