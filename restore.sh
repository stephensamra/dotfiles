#!/bin/sh

HOME_DIR=/Users/stephen
STORAGE_BOX_USER=u387021
STORAGE_BOX_DIR=/home/macbook

/usr/bin/rsync --files-from=$HOME/.dotfiles/backup_include --recursive --progress -az -e 'ssh -p23' $STORAGE_BOX_USER@$STORAGE_BOX_USER.your-storagebox.de:$STORAGE_BOX_DIR $HOME_DIR
