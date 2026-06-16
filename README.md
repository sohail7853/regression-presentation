# regression-presentation

**Presenting Regression Results Using R**

A comprehensive guide to statistical reporting in APA 7th edition format using R and Quarto.

---


## Author

**Mohammed Sohail**

🎓 Matriculation Number: 401080440

📧 Email: sohail.mohammed@stud.hs-fresenius.de

🔗 GitHub: @sohail7853
---

## QR Code

<div align="center">
  <img src="https://api.qrserver.com/v1/create-qr-code/?size=250x250&data=https://sohail7853.github.io/regression-presentation/handout.html">
</div>

Scan to open:

https://sohail7853.github.io/regression-presentation/handout.html
---
## 📄 Quick Access

### Online Documents

- **Handout (HTML):** https://sohail7853.github.io/regression-presentation/handout.html
- **Presentation (HTML):** https://sohail7853.github.io/regression-presentation/presentation.html


### Online Documents

- **Handout (HTML):** https://sohail7853.github.io/regression-presentation/handout.html
- **Presentation (HTML):** https://sohail7853.github.io/regression-presentation/presentation.html

### Download Files

- **handout.pdf**
- **presentation.pdf**

### Source Files

- **handout.qmd**
- **presentation.qmd**
- **exercise.R**
- **references.bib**

---

## Overview

This project provides a **complete guide to presenting regression results** using the R programming language with **APA 7th edition standards**. Whether you're a student learning statistical reporting or an instructor preparing material, this repository contains everything you need.

### Topics Covered

- Linear regression fundamentals and key statistics
- Professional table formatting using `stargazer`
- Coefficient visualization and interpretation
- Prediction scenarios and practical applications
- APA 7th edition reporting conventions
- Assumption checking and diagnostics
- Writing results in academic style

---

## 📚 What's Included

### **Handout** (Study Material)
- **Format:** PDF, HTML
- **Content:** In-depth guide with examples, code, and explanations
- **Use:** Read before class for comprehensive understanding
- **Files:** `handout.qmd`, `handout.pdf`, `handout.html`

### **Presentation** (Class Slides)
- **Format:** RevealJS (interactive HTML), PDF
- **Content:** Key concepts, live examples, visuals
- **Use:** Follow along during the presentation
- **Files:** `presentation.qmd`, `presentation.html`, `presentation.pdf`

### **Exercise** (Hands-On Practice)
- **Format:** R Script
- **Content:** Reproducible code demonstrating all examples
- **Use:** Run locally to see concepts in action
- **File:** `exercise.R`

### **References**
- **File:** `references.bib`
- **Format:** BibTeX (APA citation style)
- **Content:** All sources cited in handout and presentation

---

## 🚀 How to Use

### Option 1: View Online (No Installation Required)
1. Open `presentation.html` in any web browser for interactive slides
2. Open `handout.html` for formatted study material
3. All examples are pre-rendered and ready to view

### Option 2: Run Locally (Requires R & Quarto)

**Prerequisites:**
- R (version 4.0 or higher)
- Quarto (latest version)
- R packages: `tidyverse`, `stargazer`, `broom`, `knitr`

**Setup:**

```bash
# Clone or download the repository
cd regression-presentation

# Install required R packages (run once)
Rscript -e "install.packages(c('tidyverse', 'stargazer', 'broom', 'knitr'))"

# Render documents (generates PDF and HTML outputs)
quarto render handout.qmd
quarto render presentation.qmd

# Run R exercise script
Rscript exercise.R
```

**Output files after rendering:**
- `handout.pdf` — APA-formatted handout with citations
- `handout.html` — Interactive web version
- `presentation.html` — RevealJS presentation (open in browser)
- `presentation.pdf` — Static PDF version of slides

---

## 📋 File Structure

```
regression-presentation/
├── README.md                          # This file
├── handout.qmd                        # Quarto source (handout)
├── handout.pdf                        # Generated PDF
├── handout.html                       # Generated HTML
├── presentation.qmd                   # Quarto source (slides)
├── presentation.html                  # Generated HTML slides
├── presentation.pdf                   # Generated PDF slides
├── exercise.R                         # R code examples
├── references.bib                     # Bibliography (BibTeX)
├── _quarto.yml                        # Quarto configuration
├── _extensions/                       # Quarto extensions
│   └── wjschne/apaquarto/            # APA formatting extension
├── apa.csl                           # APA citation style file
└── .gitignore                        # Git ignore rules
```

---

## 📐 Format & Standards

All documents adhere to **APA 7th Edition** formatting standards using the **apaquarto** extension for Quarto.

### Key Features:
- ✅ Proper heading hierarchy and formatting
- ✅ APA-style tables with notes
- ✅ APA-style figures with captions
- ✅ In-text citations in APA format
- ✅ Complete reference list (APA style)
- ✅ Proper margins, spacing, and typography
- ✅ Professional layout for academic submission

### Standards Reference
For detailed APA formatting guidelines, see: [apaquarto Documentation](https://wjschne.github.io/apaquarto/)

---

## 🛠️ Technology Stack

| Component | Tool | Purpose |
|-----------|------|---------|
| **Markup** | Quarto (QMD) | Document authoring |
| **Analysis** | R (tidyverse) | Data analysis |
| **Tables** | stargazer | Professional table formatting |
| **Slides** | RevealJS | Interactive presentations |
| **Formatting** | apaquarto | APA 7th edition styling |
| **Citations** | BibTeX (apa.csl) | APA citation management |
| **Version Control** | Git/GitHub | Repository management |

---

## 💡 Key Learning Outcomes

After working through this material, you will be able to:

1. **Fit and interpret regression models** in R
2. **Present results professionally** following APA guidelines
3. **Create publication-quality tables** using `stargazer`
4. **Visualize coefficients and uncertainty** with `ggplot2`
5. **Check regression assumptions** using diagnostic plots
6. **Write results sections** in academic style
7. **Format documents** automatically with Quarto and apaquarto
8. **Manage citations** properly in APA format

---

## 📖 Example Output

The handout includes:
- Regression table with multiple models
- Coefficient plots with confidence intervals
- Predicted values table with real-world scenarios
- Diagnostic plots for assumption checking
- Complete APA-formatted results section
- Discussion of interpretation and best practices

All examples use the **mtcars dataset** for accessibility and reproducibility.

---

## ✉️ Contact & Support

**Questions?** Reach out on GitHub or by email.

- **GitHub Issues:** [regression-presentation/issues](https://github.com/sohail7853/regression-presentation/issues)
- **Email:** sohail.mohammed@stud.hs-fresenius.de

---

## 📝 License

This project is provided for educational purposes. Feel free to use, modify, and share for learning.

---

**Last Updated:** June 2026  
**Status:** ✅ Complete and Ready for Submission


---

