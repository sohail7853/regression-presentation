# Extension Upload Guide

This file documents the manual steps required to complete the apaquarto extension setup.
The `_extension.yml` file has already been added to the repository.
The remaining 44 files (Lua filters, LaTeX templates, CSS/SCSS, HTML partials, CSL, and binary files)
need to be uploaded by following the steps below.

---

## Step 1: Download the official apaquarto release ZIP

Download the full apaquarto source code as a ZIP file from the official GitHub release:

**Direct download link:**
https://github.com/wjschne/apaquarto/archive/refs/heads/main.zip

Save it somewhere on your computer (e.g. your Downloads folder).

---

## Step 2: Extract the ZIP

Extract the ZIP. You will get a folder called:
```
apaquarto-main/
```

Inside it, navigate to:
```
apaquarto-main/_extensions/apaquarto/
```

This folder contains all the files the extension needs.

---

## Step 3: Rename the folder for your repo structure

The files need to go into `_extensions/wjschne/apaquarto/` in your repo.

Do NOT rename anything inside the folder — just know that the upload destination is:
```
regression-presentation/_extensions/wjschne/apaquarto/
```

---

## Step 4: Upload via GitHub web interface

1. Go to: https://github.com/sohail7853/regression-presentation/tree/main/_extensions/wjschne/apaquarto
2. Click **Add file** → **Upload files**
3. Open the extracted folder: `apaquarto-main/_extensions/apaquarto/`
4. Select ALL files inside that folder (Ctrl+A or Cmd+A)
   - Do NOT select the `typst/` subfolder yet — GitHub requires subfolders separately
5. Drag and drop the selected files into the GitHub upload area
6. Set commit message: `feat: add apaquarto extension files (Lua, LaTeX, CSS, CSL)`
7. Click **Commit changes**

---

## Step 5: Upload the typst subfolder files

1. Go back to: https://github.com/sohail7853/regression-presentation/tree/main/_extensions/wjschne/apaquarto
2. Click **Add file** → **Upload files**
   - This time, you need to upload into the `typst/` subfolder
   - GitHub does NOT allow direct subfolder uploads via drag-and-drop
   - Instead, use the **"Create new file"** method for each of the 3 typst files:
     - `_extensions/wjschne/apaquarto/typst/formattypst.lua`
     - `_extensions/wjschne/apaquarto/typst/typst-show.typ`
     - `_extensions/wjschne/apaquarto/typst/typst-template.typ`
   - Copy-paste each file's content from:
     https://github.com/wjschne/apaquarto/tree/main/_extensions/apaquarto/typst

---

## Step 6: Add apa.csl to the repo root

The `apa.csl` file is included inside the extension folder (already uploaded in Step 4).
However, `handout.qmd` also references `csl: apa.csl` at the root level.

Copy `apa.csl` from the extracted folder into the repo root:

1. Go to: https://github.com/sohail7853/regression-presentation/tree/main
2. Click **Add file** → **Upload files**
3. Upload JUST the `apa.csl` file from `apaquarto-main/_extensions/apaquarto/apa.csl`
4. Set commit message: `feat: add apa.csl to repo root for handout.qmd`

---

## Files already committed to this repo

| File | Status |
|------|--------|
| `_extensions/wjschne/apaquarto/_extension.yml` | Done |
| `_quarto.yml` | Done |
| `.gitignore` | Done |

## Files to upload (from the ZIP)

All files from `apaquarto-main/_extensions/apaquarto/` except `_extension.yml`:

| File | Type |
|------|------|
| `apa.csl` | CSL citation style |
| `apa.css` | HTML stylesheet |
| `apa.scss` | SCSS stylesheet |
| `ORCID-iD_icon-vector.svg` | SVG icon |
| `apaquarto.docx` | Word reference doc (binary) |
| `apaquarto.md` | Extension docs |
| `title-block.html` | HTML partial |
| `apatemplate.tex` | LaTeX template |
| `doc-class.tex` | LaTeX partial |
| `header.tex` | LaTeX partial |
| `title.tex` | LaTeX partial |
| `apaafternote.lua` | Lua filter |
| `apaandcite.lua` | Lua filter |
| `apaappendixlatex.lua` | Lua filter |
| `apacaption.lua` | Lua filter |
| `apaciteappendix.lua` | Lua filter |
| `apaextractfigure.lua` | Lua filter |
| `apafgtb.lua` | Lua filter |
| `apafigtblappendix.lua` | Lua filter |
| `apafigurewidthlatex.lua` | Lua filter |
| `apafloat.lua` | Lua filter |
| `apafloatlatex.lua` | Lua filter |
| `apafloatstoend.lua` | Lua filter |
| `apaheader.lua` | Lua filter |
| `apalanguage.lua` | Lua filter |
| `apamasked.lua` | Lua filter |
| `apanote.lua` | Lua filter |
| `apanotelatex.lua` | Lua filter |
| `apaomitrefsdiv.lua` | Lua filter |
| `apaoneauthoraffiliation.lua` | Lua filter |
| `apaquote.lua` | Lua filter |
| `apastriptitle.lua` | Lua filter |
| `apatwocolumnlatex.lua` | Lua filter |
| `citeprocr.lua` | Lua filter |
| `crossrefprefix.lua` | Lua filter |
| `deleteleftover.lua` | Lua filter |
| `docxlinenumber.lua` | Lua filter |
| `docxstyler.lua` | Lua filter |
| `frontmatter.lua` | Lua filter |
| `journalmode.lua` | Lua filter |
| `latexnoindent.lua` | Lua filter |
| `markdowntable.lua` | Lua filter |
| `styles.css` | HTML stylesheet |
| `utilsapa.lua` | Lua utility |
| `wordcount.lua` | Lua filter |
| `typst/formattypst.lua` | Typst filter |
| `typst/typst-show.typ` | Typst template |
| `typst/typst-template.typ` | Typst template |

**Also upload to repo root:**
| File | Source |
|------|--------|
| `apa.csl` | Copy from `apaquarto-main/_extensions/apaquarto/apa.csl` |

---

## Verification: After uploading, run this command

```bash
quarto check
quarto render handout.qmd
```

If all files are in place, it will render successfully without needing `quarto add wjschne/apaquarto`.

---

*This file can be deleted from the repo once the extension files have been successfully uploaded.*
