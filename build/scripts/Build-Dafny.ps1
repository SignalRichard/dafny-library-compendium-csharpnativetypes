param(
    [string[]] $InputFiles,
    [string] $OutputFileName
)
dafny build -t:lib $($InputFiles -join ' ') --output $OutputFileName
