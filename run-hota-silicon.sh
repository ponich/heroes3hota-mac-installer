#!/usr/bin/env bash

GAME_INSTALLER_DOWNLOAD_URL="https://heroes3towns.com/HotA/HotA_1.7.2_full_setup.exe"
GAME_WINE_INSTALLED_PATH="$HOME/.wine/drive_c/Games/Heroes3_HotA/"

download_game_installer() {
    if [ -f ./downloads/full_setup.exe ]; then
        echo "File already downloaded."
    else
        curl -o ./downloads/full_setup.exe \
             $GAME_INSTALLER_DOWNLOAD_URL
    fi
}


install_rosetta(){
  if /usr/bin/pgrep oahd >/dev/null 2>&1; then
    echo "Rosetta is already installed."
  else
    softwareupdate --install-rosetta --agree-to-license
  fi
}

install_wineskin() {
    if brew list --cask | grep -q wineskin; then
        echo "Wineskin is already installed."
    else
        brew install --cask --no-quarantine wine@staging
    fi
}

install_hota(){
  if [ -d $GAME_WINE_INSTALLED_PATH ]; then
    echo "Game is already installed."
  else
    wine ./downloads/full_setup.exe
  fi
}


run_hota(){
   cd $GAME_WINE_INSTALLED_PATH
   wine HotA_launcher.exe
}



download_game_installer
install_rosetta
install_wineskin
install_hota
run_hota



