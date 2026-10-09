# Sports Analytics Portfolio

Statistical models in R for IPL cricket and Wisconsin high school football.

| Project | Question | Methods | Report |
|---|---|---|---|
| [IPL Win Probability](cricket/ipl-win-probability-model/) | How likely is the chasing team to win, ball by ball? | Logistic regression, random forest, XGBoost; out-of-season test | [View report](https://sanjit2004.github.io/sports-analytics-portfolio/ipl-win-probability.html) |
| [IPL Tournament Simulation](cricket/ipl-bradley-terry-tournament-simulation/) | How often do Mumbai Indians and Chennai Super Kings meet in the final? | Bradley–Terry model, 20,000-season Monte Carlo simulation | [View report](https://sanjit2004.github.io/sports-analytics-portfolio/ipl-bradley-terry-tournament-simulation.html) |
| [High School Defensive Production](football/hs-production-metrics/) | Which defenders produce more than expected for their level? | Role-weighted production index, regression adjustment | Code only (player data kept private) |

## Highlights

- **Win probability:** trained on 124,666 second-innings deliveries (2008–2024) and tested on 8,092 deliveries from 72 matches in the 2025 season. XGBoost had the best test AUC and the lowest calibration error (0.072, against 0.085 for logistic regression and 0.095 for random forest).
- **Tournament simulation:** fitted team strengths plus a batting-first effect on the 2019 season, then replayed the real schedule and playoff bracket 20,000 times. MI and CSK met in the final in about 33.5% of simulated seasons.

## Data

| Project | Source | Scope |
|---|---|---|
| Win probability | [Cricsheet](https://cricsheet.org/) ball-by-ball data via [`cricketdata`](https://github.com/robjhyndman/cricketdata), downloaded at run time | IPL second innings; train 2008–2024, test 2025 |
| Tournament simulation | Same source | 2019 IPL season |
| High school defense | A private spreadsheet of Wisconsin player stats | 2022–2024 seasons; not committed because it names minors |

## Reproduce

Requires R 4.3 or later and [pandoc](https://pandoc.org/). The package list is in [`DESCRIPTION`](DESCRIPTION).

```bash
make deps       # install the R packages
make cricket    # re-download the data and render both IPL reports into docs/
```

Random seeds are fixed and the seasons are pinned, so a re-run fits the same models on the same data. The [Render reports](.github/workflows/render.yml) workflow knits both cricket reports from freshly downloaded data on every pull request that touches them. The published reports in [`docs/`](docs/) are served with GitHub Pages and only change when they are rendered and committed deliberately.

## Stack

R (tidyverse, BradleyTerry2, randomForest, xgboost, pROC), R Markdown, GitHub Actions, GitHub Pages.

## License

[MIT](LICENSE). The high school player data is not covered and is not distributed.
