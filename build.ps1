$ErrorActionPreference = "Stop"

$extensionName = "Kraken AD&D Character Sheets.ext"
$sourcePath = $PSScriptRoot
$workspacePath = Split-Path -Parent $sourcePath
$packagePath = Join-Path $workspacePath $extensionName
$installPath = Join-Path $env:APPDATA "SmiteWorks\Fantasy Grounds\extensions\$extensionName"

foreach ($xmlPath in @(
	(Join-Path $sourcePath "extension.xml"),
	(Join-Path $sourcePath "campaign\record_char.xml")
)) {
	[xml](Get-Content -LiteralPath $xmlPath -Raw) | Out-Null
}

if (Test-Path -LiteralPath $packagePath) {
	Remove-Item -LiteralPath $packagePath -Force
}

Compress-Archive -Path (Join-Path $sourcePath "*") -DestinationPath $packagePath -CompressionLevel Optimal
Copy-Item -LiteralPath $packagePath -Destination $installPath -Force

Write-Host "Built:     $packagePath"
Write-Host "Installed: $installPath"
