param($installPath, $toolsPath, $package, $project)

Write-Output Join-Path $toolsPath "App.config"
$project.AddFromFile(Join-Path $toolsPath "App.config")
