#!/bin/bash

pip install --user powerline-status

git clone https://github.com/powerline/fonts.git
/bin/bash fonts/install.sh
rm -rf fonts
