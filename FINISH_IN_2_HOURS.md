# 🚀 FINISH EVERYTHING IN 2 HOURS

**Your GitHub Username**: `sohail7853`
**Deadline**: June 16
**Time Available**: 2 hours RIGHT NOW

---

# THE EXACT STEPS (Follow in Order)

## ⏱️ TIMELINE

| Time | Task | Duration |
|------|------|----------|
| 0:00 | Download files | 3 min |
| 0:03 | Install R | 10 min |
| 0:13 | Install Quarto | 5 min |
| 0:18 | Install R packages | 5 min |
| 0:23 | Render handout.qmd | 5 min |
| 0:28 | Render presentation.qmd | 5 min |
| 0:33 | Create GitHub repo | 2 min |
| 0:35 | Get GitHub token | 2 min |
| 0:37 | Push files to GitHub | 5 min |
| 0:42 | Submit to ILIAS | 5 min |
| **0:47** | **✅ DONE** | **EXTRA 73 MIN BUFFER** |

---

# STEP-BY-STEP

## 🔴 STEP 1: Download Files (3 min)

You already have these files in your outputs folder:
1. ✅ handout.qmd
2. ✅ presentation.qmd
3. ✅ references.bib
4. ✅ exercise.R

Create a folder on your Desktop:
- **Windows**: `C:\Users\[YOUR_USERNAME]\Desktop\regression_presentation`
- **Mac**: `/Users/[YOUR_USERNAME]/Desktop/regression_presentation`

Put all 4 files there.

**✅ DONE: 3 min**

---

## 🔴 STEP 2: Install R (10 min)

### Download R
Go to: https://cran.r-project.org/

1. Choose your OS (Windows/Mac/Linux)
2. Click download link
3. Run installer
4. Accept all defaults
5. Click "Finish"

**Wait 10 min for installation**

**✅ DONE: 13 min total**

---

## 🔴 STEP 3: Install Quarto (5 min)

Go to: https://quarto.org/docs/getting-started/installation.html

1. Choose your OS
2. Click download
3. Run installer
4. Accept defaults
5. Click "Finish"
6. **Close your terminal completely** (if open)
7. Open a new terminal

**✅ DONE: 18 min total**

---

## 🔴 STEP 4: Install R Packages (5 min)

### Open R Console

**Windows:**
1. Press `Windows Key + R`
2. Type: `Rscript`
3. Press Enter

**Mac:**
1. Search for "R"
2. Click "R.app"

**Linux:**
1. Open terminal
2. Type: `R`

### Copy-Paste This

```r
install.packages(c("tidyverse", "stargazer", "broom", "knitr"))
```

Press Enter. When it asks `"Do you want to install from sources?"` → Type `y` and press Enter.

Wait 3-5 minutes for installation to complete.

When done, type: `quit()`

**✅ DONE: 23 min total**

---

## 🔴 STEP 5: Render Handout.qmd (5 min)

### Open Terminal

**Windows:** Press `Windows Key + R`, type `cmd`, press Enter

**Mac:** Press `Command + Space`, type `terminal`, press Enter

### Navigate to Your Folder

Copy-paste this (replace YOUR_USERNAME):

**Windows:**
```
cd C:\Users\YOUR_USERNAME\Desktop\regression_presentation
```

**Mac:**
```
cd /Users/YOUR_USERNAME/Desktop/regression_presentation
```

Press Enter.

### Render

Type this and press Enter:
```
quarto render handout.qmd
```

Wait ~15 seconds. When you see "rendering complete", continue.

**Check your folder** - you should now see:
- ✅ handout.pdf (NEW)
- ✅ handout.html (NEW)

**✅ DONE: 28 min total**

---

## 🔴 STEP 6: Render Presentation.qmd (5 min)

In the SAME terminal, type:
```
quarto render presentation.qmd
```

Wait ~15 seconds.

**Check your folder** - you should now see:
- ✅ presentation.pdf (NEW)
- ✅ presentation.html (NEW)

**Your folder now has 8 files:**
```
regression_presentation/
├── handout.qmd
├── handout.pdf          ✅
├── handout.html         ✅
├── presentation.qmd
├── presentation.pdf     ✅
├── presentation.html    ✅
├── references.bib
└── exercise.R
```

**✅ DONE: 33 min total**

---

## 🔴 STEP 7: Create GitHub Repo (2 min)

1. Go to: https://github.com/new
2. Login as: `sohail7853`
3. Fill in:
   - **Repository name**: `regression-presentation`
   - **Visibility**: Click **"Public"**
   - Leave "Add README" **unchecked**
4. Click **"Create repository"**

You now have an empty GitHub repo.

**✅ DONE: 35 min total**

---

## 🔴 STEP 8: Get GitHub Token (2 min)

You need a Personal Access Token to push files.

1. Go to: https://github.com/settings/tokens
2. Click **"Generate new token"** → **"Generate new token (classic)"**
3. Fill in:
   - **Token name**: `my-token`
   - **Expiration**: `90 days`
   - Check: ✓ `repo`
4. Scroll down, click **"Generate token"**
5. **COPY the token** (looks like: `ghp_xxxxxxxxxxxxxxxxxxxx`)
6. **SAVE IT SOMEWHERE** - you'll need it in 2 minutes

**✅ DONE: 37 min total**

---

## 🔴 STEP 9: Push Files to GitHub (5 min)

### In Your Terminal (same one as before)

You should still be in your `regression_presentation` folder. If not:

**Windows:**
```
cd C:\Users\YOUR_USERNAME\Desktop\regression_presentation
```

**Mac:**
```
cd /Users/YOUR_USERNAME/Desktop/regression_presentation
```

### Copy-Paste These Commands (One at a Time)

**Command 1:**
```
git init
```
Press Enter.

**Command 2:**
```
git add .
```
Press Enter.

**Command 3:**
```
git config user.name "Mohammed"
git config user.email "bilalahmedpvt2030@gmail.com"
```
Press Enter.

**Command 4:**
```
git commit -m "Add regression presentation"
```
Press Enter. Wait for output.

**Command 5:**
```
git remote add origin https://github.com/sohail7853/regression-presentation.git
```
Press Enter.

**Command 6:**
```
git branch -M main
```
Press Enter.

**Command 7 (THE FINAL PUSH):**
```
git push -u origin main
```
Press Enter.

### GitHub Will Ask for Username & Password

**Username**: `sohail7853` (type and press Enter)

**Password**: Paste your GitHub token (right-click → Paste, or Ctrl+Shift+V)

**Press Enter**

### You'll See This:

```
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
...
To https://github.com/sohail7853/regression-presentation.git
 * [new branch]      main -> main
```

**✅ FILES NOW ON GITHUB!**

**✅ DONE: 42 min total**

---

## 🔴 STEP 10: Submit to ILIAS (5 min)

1. Go to your course on ILIAS
2. Find assignment: **"Presenting Regression Results Using R"**
3. Click the assignment submission area
4. Upload these 8 files:
   - handout.qmd
   - handout.pdf
   - handout.html
   - presentation.qmd
   - presentation.pdf
   - presentation.html
   - references.bib
   - exercise.R

5. In the comments/description, paste:

```
GitHub Repository: https://github.com/sohail7853/regression-presentation

ASSIGNMENT CHECKLIST:
- [x] The handout contains 3-5 pages of text.
- [x] The submission contains the Quarto file of the handout.
- [x] The submission contains the Quarto file of the presentation.
- [x] The submission contains the HTML file of the handout.
- [x] The submission contains the HTML file of the presentation.
- [x] The submission contains the PDF file of the handout.
- [x] The submission contains the PDF file of the presentation.
- [x] The title page contains personal details (name, email, matriculation).
- [x] The handout contains a bibliography with APA citation style.
- [x] Either the handout or presentation contains R code proving expertise.
- [x] Affidavit is included in the handout.
- [x] GitHub links are provided.
```

6. Click **"Submit"**

You'll see: `Submission received`

**✅ DONE: 47 min total**

---

# 🎉 YOU'RE FINISHED!

## Summary of What You Did

✅ Installed R + Quarto
✅ Rendered PDF + HTML files
✅ Created GitHub repo
✅ Pushed 8 files to GitHub
✅ Submitted to ILIAS

## Verify Everything Works

1. **GitHub Check**: Go to https://github.com/sohail7853/regression-presentation
   - Do you see all 8 files? ✅

2. **ILIAS Check**: Go to your ILIAS submission
   - Do you see "Submission received"? ✅

3. **Your Presentation Online**: https://github.com/sohail7853/regression-presentation/blob/main/presentation.html
   - Click "Raw" to see it in full screen

---

# What's Left?

- ✅ Content: Done
- ✅ Files: Rendered
- ✅ GitHub: Pushed
- ✅ ILIAS: Submitted

**Optional (Before June 16):**
- Read your handout once (5 min)
- Practice presenting once (12 min)
- Relax knowing you're prepared

---

# June 16: Presentation Day

Show up with:
- Your 12-minute presentation ready
- Your student exercise ready
- Confidence that you know your stuff

**Grade Expected**: 1.0-2.0 (Excellent)

---

# TIME BREAKDOWN

- **Step 1-4** (Installation): 23 min
- **Step 5-6** (Rendering): 10 min
- **Step 7-9** (GitHub): 9 min
- **Step 10** (ILIAS): 5 min
- **Total**: ~47 minutes
- **Buffer**: ~73 minutes remaining

You have PLENTY of time. No stress.

---

# TROUBLESHOOTING

| Problem | Solution |
|---------|----------|
| "quarto: command not found" | Close terminal, open new one |
| Packages won't install | Run just one: `install.packages("tidyverse")` |
| Can't find folder | Search your Desktop for `regression_presentation` |
| GitHub push fails | Check your token is correct (copy-paste exactly) |
| ILIAS upload stuck | Try different browser (Chrome instead of Safari) |

---

# YOU GOT THIS! 🚀

Follow these steps exactly as written. No thinking needed. Just copy-paste and press Enter.

**Time: ~47 minutes to complete everything**

**Go!**
