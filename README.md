# Site-Incident-Report

# Online Exam Incident Risk Analysis

"""
sir-incident-analysis/
│
├── sir_incidents.sql        
├── incident_analysis.ipynb  
└── README.md  
"""


            

## Project Overview
Incident log analysis from online proctoring exam platform during peak season.  
Goal: Identify risk patterns, quantify SLA impact, and propose mitigation strategies.

## Dataset
- Source: SIR(Site Incident Report) system context
- Fields: incident_time, issue_type, category, severity, description
- Size: 30+ incidents (expanded with blackout case study)

## Analysis Steps
1. Data Cleaning (remove duplicates, unify categories)
2. Classification (system / capacity / user / infrastructure / unknown)
3. Severity Quantification (HIGH, MEDIUM, LOW per SLA rules)
4. Trend Analysis (time-series, category distribution)
5. Case Study (system blackout → 5 min time loss)

## Visualizations
- Bar chart: Incident count by category
- Stacked chart: Severity distribution over time
- Heatmap: High-risk incidents concentration
- Case study chart: Candidate time loss impact

## Deliverables
- SQL scripts (data cleaning, queries)
- Python notebook (visualizations)
- Risk analysis report (recommendations)

## Key Insights
- System-related incidents = 45% of all cases
- Login failures & system crashes = majority of high-severity events
- Blackout incident revealed timer design flaw → SLA violation risk
