# README

## Overview

This script `run-hota-silicon.sh` automates the process of downloading, installing, and running Heroes of Might and Magic III: Horn of the Abyss (HotA) on macOS with Apple Silicon. 
    It ensures that necessary dependencies like Rosetta and Wineskin are installed before running the game.

## Prerequisites

- macOS with Apple Silicon
- Homebrew installed

## Script Details

### Variables

- `GAME_INSTALLER_DOWNLOAD_URL`: URL to download the HotA installer.
- `GAME_WINE_INSTALLED_PATH`: Path where the game was installed.

### Functions

1. **download_game_installer()**
    - Checks if the game installer is already downloaded.
    - If not, downloads the installer from the specified URL.

2. **install_rosetta()**
    - Checks if Rosetta is already installed.
    - If not, installs Rosetta.

3. **install_wineskin()**
    - Checks if Wineskin is already installed.
    - If not, installs Wineskin using Homebrew.

4. **install_hota()**
    - Checks if the game is already installed.
    - If not, installs the game using Wine.

5. **run_hota()**
    - Navigates to the game installation directory.
    - Runs the HotA launcher using Wine.

### Execution

The script executes the functions in the following order:

1. `download_game_installer`
2. `install_rosetta`
3. `install_wineskin`
4. `install_hota`
5. `run_hota`

## Usage

1. Ensure you have Homebrew installed on your macOS.
2. Save the script as `run-hota-silicon.sh`.
3. Make the script executable:
   ```shell
   chmod +x run-hota-silicon.sh
   ```
4. Run the script:
   ```shell
   ./run-hota-silicon.sh
   ```

## Notes

- Ensure you have a stable internet connection for downloading the installer and dependencies.
- The script assumes the default installation paths for Wine and the game. Adjust the paths if necessary.
