#!/bin/sh

HOME_DIR=/Users/stephen
STORAGE_BOX_USER=u387021
STORAGE_BOX_DIR=/home/macbook

/usr/bin/rsync --files-from=$HOME_DIR/.dotfiles/backup_include --exclude-from=$HOME_DIR/.dotfiles/backup_ignore --recursive --delete --progress -az -e 'ssh -p23' $HOME_DIR $STORAGE_BOX_USER@$STORAGE_BOX_USER.your-storagebox.de:$STORAGE_BOX_DIR
