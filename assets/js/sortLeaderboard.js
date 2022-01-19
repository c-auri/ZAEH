var leaderboard, rows, switching, i, x, y, shouldSwitch;
leaderboard = document.getElementById("leaderboard");

switching = true;
while (switching) {
    switching = false;
    rows = leaderboard.rows;
    for (i = 1; i < (rows.length - 1); i++) {
        shouldSwitch = false;
        firstScore = rows[i].getElementsByTagName("TD")[0];
        secondScore = rows[i + 1].getElementsByTagName("TD")[0];
        if (Number(firstScore.innerHTML) < Number(secondScore.innerHTML)) {
            shouldSwitch = true;
            break;
        }
    }
    if (shouldSwitch) {
        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
        switching = true;
    }
}