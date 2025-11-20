# IPL 2019 Season Simulation - Bradley-Terry Model

This project fits a Bradley–Terry paired comparison model to all matches of the 2019 IPL season and simulates 20,000 seasons to estimate postseason outcomes.

## Objective

- Estimate team strength parameters (λ)
- Incorporate batting-order effects
- Simulate full seasons under true IPL schedule
- Compute probability distribution of finalist pairs
- Quantify tournament volatility

## Key Assets

- **PDF report:** `reports/Bradley-Terry-Lens.pdf` :contentReference[oaicite:2]{index=2}  
- **HTML knitted report:** `reports/Report.html` :contentReference[oaicite:3]{index=3}

## Methods Summary

- Fit Bradley–Terry ability parameters  
- Use batting-first penalty (γ ≈ -0.48 from model)  
- Simulate full 2019 schedule 20,000×  
- Use playoff structure: Qualifier 1 → Eliminator → Qualifier 2 → Final  
- Track frequency of finalist pairings

## Key Results

From the PDF (page 7):  
- MI vs CSK reached the final **33.5% of the time**  
- Other strong pairings included MI–DC, CSK–SRH, demonstrating volatility

From the PDF (page 5):  
- Team ability rankings matched real standings, validating the model

## Files

- `notebooks/`: model fitting + simulation code  
- `reports/`: final PDF and HTML deliverables  
- `data/`: raw and cleaned IPL match data

## How to Run

1. Install R packages: `BradleyTerry2`, `tidyverse`, `ggplot2`, `dplyr`  
2. Open and run the main notebook or Rmd  
3. Knit to generate reports

## Outputs

- Team strength plot  
- Finalist pairing distribution  
- Tournament volatility commentary
