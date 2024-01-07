# Configurable variables
$ROOT_DIR = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Definition)
$SRC_DIR = "$ROOT_DIR\src"
$VENV_DIR = "$ROOT_DIR\venv"
$REQUIREMENTS_PATH = "$SRC_DIR\requirements.txt"

# Capture the original working directory
$OriginalDir = Get-Location

# Function to find Python executable
function Find-Python {
    $pythonExes = @("py", "python", "python3")
    foreach ($exe in $pythonExes) {
        $pythonPath = Get-Command -Name $exe -ErrorAction SilentlyContinue
        if ($pythonPath) {
            return $pythonPath.Path
        }
    }
    Write-Error "Python is not installed. Please install Python."
    exit 1
}

# Function to create and activate virtual environment
function Setup-Venv {
    Write-Host "Setting up virtual environment..."
    if (-not (Test-Path $VENV_DIR)) {
        Write-Host "Creating virtual environment at $VENV_DIR..."
        & $PYTHON_CMD -m venv "$VENV_DIR"
    } else {
        Write-Host "Virtual environment already exists at $VENV_DIR."
    }

    Write-Host "Activating virtual environment..."
    & "$VENV_DIR\Scripts\Activate.ps1"
}

# Function to install requirements
function Install-Requirements {
    Write-Host "Preparing to install requirements..."
    if (-not (Test-Path $REQUIREMENTS_PATH)) {
        Write-Error "Error: requirements.txt not found at $REQUIREMENTS_PATH."
        exit 1
    }

    Write-Host "Installing requirements from $REQUIREMENTS_PATH..."
    & pip install -r "$REQUIREMENTS_PATH"
}

# Function to start MkDocs server
function Start-MkDocs {
    Write-Host "Preparing to start MkDocs server..."
    if (-not (Test-Path "$SRC_DIR\mkdocs.yml")) {
        Write-Error "Error: mkdocs.yml not found in $SRC_DIR. Are you in the right directory?"
        exit 1
    }

    Write-Host "Starting MkDocs server from $SRC_DIR..."
    & mkdocs serve
}

# Main script execution
function Main {
    Write-Host "Starting main script execution..."
    Set-Location $SRC_DIR -ErrorAction Stop

    $PYTHON_CMD = Find-Python
    Setup-Venv
    Install-Requirements
    Start-MkDocs

    # Return to the original directory
    Set-Location $OriginalDir
}

Main
