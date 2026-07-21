$root = Split-Path -Parent $PSScriptRoot
$template = Join-Path $root 'Template'
$pdf = Join-Path $template 'build\HW.pdf'

& (Join-Path $PSScriptRoot 'build-template.ps1')
if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}

if (-not (Test-Path -LiteralPath $pdf)) {
    Write-Error 'PDF was not created'
    exit 1
}

Write-Output $pdf
