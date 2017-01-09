#!/usr/bin/env bash
cd ~ 
if [ $(readlink .bashrc) ]; then echo 'copy bash...' && cp $(readlink .bashrc) .b && mv .b .bashrc; fi
echo 'install nvm:latest...' && curl -so- https://raw.githubusercontent.com/creationix/nvm/$(curl -s https://api.github.com/repos/creationix/nvm/releases/latest | jq -r '.name')/install.sh | bash
echo 'install nodejs:latest...' && . ~/.nvm/nvm.sh && nvm install node && nvm alias default node
echo 'Node:' && node -v && echo 'Npm:' && npm -v