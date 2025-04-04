# Run PyInstaller with the provided spec file
pyinstaller --clean --noconfirm pyinstaller_bootstrapper.spec

# Define paths
$distFolder = "dist"
$exeName = "NemoLibraryUI.exe"
$zipName = "NemoLibraryUI.zip"

# Change to the dist folder
Set-Location $distFolder

# Compress the .exe file into a .zip archive
Compress-Archive -Path $exeName -DestinationPath $zipName

# Remove the .exe file after zipping
Remove-Item $exeName

# Return to the original directory
Set-Location ..
