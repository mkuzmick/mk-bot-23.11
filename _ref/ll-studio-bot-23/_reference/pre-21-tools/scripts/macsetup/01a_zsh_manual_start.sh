#!/bin/sh

# after connecting to internet and while downloading mac apps
# install homebrew
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install git
brew install git

# install atom too
brew cask install atom

# make a Development directory & clone thescripts
cd ~
mkdir Development
cd Development
echo "cloning the tools"
git clone https://github.com/mkuzmick/the-tools.git

# handle .bash_profile
ZSHRC_PATH=~/.zshrc
cd ~/Development/the-tools/tools/scripts/ex
SCRIPTS_DIR=$(pwd)
echo "export PATH=/usr/local/bin:${SCRIPTS_DIR}:\$PATH" >> $ZSHRC_PATH
echo "PROMPT='%2~ %# '" >> $ZSHRC_PATH

# install node and then dependencies for theTools
brew install node
cd ~/Development/the-tools
npm install


# run all the other scripts
cd ~/Development/the-tools/tools/scripts/macsetup

# main packages from homebrew--go in and use comments
# to include or exclude apps
./02_mainbrew.sh

# fine tuning with comments essential for preferences
# run after FCPX and other mac app store apps installed
./03_preferences.sh

# there are a LOT here--don't install when there isn't enough
# memory to handle all of these in apps that display font previews
./04_fonts.sh

# extras
./05_atom.sh

#npm packages
./06_npm.sh

echo 'left fonts out this time'
echo 'enter the following line if you want them'
echo './04_fonts.sh'

# atom packages
# ./07_extras.sh

# todo:
# change power-saving prefs to shut down after X hours or never
# set boolean for turn off on display off
# set screensaver prefs
