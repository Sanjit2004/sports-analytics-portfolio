# High School Football Production Metrics

This project scrapes high school football statistics, cleans and unifies the data, and creates production-based metrics for player evaluation.

## Objective

- Scrape WisSports/MaxPreps-style statistical tables  
- Clean messy, inconsistent high school data  
- Generate production metrics (yards per game, efficiency, usage)  
- Build leaderboards and visualizations

## Pipeline

### 1. Scraping  
Python scripts to extract tables from player pages across seasons.

### 2. Cleaning + Feature Engineering  
Standardizing columns across seasons and positions (QB, RB, WR).

### 3. Analysis  
Ranking and visualizing performance metrics.

## Files

- `scraping/`: scraping scripts  
- `notebooks/`: cleaning + feature engineering + plots  
- `data/`: cleaned player-level data

## Outputs

- Player production tables  
- Rank-based summaries  
- Efficiency vs usage plots

## How to Run

1. Install Python packages: requests, bs4, pandas, numpy  
2. Run scraper (respect robots.txt)
