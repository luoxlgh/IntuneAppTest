$env:Path = @(
    [Environment]::GetEnvironmentVariable('Path', 'Machine')
    [Environment]::GetEnvironmentVariable('Path', 'User')
) -join ';'

$dotnet = Get-Command dotnet.exe -CommandType Application -ErrorAction SilentlyContinue
$git = Get-Command git.exe -CommandType Application -ErrorAction SilentlyContinue

if (-not $dotnet -or -not $git) {
    exit 1
}

Write-Output 'Detected: dotnet and git'
exit 0