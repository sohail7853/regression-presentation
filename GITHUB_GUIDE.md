# GitHub Upload Guide (10 Minutes)

## What You're Uploading

After rendering with Quarto, you'll have these 8 files:

```
regression_presentation/
├── handout.qmd          (Source file)
├── handout.pdf          (For ILIAS) ⬅️ RENDER FIRST
├── handout.html         (For GitHub)
├── presentation.qmd     (Source file)
├── presentation.pdf     (For ILIAS) ⬅️ RENDER FIRST
├── presentation.html    (For GitHub)
├── references.bib       (Bibliography)
└── exercise.R           (Student exercise)
```

---

## Step-by-Step GitHub Setup

### 1. Create GitHub Account (2 min)
- Go to https://github.com/
- Click "Sign up"
- Email: **bilalahmedpvt2030@gmail.com**
- Create password
- Verify email

### 2. Create New Repository (2 min)

After logging in:

1. Click **"+"** icon (top right) → **"New repository"**
2. Fill in:
   - **Repository name**: `regression-presentation`
   - **Description**: "Presenting Regression Results Using R - DADM SS2026"
   - **Visibility**: Choose **"Public"** ⭐ (IMPORTANT)
   - Do NOT initialize with README
3. Click **"Create repository"**

### 3. Upload Files (5 min) - EASIEST METHOD

You're now on your empty repo page. Look for **"Upload files"** button.

1. Click **"Upload files"**
2. Click **"choose your files"** OR drag & drop all 8 files at once
3. Files to upload:
   - ✅ handout.qmd
   - ✅ handout.pdf
   - ✅ handout.html
   - ✅ presentation.qmd
   - ✅ presentation.pdf
   - ✅ presentation.html
   - ✅ references.bib
   - ✅ exercise.R

4. Scroll down to "Commit changes"
   - Message: `Add regression presentation assignment`
5. Click **"Commit changes"**

**DONE!** GitHub now has all your files.

### 4. Get Your GitHub URL (1 min)

Your repo URL is:
```
https://github.com/YOUR_USERNAME/regression-presentation
```

Example:
```
https://github.com/mohammed-asadi/regression-presentation
```

**Copy this URL** - you'll need it for ILIAS.

---

## View Your Presentation Online

Your presentation is now viewable online!

1. Go to your GitHub repo
2. Click on `presentation.html`
3. Click the **"Raw"** button (top right)
4. Copy that URL
5. Share this link: `https://rawcdn.githack.com/USERNAME/regression-presentation/main/presentation.html`
   - Replace USERNAME with your actual username
   - Use this in your presentation!

Same for handout: replace `presentation.html` with `handout.html`

---

## Troubleshooting

**Q: "I can't find the Upload button"**
A: Make sure you:
- Logged into GitHub
- Created the repo (you're on the repo page)
- The repo is empty (no files yet)

**Q: "It says 'These files would overwrite existing files'**
A: You uploaded them twice. That's OK, just refresh the page.

**Q: "I want to update my files later"**
A: Upload again or click each file and edit directly on GitHub.

---

## Next: ILIAS Submission

Once files are on GitHub, go to ILIAS and submit:
- All 8 files (upload or link)
- GitHub URL
- Completed checklist (see ILIAS_CHECKLIST.md)
