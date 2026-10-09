# IPL Win Probability Model

Estimates the chasing team's chance of winning after every ball of an IPL second innings.

**[View the full report](https://sanjit2004.github.io/sports-analytics-portfolio/ipl-win-probability.html)**

## Approach

- **Data:** every IPL ball-by-ball record from [Cricsheet](https://cricsheet.org/), loaded with `cricketdata::fetch_cricsheet()`. Only second innings are used, so the target score is known.
- **Features:** runs required, balls remaining, wickets in hand, current and required run rate, powerplay and death-over flags.
- **Models:** logistic regression (interpretable baseline), random forest, and XGBoost (tuned with cross-validation).
- **Validation:** trained on 2008–2024 (124,666 deliveries) and tested on the unseen 2025 season (8,092 deliveries, 72 matches). Compared with log-loss, Brier score, and ROC-AUC.

## Results

- XGBoost had the highest test AUC and the best calibration.
- Runs required, required run rate, and wickets in hand were the strongest predictors.
- The report includes ROC curves, calibration plots, and ball-by-ball win probability charts for key 2025 matches.

## Run it

```r
install.packages(c("tidyverse", "cricketdata", "randomForest", "xgboost", "pROC", "writexl", "rmarkdown"))
rmarkdown::render("ipl-win-probability.Rmd")
```

The notebook writes `ipl_train_2008_2024.csv` and `ipl_test_2025.csv` to the working directory.
