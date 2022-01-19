---
title: Krieg und Frieden - Leser
---
<h1>Leser</h1>

<table id="leaderboard">
  <tr>
    <th>#</th>
    <th>Name</th>
  </tr>
  {% for reader in site.readers %}
  <tr>
    {% assign read_chapters = site.chapters | where: 'author', reader.name %}
    <td>{{ read_chapters.size }}</td>
    <td><a href="{{ reader.url }}">{{ reader.name }}</a></td>
  </tr>
  {% endfor %}
</table>

<script src="assets/js/sortLeaderboard.js" defer></script>