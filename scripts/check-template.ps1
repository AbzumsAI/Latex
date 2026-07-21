$root = Split-Path -Parent $PSScriptRoot
$needed = @(
    'Template\HW.tex',
    'Template\commons\course.sty',
    'Template\commons\AbzumsAI.png',
    'Template\questions',
    'Template\answers',
    'Template\fonts'
)

$missing = foreach ($path in $needed) {
    $fullPath = Join-Path $root $path
    if (-not (Test-Path -LiteralPath $fullPath)) {
        $path
    }
}

if ($missing.Count -gt 0) {
    Write-Error "Missing template paths: $($missing -join ', ')"
    exit 1
}

$sourceFiles = Get-ChildItem -LiteralPath (Join-Path $root 'Template') -Recurse -File |
    Where-Object {
        $_.Extension -in @('.tex', '.sty') -and
        $_.FullName -notlike '*\build\*'
    }

$badOption = $sourceFiles | Select-String -Pattern 'localise=on'
$badSpace = $sourceFiles | Select-String -Pattern '\\vspace\{[0-9]+\}'

if ($badOption -or $badSpace) {
    $badOption
    $badSpace
    exit 1
}

Write-Output 'Template checks passed'
