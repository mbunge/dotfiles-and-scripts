#!/usr/bin/env bash

pkgProvFile="packageInstaller.prov"

touch $pkgProvFile;

echo "" > $pkgProvFile;

for pkg in `brew list`; do
    echo "brew info $pkg" >> $pkgProvFile
done

for pkg in `brew cask list`; do
    echo "brew cask info $pkg" >> $pkgProvFile
done

for pkg in `npm list -g --depth=0`; do
    name=$pkg | tr -d -c '[a-z]';
#    echo "npm install " >> $pkgProvFile
    echo $name
done
