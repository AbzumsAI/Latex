$root = Split-Path -Parent $PSScriptRoot
$template = Join-Path $root 'Template'

Get-ChildItem -LiteralPath $template -Recurse -File |
    Where-Object { $_.FullName -notlike '*\build\*' } |
    ForEach-Object {
        [pscustomobject]@{
            File = $_.FullName.Substring($root.Length + 1)
            Size = $_.Length
        }
    } |
    Sort-Object File
