#!/bin/bash

echo "INSTALLING"
echo "=========="

gem install bundler
echo "Bundler Installation Complete"

echo "About to install coreutils. Press CTRL-C NOW to abort"
brew install coreutils
echo "coreutils installation complete"

bundle install
echo "All Gems Installed"

