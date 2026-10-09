# High School Football Production Metrics

> [!NOTE]
> Work in progress. The code is not published in this repository yet.

Builds per-opportunity production metrics for high school football players from public stat tables.

## Plan

1. **Scrape** season stat tables from public player pages (respecting `robots.txt`).
2. **Clean** columns across seasons and positions (QB, RB, WR) and handle missing values.
3. **Measure** rate and efficiency stats such as yards per game and yards per touch.
4. **Analyze** leaderboards and efficiency-versus-usage plots.

## Stack

Python (requests, BeautifulSoup, pandas, NumPy).
