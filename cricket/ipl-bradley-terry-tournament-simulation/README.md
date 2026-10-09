# IPL 2019 Tournament Simulation

Fits a Bradley–Terry model to the 2019 IPL season and replays the tournament 20,000 times to estimate playoff outcomes.

**[View the full report](https://sanjit2004.github.io/sports-analytics-portfolio/ipl-bradley-terry-tournament-simulation.html)**

## Approach

- **Data:** 2019 IPL match results built from Cricsheet ball-by-ball data via `cricketdata`.
- **Model:** a Bradley–Terry paired-comparison model (`BradleyTerry2::BTm`) that estimates one strength per team plus a batting-first effect.
- **Simulation:** replays the real 2019 league schedule, awards 2 points per win, seeds the top four, then plays the IPL bracket (Qualifier 1, Eliminator, Qualifier 2, Final). Repeated 20,000 times with a fixed seed.

## Result

Mumbai Indians and Chennai Super Kings met in the final in **33.5%** of simulated seasons (they met in the real 2019 final). The report also shows how often every other pair of teams reached the final.

## Run it

```r
install.packages(c("cricketdata", "dplyr", "tidyr", "purrr", "BradleyTerry2", "rmarkdown"))
rmarkdown::render("ipl-bradley-terry-tournament-simulation.Rmd")
```
