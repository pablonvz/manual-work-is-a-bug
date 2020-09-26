#!/bin/bash
# DERIV: The version installed in the devboxes is 2.3 (05-March-2020)

# upgrade tmux to 2.8
sudo apt install -t stretch-backports tmux

# Check version
tmux -V

# Oh My Tmux! Pretty & versatile tmux configuration
# https://github.com/gpakosz/.tmux
cd

git clone https://github.com/gpakosz/.tmux.git

ln -s -f .tmux/.tmux.conf

cp .tmux/.tmux.conf.local .

