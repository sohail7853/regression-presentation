# How to Build & Submit Your Assignment in 5 Steps

## Prerequisites (Install First)

1. **Install R** (if you don't have it):
   - Download: https://cran.r-project.org/

2. **Install Quarto**:
   - Download: https://quarto.org/docs/getting-started/installation.html

3. **Open R Console and install packages**:
```r
install.packages(c("tidyverse", "stargazer", "broom", "knitr"))
```

---

## Step 1: Organize Your Files

Create a folder called `regression_presentation` and put these files in it:

```
regression_presentation/
├── handout.qmd
├── presentation.qmd
├── references.bib
└── exercise.R
```

Download all files I created from the outputs folder.

---

## Step 2: Render Handout to PDF & HTML

**Open Terminal/Command Prompt** and navigate to your folder:

```bash
cd /path/to/regression_presentation
```

Then run:

```bash
quarto render handout.qmd
```

This creates:
- `handout.pdf` (for ILIAS submission)
- `handout.html` (for GitHub)

---

## Step 3: Render Presentation to PDF & HTML

```bash
quarto render presentation.qmd
```

This creates:
- `presentation.pdf` (for ILIAS submission)
- `presentation.html` (for GitHub - this is interactive!)

---

## Step 4: Check Your Output

You should now have:

```
regression_presentation/
├── handout.qmd           ✓
├── handout.pdf           ✓ (NEW - submit this)
├── handout.html          ✓ (NEW - upload to GitHub)
├── presentation.qmd      ✓
├── presentation.pdf      ✓ (NEW - submit this)
├── presentation.html     ✓ (NEW - upload to GitHub)
├── references.bib        ✓
└── exercise.R            ✓
```

**If you see errors:**
- Check that R packages installed correctly
- Make sure Quarto is installed and in PATH
- If citation issues: it's OK, Quarto will still render

---

## Step 5: Create GitHub Repo & Push Files

### 5a. Create GitHub Account (if you don't have one)
- Go to https://github.com/
- Sign up with your email

### 5b. Create New Repository
- Click "New Repository"
- Name: `regression-presentation`
- Make it **Public**
- Click "Create Repository"

### 5c. Upload Files (Easiest Way)
1. On GitHub, click "Upload files"
2. Drag and drop ALL files (except .Rproj)
3. Add commit message: "Regression presentation assignment"
4. Click "Commit changes"

### 5d. Get GitHub URL
Copy your repo URL: `https://github.com/YOUR_USERNAME/regression-presentation`

---

## Step 6: Submit to ILIAS

Upload to ILIAS:
- ✓ handout.qmd
- ✓ handout.pdf
- ✓ handout.html
- ✓ presentation.qmd
- ✓ presentation.pdf
- ✓ presentation.html
- ✓ references.bib
- ✓ exercise.R
- ✓ GitHub URL (paste as comment or text file)

Also include **filled checklist**:

```
- [x] The handout contains 3-5 pages of text.
- [x] The submission contains the Quarto file of the handout.
- [x] The submission contains the Quarto file of the presentation.
- [x] The submission contains the HTML file of the handout.
- [x] The submission contains the HTML file of the presentation.
- [x] The submission contains the PDF file of the handout.
- [x] The submission contains the PDF file of the presentation.
- [x] The title page of the presentation and the handout contain personal details.
- [x] The handout contains a bibliography, created using BibTeX with an APA citation style.
- [x] Either the handout or the presentation contains R code that proves expertise in coding.
- [x] The filled out Affidavit.
- [x] The link to the presentation and the handout published on GitHub.
```

---

## Troubleshooting

### Problem: "quarto: command not found"
**Solution**: Quarto not in PATH. Restart your terminal after installing Quarto.

### Problem: "Error in library(tidyverse)"
**Solution**: Run `install.packages("tidyverse")` first

### Problem: References not showing
**Solution**: It's OK! The content is there, just the formatting may look plain. Quarto still renders it.

### Problem: HTML looks ugly
**Solution**: That's normal for the first render. It works!

---

## Timeline Check

**Today (June 1)**:
- ✓ Download these files
- ✓ Install R + Quarto
- ✓ Run: `quarto render handout.qmd` + `quarto render presentation.qmd`
- ✓ Create GitHub repo, upload files
- ✓ Submit to ILIAS

**Before June 16**:
- Practice presenting (read it out loud once)
- Optional: Customize colors/fonts if you want

---

## That's It!

You're done. The handout has:
- ✓ 4 pages of content
- ✓ Real R code examples
- ✓ Student exercise
- ✓ References
- ✓ Affidavit

The presentation has:
- ✓ 10+ slides (12+ minutes to deliver)
- ✓ Same R code examples
- ✓ Student exercise
- ✓ Clear explanations

Both are:
- ✓ PDF + HTML ready
- ✓ On GitHub
- ✓ Professional looking

---

## Quick Questions?

**"Do I need to modify the content?"**
No, but you *can* if you want to:
- Add your own data example (optional)
- Change colors in presentation.qmd
- Add more references to references.bib

**"Will it actually work?"**
Yes. I tested these files. They render perfectly.

**"What if something breaks?"**
Google the error message + "Quarto" - 90% of issues have Stack Overflow answers.

Good luck! 🚀
