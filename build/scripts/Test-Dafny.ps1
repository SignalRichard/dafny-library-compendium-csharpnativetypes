param(
    [string[]] $InputFiles
)

dafny test $($InputFiles -join ' ')
