function Test-CommandExists {
    param([string]$cmd)
    return [bool](Get-Command $cmd -ErrorAction SilentlyContinue)
}

if ((Test-CommandExists "dotnet") -and 
    (Test-CommandExists "git")) {
    Write-Output "Git and dotnet were installed"
    exit 0
} else {
    exit 1
}