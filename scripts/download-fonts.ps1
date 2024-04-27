# Run PowerShell and then execute the following script:

# Define the URL of the font files
$regularFontUrl = "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf"
$boldFontUrl = "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf"
$italicFontUrl = "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf"
$boldItalicFontUrl = "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf"

# Define the temporary path where the font files will be downloaded
$tempDir = "$env:TEMP\MesloLGS NF"

# Create the temporary directory if not exists
if (!(Test-Path $tempDir)) {
    New-Item -ItemType Directory -Force -Path $tempDir
}

# Download the font files into the temporary directory
Invoke-WebRequest -Uri $regularFontUrl -OutFile "$tempDir\MesloLGS NF Regular.ttf"
Invoke-WebRequest -Uri $boldFontUrl -OutFile "$tempDir\MesloLGS NF Bold.ttf"
Invoke-WebRequest -Uri $italicFontUrl -OutFile "$tempDir\MesloLGS NF Italic.ttf"
Invoke-WebRequest -Uri $boldItalicFontUrl -OutFile "$tempDir\MesloLGS NF Bold Italic.ttf"

# Open the directory in File Explorer
Invoke-Item $tempDir