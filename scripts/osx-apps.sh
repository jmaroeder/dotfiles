#!/usr/bin/env bash
set -e

###########
# Dev Tools
###########

brew install \
    autoconf \
    automake \
    coreutils \
    direnv \
    gettext \
    gnupg \
    libffi \
    libtool \
    libxml2 \
    libxslt \
    libyaml \
    openssl \
    postgresql \
    readline \
    sqlite3 \
    trash \
    unixodbc \
    xz \
    zlib

sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install

sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /


#####
# git
#####
git config --global user.name "James Roeder"
git config --global user.email "jmaroeder@gmail.com"
git config --global core.excludesfile "$HOME/.gitignore"
git config --global credential.helper "osxkeychain"


######
# asdf
######
brew install \
    asdf

if [[ ! `asdf plugin-list` == *"python"* ]]; then
    asdf plugin-add python
fi
asdf install python 3.7.4

if [[ ! `asdf plugin-list` == *"ruby"* ]]; then
    asdf plugin-add ruby
fi
asdf install ruby 2.6.4

# if [[ ! `asdf plugin-list` == *"nodejs"* ]]; then
#     asdf plugin-add nodejs
# fi
# bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
# asdf install nodejs 10.16.3


############
# Fish shell
############
brew install \
    fish

echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

curl -sLo ~/.config/fish/completions/docker.fish --create-dirs
https://raw.githubusercontent.com/docker/cli/master/contrib/completion/fish/docker.fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

fish -c fisher add brgmnn/fish-docker-compose
fish -c fisher add jethrokuan/z
fish -c fisher add kobanyan/bullet-train-fish-theme



######
# Apps
######
brew cask install \
    docker \
    dropbox \
    google-chrome \
    slack


####################
# Visual Studio Code
####################
brew cask install \
    visual-studio-code

code --install-extension k--kato.intellij-idea-keybindings
code --install-extension ms-python.python
code --install-extension peterjausovec.vscode-docker
code --install-extension rebornix.ruby
code --install-extension redhat.vscode-yaml
code --install-extension robertohuertasm.vscode-icons
code --install-extension skyapps.fish-vscode
code --install-extension wholroyd.jinja


cat <<EOF > ~/Library/Application\ Support/Code/User/settings.json
{
    "editor.fontSize": 14,
    "editor.wordWrap": "on",
    "editor.fontFamily": "'Inconsolata Nerd Font Mono', Menlo, Monaco, 'Courier New', monospace",
    "editor.dragAndDrop": false,
    "editor.rulers": [
        80,
        120
    ],
    "editor.smoothScrolling": true,
    "editor.minimap.showSlider": "always",
    "files.insertFinalNewline": true,
    "files.trimFinalNewlines": true,
    "files.trimTrailingWhitespace": true,
    "workbench.iconTheme": "vscode-icons",
    "workbench.statusBar.feedback.visible": false,
    "workbench.tips.enabled": false,
    "workbench.editor.highlightModifiedTabs": true,
    "window.nativeTabs": true,
    "window.restoreWindows": "all",
    "window.titleBarStyle": "native",
    "window.newWindowDimensions": "inherit",
    "window.openFoldersInNewWindow": "on",
    "explorer.openEditors.visible": 0,
    "explorer.sortOrder": "mixed",
    "telemetry.enableCrashReporter": false,
    "telemetry.enableTelemetry": false,
    "workbench.startupEditor": "newUntitledFile",
    "[markdown]": {},
    "editor.lineHeight": 19,
    "markdown.preview.fontSize": 16,
    "explorer.confirmDelete": false
}
EOF
