param(
    [Parameter(Mandatory = $true)]
    [string] $InstallPath
)

$OSArch = "ubuntu"
if($env:OS -match "Windows") {
    $OSArch = "windows"
}

$LatestRelease = Invoke-RestMethod -Uri 'https://api.github.com/repos/dafny-lang/dafny/releases/latest' -Method 'Get'
$Url = ($LatestRelease.assets | Where-Object { $_.name -match "$OSArch" } | Select-Object -First 1).browser_download_url
$InstallFilePath = (Join-Path -Path $InstallPath -ChildPath "dafny.zip")
Invoke-WebRequest -Uri $Url -OutFile $InstallFilePath
Expand-Archive -Path $InstallFilePath -DestinationPath $InstallPath

Write-Output (Join-Path -Path $InstallPath -ChildPath "dafny") >> $env:GITHUB_PATH
