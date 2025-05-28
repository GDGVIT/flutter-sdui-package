# Script to generate Dart files from Protobuf definitions
# This script assumes you've run setup_protoc.ps1 first to install protoc locally

# Ensure our local protoc binary is in the PATH
$protoBinDir = "$PSScriptRoot\..\bin\bin"
if (Test-Path $protoBinDir) {
    $env:PATH = "$protoBinDir;$env:PATH"
} else {
    Write-Host "Local protoc not found. Run setup_protoc.ps1 first to install protoc." -ForegroundColor Yellow
    exit 1
}

# Ensure the output directory exists
New-Item -ItemType Directory -Force -Path "$PSScriptRoot\..\lib\src\generated" -ErrorAction SilentlyContinue | Out-Null

Write-Host "Updating packages..."
dart pub upgrade

Write-Host "Clearing old generated files..."
Remove-Item -Path "$PSScriptRoot\..\lib\src\generated\*" -Force -ErrorAction SilentlyContinue

# Use the local pub cache protoc_plugin
$PROTOC_GEN_DART = "$env:USERPROFILE\AppData\Local\Pub\Cache\bin\protoc-gen-dart.bat"
if (-not (Test-Path $PROTOC_GEN_DART)) {
    Write-Host "Installing protoc_plugin globally..."
    dart pub global activate protoc_plugin
}

# Add the plugin to the PATH
$env:PATH = "$env:PATH;$env:USERPROFILE\AppData\Local\Pub\Cache\bin"

# For debugging
Write-Host "Using protoc version: $(& $protoBinDir\protoc.exe --version)"
Write-Host "Using protoc_plugin from: $PROTOC_GEN_DART"

# Run protoc to generate Dart files with our local binary
Write-Host "Generating Protobuf files..."
& "$protoBinDir\protoc.exe" --dart_out=grpc:lib/src/generated --proto_path=lib/src/protos lib/src/protos/sdui.proto

Write-Host "Protobuf files generated in lib/src/generated/"

# Alternative approach using dart run build_runner
Write-Host "Running build_runner as an alternative approach..."
dart run build_runner build --delete-conflicting-outputs

Write-Output "Protobuf files generated in lib/src/generated/"
