# Film-Scan-Converter (FSC): MS Windows PowerShell script for using it inside ART 
# Directory version

# Python interpreter to use
# WARNING: This Windows script requires to escape backslashes of the path!!! 
# For example:
# $PYTHON = "C:\\Users\\ProfileName\\AppData\\Local\\venv_FSC\\Scripts\\python.exe"

# Set here your path to python.exe. Please uncomment this line afer setting the correct path!
# $PYTHON = "C:\\Set\\Here\\Your\\Path\\To\\python.exe"

# *Directory* where Film-Scan-Converter is located
# WARNING: This Windows script requires to escape backslashes of the path!!!
# For example:
# $FSC_DIR = "C:\\Users\\ProfileName\\AppData\\Local\\Film-Scan-Converter"

# Set here your path to Film-Scan-Converter. Please uncomment this line afer setting the correct path!
# $FSC_DIR = "Set\\Here\\Your\\Path\\To\\Film-Scan-Converter"

# First argument supplied to the script
$Directory = $args[0]

# Output directory
$OutputDirectory = Join-Path $Directory "\converted"

# Start Film Scan Converter in the background
Start-Process `
    -FilePath $PYTHON `
    -ArgumentList @(
        "`"$FSC_DIR\\source\\Film Scan Converter.pyw`"",
        "-d",
        "`"$Directory`"",
        "-o",
        "`"$OutputDirectory`""
    )
