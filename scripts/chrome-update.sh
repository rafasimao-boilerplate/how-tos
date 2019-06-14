#!/bin/bash

echo 'Getting the latest version '
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb

echo 'extracting package...'
sudo dpkg -i chrome.deb

echo 'installing package...'
sudo apt-get install -f

echo 'cleaning environment...'
rm -rf chrome.deb

echo 'chrome updated!'
