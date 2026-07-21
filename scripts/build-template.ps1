$root = Split-Path -Parent $PSScriptRoot
$template = Join-Path $root 'Template'

Push-Location -LiteralPath $template
try {
    latexmk -pdfxe -interaction=nonstopmode -halt-on-error -outdir=build HW.tex
    exit $LASTEXITCODE
} finally {
    Pop-Location
}
