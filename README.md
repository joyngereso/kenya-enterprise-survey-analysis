# 🇰🇪 Kenya Enterprise Survey 2025 — Statistical Analysis

> **A data analysis portfolio project by [Joy Ngereso](https://github.com/joyngereso)**
> Exploring business environment, gender representation, workforce composition, and financial access across Kenyan enterprises.

---

## 📌 Project Overview

This project presents a comprehensive statistical analysis of the **Kenya Enterprise Survey 2025** dataset, conducted using **IBM SPSS Statistics v27**. The survey captures data from a nationally representative sample of formal-sector enterprises across Kenya's six regions.

The analysis investigates:
- 📍 Geographic distribution of establishments across Kenya's six regions
- 🏢 Firm size distribution (Small, Medium, Large)
- 👩‍💼 Gender representation in top management roles
- 👩 Female workforce participation rates (computed & categorised)
- 💳 Access to formal financial services and overdraft facilities
- 🎓 Employee training practices by firm size

---

## 🛠️ Tools & Skills Demonstrated

| Tool / Skill | Details |
|---|---|
| **Software** | IBM SPSS Statistics v27 |
| **CTABLES** | Custom frequency & percentage tables |
| **FREQUENCIES** | Descriptive statistics — mean, median, mode, SD, skewness, kurtosis |
| **CROSSTABS** | Bivariate cross-tabulations across categorical variables |
| **GGRAPH / GPL** | Bar charts & pie charts with custom colour schemes |
| **COMPUTE** | Derived `women_perc` variable (% female employees) |
| **RECODE** | Recoded continuous variable into ordinal groups |
| **DESCRIPTIVES** | Summary statistics for computed variables |
| **VALUE LABELS** | Applied descriptive labels to recoded variables |

---

## 📁 Repository Structure

```
kenya-enterprise-survey-analysis/
│
├── data/
│   └── Kenya_Enterprise_Survey_2025_1.sav       # SPSS dataset
│
├── syntax/
│   └── joy_kenya_survey_syntax.sps              # Full SPSS syntax (reproducible)
│
├── output/
│   └── Output26.spv                             # SPSS output viewer file
│
├── report/
│   └── Kenya_Enterprise_Survey_Analysis_ReportJOJO.docx  # Full written report
│
└── README.md
```

---

## 🔍 Key Findings

### 1️⃣ Firm Size Distribution
Small firms make up the **largest share** of the sample — consistent with Kenya's MSME-dominated economy. Large firms represent the smallest proportion.

### 2️⃣ Gender in Top Management
Female top managers are **underrepresented across all firm sizes**. Their presence is relatively higher in small firms and declines progressively in medium and large enterprises — pointing to structural barriers to women's advancement in formal organisations.

### 3️⃣ Female Workforce Participation
A new variable (`women_perc`) was computed to measure the **percentage of female permanent employees** per firm. Firms were then grouped into four categories:

| Group | Female Employee Share |
|---|---|
| Group 1 | 0 – 25% |
| Group 2 | 26 – 50% |
| Group 3 | 51 – 75% |
| Group 4 | 76 – 100% |

### 4️⃣ Access to Finance
Access to overdraft facilities, savings accounts, and formal credit varies significantly by **firm size and legal status** — with larger and more formally registered firms having notably better financial access.

### 5️⃣ Employee Training
Large firms are the **most likely to train staff**, followed by medium firms. Small firms are the least likely — highlighting a human capital development gap that policy should address.

---

## 📊 Analysis Workflow

```
Raw Data (.sav)
      │
      ▼
SPSS Syntax (.sps)
      │
      ├── CTABLES → Frequency & % tables
      ├── FREQUENCIES → Descriptive stats + histograms
      ├── CROSSTABS → Cross-tabulations (firm size × gender, training, finance)
      ├── GGRAPH (GPL) → Bar charts & pie charts
      ├── COMPUTE → women_perc = (l5 / l1) × 100
      ├── RECODE → women_perc → perc_group (4 ordinal groups)
      └── DESCRIPTIVES → Summary stats for computed variable
      │
      ▼
SPSS Output (.spv) → Written Report (.docx)
```

---

## 📄 Full Report

The complete written report is available in the `/report` folder. It covers:
- Introduction & objectives
- Data and methodology
- Results and discussion (6 themes)
- Summary of key findings
- Methodological reflections
- Conclusion and policy implications

---

## 🚀 How to Reproduce This Analysis

1. Open **IBM SPSS Statistics** (v25 or later recommended).
2. Load the dataset: `data/Kenya_Enterprise_Survey_2025_1.sav`
3. Open and run the syntax file: `syntax/joy_kenya_survey_syntax.sps`
4. Output will be generated in the SPSS Viewer — compare with `output/Output26.spv`

> ✅ All analysis is syntax-driven for full reproducibility.

---

## 👩‍💻 About Me

Hi, I'm **Joy Ngereso** — an economist/ data analyst passionate about using data to uncover insights that matter, especially around gender equity, economic development, and enterprise growth in Kenya and Africa.

- 🔗 [LinkedIn] (https://www.linkedin.com/in/joy-ngereso-229004270)
- 📧 Reach out via GitHub or LinkedIn

---

## 📜 License

This project is for **portfolio and educational purposes**. The Kenya Enterprise Survey data is used in accordance with World Bank open data terms.

---

*Last updated: April 2026*
