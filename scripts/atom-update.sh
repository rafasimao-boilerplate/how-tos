#!/bin/bash
echo 'Getting the latest version '
wget -q https://github.com/atom/atom/releases/latest -O /tmp/latest

echo 'extracting package...'
wget -q $(awk -F '[<>]' '/href=".*atom-amd64.deb/ {match($0,"href=\"(.*.deb)\"",a); print "https://github.com/" a[1]} ' /tmp/latest) -O /tmp/atom-amd64.deb

echo 'installing package...'
dpkg -i /tmp/atom-amd64.deb

echo 'atom updated!'
