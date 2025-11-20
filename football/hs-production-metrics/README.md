# High School Football Production Metrics

This project scrapes high school football statistics, cleans and unifies the data, and creates production-based metrics for player evaluation.  
**Status:** Work in progress — the scraping pipeline is complete and I am currently working on cleaning and feature engineering.

## Objective

- Scrape WisSports/MaxPreps-style statistical tables  
- Clean messy, inconsistent high school data  
- Generate production metrics (yards per game, efficiency, usage)  
- Build leaderboards and visualizations

## Pipeline

### 1. Scraping  
Python scripts to extract tables from player pages across seasons.  
**Current stage:** Scraping is implemented and raw datasets have been collected.

### 2. Cleaning + Feature Engineering (in progress)  
Standardizing columns across seasons and positions (QB, RB, WR), handling missing data, and creating rate/efficiency stats.

### 3. Analysis (planned)  
Ranking and visualizing performance metrics, building leaderboards, and exploring efficiency vs usage.

## Files

- `scraping/`: scraping scripts  
- `notebooks/`: cleaning + feature engineering + plots (to be expanded)  
- `data/`: cleaned player-level data (in progress)

## Outputs (planned)

- Player production tables  
- Rank-based summaries  
- Efficiency vs usage plots

## How to Run

1. Install Python packages: `requests`, `beautifulsoup4`, `pandas`, `numpy`  
2. Run scraper (respect `robots.txt`) to regenerate the raw data
