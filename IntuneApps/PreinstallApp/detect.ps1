$gitInstalled    = [bool](Get-Command git    -ErrorAction SilentlyContinue)

if ($gitInstalled) {
    Write-Host "Detected: git is installed"
    exit 0
}

exit 1