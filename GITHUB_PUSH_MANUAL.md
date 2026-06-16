# Push to GitHub - Manual Steps (5 min)

## Your GitHub Username: `sohail7853`

---

## STEP 1: Create GitHub Repository (2 min)

1. Open: https://github.com/new
2. Fill in:
   - **Repository name**: `regression-presentation`
   - **Description**: `Presenting Regression Results Using R`
   - **Visibility**: Click **"Public"**
   - Leave "Add a README file" **unchecked**
3. Click **"Create repository"**

You now have an empty repo on GitHub.

---

## STEP 2: Push Files Using Git (3 min)

### Open Terminal/Command Prompt

**Windows:**
1. Press `Windows Key + R`
2. Type: `cmd`
3. Press Enter

**Mac:**
1. Press `Command + Space`
2. Type: `terminal`
3. Press Enter

**Linux:**
1. Right-click desktop → "Open Terminal"

---

### Navigate to Your Files

Find your folder with the files:

**Windows:**
```
cd C:\Users\[YOUR_USERNAME]\Desktop\regression_presentation
```

**Mac:**
```
cd /Users/[YOUR_USERNAME]/Desktop/regression_presentation
```

Press Enter.

---

### Run These Commands (Copy & Paste Each Line)

**Command 1: Initialize Git**
```
git init
```

Press Enter.

**Command 2: Add All Files**
```
git add .
```

Press Enter.

**Command 3: Configure Git**
```
git config user.name "Mohammed"
git config user.email "bilalahmedpvt2030@gmail.com"
```

Press Enter.

**Command 4: Create Commit**
```
git commit -m "Add regression presentation assignment"
```

Press Enter. Wait for output.

**Command 5: Add GitHub Remote**
```
git remote add origin https://github.com/sohail7853/regression-presentation.git
```

Press Enter.

**Command 6: Set Main Branch**
```
git branch -M main
```

Press Enter.

**Command 7: Push to GitHub**
```
git push -u origin main
```

Press Enter.

---

## When Prompted for Password

GitHub will ask:
```
Username for 'https://github.com': sohail7853
Password for 'https://sohail7853@github.com':
```

**For the password field:**

You CANNOT use your regular GitHub password. You need a **Personal Access Token**.

### Get Personal Access Token (1 min)

1. Go to: https://github.com/settings/tokens
2. Click **"Generate new token"** → **"Generate new token (classic)"**
3. Fill in:
   - **Token name**: `my-token`
   - **Expiration**: Select `90 days`
   - **Scopes**: Check these boxes:
     - ✓ `repo` (Full control of private repositories)
4. Click **"Generate token"**
5. **COPY the token** (it looks like: `ghp_xxxxxxxxxxxx`)
6. Paste it into the password field (right-click to paste)

---

## You'll See This When Done

```
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (7/7), done.
Writing objects: 100% (8/8), 125.5 KiB | 1.25 MiB/s, done.
Total 8 (delta 0), reused 0 (delta 0), pack-reused 0

To https://github.com/sohail7853/regression-presentation.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.
```

**✅ SUCCESS! Files are on GitHub**

---

## Verify on GitHub

1. Go to: https://github.com/sohail7853/regression-presentation
2. You should see all 8 files:
   - handout.qmd
   - handout.pdf
   - handout.html
   - presentation.qmd
   - presentation.pdf
   - presentation.html
   - references.bib
   - exercise.R

---

## Done!

Your GitHub URL is:
```
https://github.com/sohail7853/regression-presentation
```

Now submit this to ILIAS.
