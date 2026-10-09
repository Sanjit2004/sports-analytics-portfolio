# Sports Analytics Portfolio

Statistical models in R for IPL cricket and Wisconsin high school football.

| Project | Question | Methods | Report |
|---|---|---|---|
| [IPL Win Probability](cricket/ipl-win-probability-model/) | How likely is the chasing team to win, ball by ball? | Logistic regression, random forest, XGBoost; out-of-season test | [View report](https://sanjit2004.github.io/sports-analytics-portfolio/ipl-win-probability.html) |
| [IPL Tournament Simulation](cricket/ipl-bradley-terry-tournament-simulation/) | How often do Mumbai Indians and Chennai Super Kings meet in the final? | Bradley–Terry model, 20,000-season Monte Carlo simulation | [View report](https://sanjit2004.github.io/sports-analytics-portfolio/ipl-bradley-terry-tournament-simulation.html) |
| [High School Defensive Production](football/hs-production-metrics/) | Which defenders produce more than expected for their level? | Role-weighted production index, regression adjustment | Code only (player data kept private) |

## Highlights

- **Win probability:** trained on 124,666 second-innings deliveries (2008–2024) and tested on 8,092 deliveries from 72 matches in the 2025 season. XGBoost gave the best test AUC and calibration.
- **Tournament simulation:** fitted team strengths plus a batting-first effect on the 2019 season, then replayed the real schedule and playoff bracket 20,000 times. MI and CSK met in the final in about 33.5% of simulated seasons.

## Run the analyses

Both cricket projects are R Markdown notebooks. They download data at run time with the [`cricketdata`](https://github.com/robjhyndman/cricketdata) package, so no data files are needed.

```r
install.packages(c("tidyverse", "cricketdata", "BradleyTerry2",
                   "randomForest", "xgboost", "pROC", "writexl", "rmarkdown"))
rmarkdown::render("cricket/ipl-win-probability-model/ipl-win-probability.Rmd")
```

The knitted reports in [`docs/`](docs/) are served with GitHub Pages.

## Stack

R (tidyverse, BradleyTerry2, randomForest, xgboost, pROC), R Markdown, GitHub Pages.
