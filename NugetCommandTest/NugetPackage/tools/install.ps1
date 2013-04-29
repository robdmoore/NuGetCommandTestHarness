param($installPath, $toolsPath, $package, $project)

$packagePath = Join-Path $toolsPath ".."
$contentPath = Join-Path $packagePath "content"
$projectPath = Split-Path -Parent $project.FullName

$toolAppConfig = Join-Path $contentPath "App.config"
$projAppConfig = Join-Path $projectPath "App.config"

Copy-Item $toolAppConfig $projAppConfig
$project.ProjectItems.AddFromFile($projAppConfig)
