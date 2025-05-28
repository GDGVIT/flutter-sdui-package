# Setup protoc on Windows
Write-Host "Setting up Protocol Buffers compiler (protoc)..."

# Create a temporary directory for downloads
$tempDir = "$env:TEMP\protoc_setup"
New-Item -ItemType Directory -Force -Path $tempDir | Out-Null

# Set the version and download URL for protoc
$protocVersion = "24.4"
$downloadUrl = "https://github.com/protocolbuffers/protobuf/releases/download/v$protocVersion/protoc-$protocVersion-win64.zip"
$zipFile = "$tempDir\protoc.zip"

# Create a directory for the protoc installation
$protoBinDir = "$PSScriptRoot\..\bin"
New-Item -ItemType Directory -Force -Path $protoBinDir | Out-Null

Write-Host "Downloading protoc v$protocVersion..."
Invoke-WebRequest -Uri $downloadUrl -OutFile $zipFile

Write-Host "Extracting protoc..."
Expand-Archive -Path $zipFile -DestinationPath $protoBinDir -Force

Write-Host "Cleaning up..."
Remove-Item -Path $tempDir -Recurse -Force

# Update environment variable for this session
$env:PATH = "$protoBinDir\bin;$env:PATH"

Write-Host "protoc has been installed to $protoBinDir\bin"
Write-Host "protoc version: $(& $protoBinDir\bin\protoc.exe --version)"
Write-Host "Please add this directory to your PATH environment variable for future sessions."
Write-Host "To use protoc in this terminal session, it's already added to PATH."
