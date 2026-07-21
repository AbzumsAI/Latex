# Build flow

The template is made for XeLaTeX.

From the repo root, run:

```powershell
scripts\build-template.ps1
```

From inside `Template`, run:

```powershell
latexmk -pdfxe -interaction=nonstopmode -halt-on-error -outdir=build HW.tex
```

I keep temporary files in `build` so source folders stay readable.
