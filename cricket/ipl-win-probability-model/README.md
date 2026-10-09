# IPL Win Probability Model

Estimates the chasing team's chance of winning after every ball of an IPL second innings.

**[Executive summary](https://sanjit2004.github.io/sports-analytics-portfolio/ipl-win-probability.html)** · **[Full analysis](https://sanjit2004.github.io/sports-analytics-portfolio/ipl-win-probability-full.html)** (every model output, rebuilt from fresh data)

## Approach

- **Data:** every IPL ball-by-ball record from [Cricsheet](https://cricsheet.org/), loaded with `cricketdata::fetch_cricsheet()`. Only second innings are used, so the target score is known.
- **Features:** runs required, balls remaining, wickets in hand, current and required run rate, powerplay and death-over flags.
- **Models:** logistic regression (interpretable baseline), random forest, and XGBoost (tuned with cross-validation).
- **Validation:** trained on 2008–2024 (124,666 deliveries) and tested on the unseen 2025 season (8,092 deliveries, 72 matches). Compared with log-loss, Brier score, and ROC-AUC.

## Results

Test season (2025), 8,092 deliveries, from the full analysis:

| Model | Log loss | Brier score | Calibration error | ROC-AUC |
|---|---|---|---|---|
| Logistic regression | 0.444 | 0.147 | 0.085 | **0.889** |
| Random forest | 0.583 | 0.164 | 0.095 | 0.874 |
| XGBoost | **0.442** | **0.146** | **0.074** | 0.886 |

- XGBoost gave the most accurate probabilities: best log loss, Brier score, and calibration error. The margin over logistic regression is small, and their AUCs are effectively tied, so the simpler model is a strong baseline.
- Random forest was overconfident on the test season, which shows in its much higher log loss.
- Required run rate, runs required, and wickets in hand were the strongest predictors.
- The report includes ROC curves, calibration plots, and ball-by-ball win probability charts for key 2025 matches.

## Run it

```r
install.packages(c("tidyverse", "cricketdata", "randomForest", "xgboost", "pROC", "writexl", "rmarkdown"))
rmarkdown::render("ipl-win-probability.Rmd")
```

The notebook writes `ipl_train_2008_2024.csv` and `ipl_test_2025.csv` to the working directory.
