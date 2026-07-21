# AbzumsAI LaTeX Template

I use this repo as the base for homework sheets and class material that need Persian text, math notation, and a ready PDF layout.

## What Is Inside

- `Template/HW.tex` is the main file.
- `Template/questions` keeps each question in its own file.
- `Template/answers` keeps answer hints separate from the main file.
- `Template/commons/course.sty` holds the course commands and page style.
- `Template/fonts` keeps the Persian fonts used by the template.
- `Template/HW.pdf` is the current built PDF.

## Build The PDF

From the repo root:

```bash
cd Template
latexmk -pdfxe -interaction=nonstopmode -halt-on-error HW.tex
```

If `latexmk` is not installed, run XeLaTeX from inside `Template`:

```bash
xelatex -interaction=nonstopmode -halt-on-error HW.tex
```

Run XeLaTeX again if references or page numbers look stale.

## Editing Notes

Add new questions in `Template/questions`, then include them from `Template/HW.tex`. Keep generated build files out of new commits unless the PDF itself needs to be updated.
