# High School Defensive Production Over Expected

Ranks Wisconsin high school defenders by how much more they produce than expected for their season, region, and division.

## Approach

- **Data:** 2022–2024 season defensive stats (12,836 player-seasons after cleaning). Exact duplicate rows, partial seasons, players with fewer than 6 games, and all-zero stat lines are removed.
- **Defensive Production Index (DPI):** per-game tackles, tackles for loss, sacks, forced fumbles, interceptions, and passes defended, each standardized. The three roles (tackling, disruption, coverage) are weighted equally. Each stat's spread is estimated on capped values, but players are scored on their real rates, so the top of every list keeps its order.
- **Production over expected:** a weighted regression on season, region, and division gives each player's expected DPI. The residual, as a z-score and a percentile, is the ranking score. A separate within-team score answers "best on his own team".
- **Leaderboards:** overall, best season per player, tacklers, disruptors, and ball hawks.

## Findings

- The first principal component of these stats gives interceptions and passes defended *negative* weight, so a PCA index ranks ballhawks below average. The equal-role index fixes this: players with at least 0.5 interceptions plus passes defended per game went from 4 to 38 of the top 100.
- Season, region, and division explain less than 1% of DPI, so production over expected is close to raw production at this level of context.
- The residuals are right-skewed: the 95th percentile sits at z ≈ 1.9 and the 99th at z ≈ 3.1, so percentiles are reported instead of normal-theory cutoffs.

## Run it

Put the source spreadsheet at `data/football_defensive_ALL.xlsx`, then:

```r
install.packages(c("readxl", "dplyr", "janitor", "rmarkdown"))
rmarkdown::render("hs-defense-production.Rmd")
```

Results are written to `outputs/`.

> [!NOTE]
> The player-level data names high school athletes, most of them minors, so `data/` and `outputs/` are not committed.

## Limitations

- Production over expected is not the same as undervalued. That needs a value signal such as recruiting ratings, offers, or all-conference honors.
- There is no position column, so linemen and defensive backs share one scale.
- The source does not always count sacks inside tackles for loss, so the disruption index may double-count some sacks.
