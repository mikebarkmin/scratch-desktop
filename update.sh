#!/bin/bash
desktop=$PWD
git fetch original
git merge original/develop
rm -rf /tmp/scratch-desktop
git clone https://github.com/LLK/scratch-gui /tmp/scratch-gui
cd /tmp/scratch-gui
git checkout scratch-desktop
npm install
npm link
cd $desktop
npm install
npm link scratch-gui
npm run fetch
npm run dist
