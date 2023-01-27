# dotfiles

## Backing up data

When migrating from an existing Mac, make sure to backup all of your existing data. Go through the checklist below to make sure you don't forget anything before you migrate.

- Commit and push all local repos/branches
- Save important variables from local `.env` files
- Save all important documents from:
    - Desktop
	- Documents
	- Downloads
	- Movies
	- Music
	- Pictures
	- TV Shows
- Export important data from local databases
- Run `brew list` and ensure it's in sync with `Brewfile`
- Run `npm list --global --depth=0` and ensure it's in sync with `npm-global.txt`
- Run `mackup backup`

## Setting up a fresh Mac

After backing up your old Mac you may now follow these install instructions to setup a new one.

1. Update macOS to the latest version through system preferences
1. Clone this repo:

    ```zsh
    git clone git@github.com:stephensamra/dotfiles.git ~/.dotfiles
    ```

1. Run the installation with:

    ```zsh
    ~/.dotfiles/install.sh
    ```

1. After mackup is synced with iCloud, run:

    ```zsh
    mackup restore
    ```
1. Restart computer to finalise the process

### Post install steps
- Download private & public SSH keys from 1Password and save them to `~/.ssh`
- Install/use the latest LTS version of node/npm, e.g.:

    ```zsh
    nvm install lts/hydrogen
    ```

- Install global npm packages:

    ```zsh
    npm --global install $(cat npm-global.txt | tr '\n' ' ')
    ```

- Run `eas login`
- Download/install Dank Mono font
- Install Logitech Options
- Install Outline
- Install Opal
