# 🤖 AI Adoption & Layoff Risk Analysis

### End-to-End Data Analytics & Machine Learning Project

> Understanding how AI adoption, automation, job characteristics, and workforce skills are associated with employee layoff risk — and turning those findings into actionable workforce recommendations.

![Python](https://img.shields.io/badge/Python-Data%20Analysis-blue?logo=python)
![SQL](https://img.shields.io/badge/SQL-PostgreSQL-336791?logo=postgresql)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi)
![Machine Learning](https://img.shields.io/badge/Machine%20Learning-Scikit--learn-orange)

---

## 📌 Project Overview

AI and automation are changing how organizations structure work. This project analyzes **20,000 employee records across 16 attributes** to understand where layoff risk is concentrated, how AI adoption and automation relate to workforce risk, which factors are important in predicting risk, and where organizations should focus reskilling and AI training.

The project follows a complete analytics workflow:

**Business Problem → Python → SQL → Machine Learning → Power BI → Insights → Recommendations**

---

## 🎯 Business Problem

Organizations need to identify employees, job roles, and industries that may face higher AI-driven workforce risk and determine where reskilling, AI training, and job redesign should be prioritized.

The project answers a practical business question:

> **Which workforce characteristics and work patterns are associated with higher layoff risk, and what actions can organizations take to prepare employees for AI-driven change?**

---

## 🎯 Project Objectives

- Identify industries and job roles with higher layoff-risk exposure.
- Analyze AI adoption, task automation, training, and workforce risk.
- Identify workforce groups that may require targeted reskilling.
- Determine the strongest factors associated with layoff-risk predictions.
- Build a machine learning model to classify **High, Medium, and Low** risk.
- Build an interactive Power BI dashboard.
- Translate analytical and ML findings into practical workforce recommendations.

---

# 📊 Dashboard

The final Power BI report contains **5 pages**, moving from project context to business insights, AI analysis, ML results, and recommendations.

---

## 🏠 Project Overview

Introduces the business problem, project objective, and dashboard navigation.

![Project Overview](https://github.com/anshusingh14379/AI-Adoption-and-Layoff-Risk-Analysis/blob/main/Power%20BI/Images/project_overview.png)

---

## 📌 Executive Summary

Provides a high-level view of workforce risk and the major business findings.

### Key Areas

- Total Employees
- High Risk %
- Average AI Training
- Average Task Automation
- Layoff Risk Distribution
- Industry Risk
- Reskilling Priority
- Key Insights

![Executive Summary](https://github.com/anshusingh14379/AI-Adoption-and-Layoff-Risk-Analysis/blob/main/Power%20BI/Images/executive_summary.png)

---

## ⚠️ Workforce Risk Analysis

Focuses on where workforce risk is concentrated across employee and job characteristics.

### Key Areas

- Risk by Education Level
- Risk by Job Level
- Risk by Job Role
- Risk by Company Size
- Risk by Industry
- Workforce Risk & Exposure Summary

![Workforce Risk Analysis](https://github.com/anshusingh14379/AI-Adoption-and-Layoff-Risk-Analysis/blob/main/Power%20BI/Images/workforce_risk_analysis.png)

---

## 🤖 AI Adoption & Automation

Examines AI adoption, AI tools, task automation, and training across the workforce.

### Key Areas

- AI Adoption Score
- Average Task Automation
- Average AI Training
- AI Tools Used
- AI Adoption by Industry
- AI Tools by Job Level
- Task Automation by Industry
- Training vs Layoff Risk
- AI Training by Job Level
- AI & Workforce Risk Summary

![AI Adoption & Automation](https://github.com/anshusingh14379/AI-Adoption-and-Layoff-Risk-Analysis/blob/main/Power%20BI/Images/ai_adoption.png)

---

## 🧠 ML Insights & Strategic Recommendations

Presents the machine learning results and converts them into business actions.

### Key Areas

- Model Accuracy
- High Risk Precision
- High Risk Recall
- High Risk F1 Score
- ML Feature Importance
- ML Risk Drivers — Direction of Impact
- Confusion Matrix
- Recommended Actions

![ML Insights & Strategic Recommendations](https://github.com/anshusingh14379/AI-Adoption-and-Layoff-Risk-Analysis/blob/main/Power%20BI/Images/ml_insights.png)

---

# 🗂️ Dataset

| Attribute | Details |
|---|---:|
| Records | **20,000 employees** |
| Features | **16** |
| Target | **Layoff Risk** |
| Risk Classes | **High, Medium, Low** |

### Main Feature Groups

**Employee Characteristics**

- Age
- Education Level
- Years of Experience

**Job Characteristics**

- Industry
- Job Role
- Company Size
- Job Level

**AI & Workforce Characteristics**

- Routine Task Percentage
- Creativity Requirement
- Human Interaction Level
- AI Adoption Level
- Number of AI Tools Used
- AI Usage Hours Per Week
- Tasks Automated Percentage
- AI Training Hours

**Target**

- Layoff Risk

---

# 🔄 Analytical Workflow

## 1. 🐍 Python — Data Preparation & Exploration

Python was used to understand and prepare the dataset before deeper analysis.

### Key Activities

- Data loading and inspection
- Data type checks
- Missing-value checks
- Duplicate checks
- Descriptive statistics
- Univariate analysis
- Bivariate analysis
- Distribution analysis
- Relationship analysis
- Machine learning preparation

### Main Libraries

`Pandas` · `NumPy` · `Matplotlib` · `Seaborn` · `Scikit-learn`

---

## 2. 🗄️ SQL — Business Analysis

SQL was used to answer business questions and create workforce-level summaries.

### Analysis Included

- Workforce distribution by industry
- Company-size analysis
- Layoff risk by industry
- Layoff risk by job role
- Layoff risk by job level
- Layoff risk by education
- AI adoption by industry
- AI tools by job level
- Task automation by industry
- AI training by company size
- Reskilling priority
- High-risk job roles
- High-risk employees with lower AI training
- Workforce risk summary

---

## 3. 🤖 Machine Learning — Predictive Analysis

The machine learning stage was used to classify employees into:

- **High Risk**
- **Medium Risk**
- **Low Risk**

Three models were developed and compared, with **Logistic Regression selected as the final model**.

### Model Performance

| Metric | Score |
|---|---:|
| Accuracy | **93.07%** |
| Precision | **93.06%** |
| Recall | **93.07%** |
| F1 Score | **93.06%** |

### High Risk Performance

| Metric | Score |
|---|---:|
| Precision | **95%** |
| Recall | **96%** |
| F1 Score | **95%** |

The model was evaluated on a **4,000-record test set**.

---

# 🔎 ML Feature Importance

The strongest features identified by the model were:

| Rank | Feature |
|---:|---|
| 1 | Routine Task Percentage |
| 2 | Job Level |
| 3 | Tasks Automated Percentage |
| 4 | Creativity Requirement |
| 5 | Education Level |
| 6 | Human Interaction Level |
| 7 | Years of Experience |
| 8 | AI Training Hours |

### Key ML Finding

> **Routine Task Percentage was the strongest feature in the model.**

This supports the broader business analysis that repetitive and highly automatable work is an important area of workforce risk.

---

# ↕️ Direction of Impact

### Factors associated with higher High-risk predictions

- Higher Routine Task Percentage
- Higher Tasks Automated Percentage
- Selected industries
- Selected job roles

### Factors associated with lower High-risk predictions

- Higher Job Level
- Higher Creativity Requirement
- Higher Education Level
- Higher Human Interaction Level
- Higher Years of Experience
- Higher AI Training Hours

> These findings represent **model associations**, not direct causal relationships.

---

# 💡 Key Business Findings

### 1. Routine work is a major workforce-risk indicator

Routine Task Percentage was the strongest feature identified by the ML model.

### 2. Automation exposure is a major workforce-risk area

Tasks Automated Percentage was also one of the strongest model features.

### 3. Manufacturing requires greater workforce attention

Manufacturing showed the highest average layoff-risk score and the highest reskilling priority.

### 4. Some job roles show concentrated High risk

Operators, Production Supervisors, Quality Engineers, Inventory Analysts, and Dispatchers showed the highest High-risk representation.

### 5. Entry-level employees show higher High-risk representation

High-risk representation decreases from Entry-level to Mid-level to Senior-level employees.

### 6. A clear reskilling opportunity exists

**2,612 employees** were identified as both High layoff risk and below the company average for AI training hours.

### 7. AI adoption alone does not explain workforce risk

The type and amount of work being automated provide a more useful workforce-risk perspective than AI adoption alone.

---

# 🎯 Recommended Actions

## 🔄 Redesign Routine Work

Identify highly repetitive roles and redesign work by adding:

- Creative responsibilities
- Analytical tasks
- Problem solving
- Decision-making
- Human interaction

---

## 🤖 Reskill Automation-Exposed Roles

Prioritize employees working in highly automatable and higher-risk roles for targeted reskilling programs.

---

## 📚 Expand AI Training

Provide continuous AI training, particularly for High-risk employees with lower training exposure.

---

## 🎓 Build Future-Ready Skills

Strengthen skills such as:

- Creativity
- Critical thinking
- Communication
- Problem solving
- Human interaction

---

# 📌 Management Takeaway

The analysis suggests that workforce risk is closely connected to the **nature of work being performed**.

The strongest risk pattern is:

**Higher Routine Work + Higher Task Automation → Higher Workforce Risk**

The recommended approach is:

**Identify → Assess → Reskill → Redesign → Monitor**

The goal is not simply to identify jobs at risk, but to **prepare employees for the work that comes next**.

---

# ⚠️ Limitations

- The analysis identifies associations rather than proving causation.
- A High-risk prediction does not mean an employee will be laid off.
- The model depends on the variables available in the dataset.
- Workforce conditions may change as AI adoption and job structures evolve.
- Model performance should be monitored when new data becomes available.

---

# 🛠️ Tools & Technologies

| Area | Tools |
|---|---|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Machine Learning | Scikit-learn |
| Database | PostgreSQL / SQL |
| Business Intelligence | Power BI |
| Development | Jupyter Notebook |
| Version Control | Git / GitHub |

---

# 📁 Repository Structure

AI-Adoption-and-Layoff-Risk-Analysis/
│
├── data/
│
├── python/
│
├── sql/
│
├── powerbi/
│   ├── AI_Adoption_Layoff_Risk_Analysis.pbix
│   │
│   └── images/
│       ├── page1-executive-summary.png
│       ├── page2-workforce-risk.png
│       ├── page3-ai-adoption.png
│       ├── page4-ml-insights.png
│       └── page5-project-overview.png
│
└── README.md

---

# 🚀 Project Outcome

This project demonstrates an end-to-end approach to solving a workforce analytics problem:

**Business Problem → Data → Analysis → SQL → Machine Learning → Visualization → Insights → Recommendations**

The final solution provides a structured way to identify workforce-risk areas, understand automation exposure, prioritize reskilling, improve AI training, interpret ML risk drivers, and support workforce planning.

---

## 👤 Author

### Anshu Singh

**Data Analyst | Python | SQL | Statistic | Power BI | Machine Learning**

[LinkedIn](https://www.linkedin.com/in/anshusingh-data-analyst) · [GitHub](https://github.com/anshusingh14379)

⭐ If you find this project useful, feel free to explore the repository and share your feedback.
