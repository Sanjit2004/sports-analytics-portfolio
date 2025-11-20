# IPL Win Probability Model — Ball-by-Ball Analysis

This project computes win probability throughout an IPL match using ball-by-ball data and state variables like runs required, overs left, and wickets in hand.

## Objective

- Build logistic/state-based win probability model  
- Track probability change every ball  
- Identify momentum swings using model outputs

## Methods

- Feature engineering: runs-left, balls-left, wickets, current RR  
- Fit logistic/gradient boosting model  
- Apply model ball-by-ball to a match  
- Plot win probability progression and key events

## Files

- `notebooks/`: model training + match analysis  
- `plots/`: win probability graphs  
- `data/`: cleaned ball-by-ball data

## Outputs

- Win probability timeline  
- Turning point identification  
- Manual commentary about momentum shifts

## How to Run

1. Install Python packages: pandas, numpy, matplotlib, sklearn  
2. Run notebook in order: data prep → model → plotting
