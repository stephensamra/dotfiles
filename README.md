# dotfiles

## Backup checklist

1. Commit/push repos/branches in `~/Code`
1. Save important variables from `~/Code/**/*.env`files
1. Save important files from:
    - Desktop
    - Documents
    - Downloads
    - Movies
    - Music
    - Pictures
    - TV Shows
1. Export important data from local databases
1. Export iTerm2 profile
1. Export Rectangle config
1. Run `brew list` and ensure it's in sync with `Brewfile`
1. Run `npm list --global --depth=0` and make sure it's in sync with `.npm`
1. Run `mackup backup -f`

## New Mac checklist

1. Update macOS to the latest version through system preferences
1. Clone these dotfiles: `git clone git@github.com:stephensamra/dotfiles.git ~/.dotfiles`
1. Run the installation: `~/.dotfiles/install.sh`
1. Restore mackup backups: `mackup restore -f`
1. Restart to finalise the process

### Post install steps

1. System settings:
    - Control Center
        - Menu Bar tweaks
    - Desktop & Dock
        - Click wallpaper to reveal desktop > Only in Stage Manager
        - Default web browser > Brave
        - Prefer tabs > Always
    - Lock Screen
        - Start Screen Saver when inactive > Never
        - Turn display off on battery when inactive > For 10 minutes
        - Turn display off on power adapter when inactive > For 10 minutes
        - Require password after screen saver begins or display is turned off > Immediately
    - Keyboard > Keyboard Shortcuts... > Spotlight > (disable both checkboxes)
    - Trackpad
        - Point & Click
            - Tap to click > (enable)
        - More Gestures
            - Swipe between pages > Off
    - Printers & Scanners > (add home printer)
1. Finder settings:
    - Right click anywhere on desktop > Show View Options... > Sort By > Name
    - Open Finder > Right click anywhere > Show View Options...
        - Always open in icon view > (enable)
        - Browse in icon view > (enable)
        - Group By > Name
        - Sort By: Name
        - Use as Defaults
1. Install/use latest LTS version of node: `nvm install lts/hydrogen`
1. Install global node packages: `npm --global install $(cat .npm | tr '\n' ' ')`
1. Download/install Dank Mono font
1. Download/install [Logi Options+](https://www.logitech.com/en-us/software/logi-options-plus.html)
1. Download/install [Opal](https://opalcamera.com/opal-composer/download)
1. Copy SSH key(s) from 1Password (open 1Password.app and sign-in first)
    ```zsh
    op signin
    op read "op://Personal/personal/private key" > ~/.ssh/id_ed25519
    op read "op://Personal/personal/public key" > ~/.ssh/id_ed25519.pub
    chmod 600 ~/.ssh/id_ed25519
    ```
1. Copy FileBot license from 1Password:
    ```zsh
    mkdir ~/.filebot
    op read "op://Personal/Filebot/license key" > ~/.filebot/license.txt
    ```
1. Brave:
    - Set search engine to Brave Search
    - Navigate to `brave://settings/braveSync` and add this device to the sync chain (remove the old device from the sync chain)
1. Sign-in to CLI apps:
    ```zsh
    gh auth login
    eas login
    stripe login
    ```
1. DBngin: create a MySQL database
1. HELO
    - Activate license
    - Disable link checking
1. Herd
    - Remove `~/Herd` from paths list
    - Set terminal to iTerm2
    - Configure to use `~/Code` directory:
        ```sh
        cd ~/Code
        herd park
        rmdir ~/Herd
        ```
1. iTerm2
    - Appearance:
        - General > Theme > Minimal
        - Dimming > Dim inactive split panes > (disable)
    - Profiles: Import JSON Profiles...
    - Keys: Import
1. Klack
1. Logi+ Options: set up mouse
1. Orbstack
1. Opal
1. Outline Manager: sign-in to DigitalOcean
1. Plex:
    - Sign-in
    - Set up libraries for `~/Movies` & `~/TV Shows`
1. Ray: activate license
1. Raycast: Advanced > Import
1. Rectangle: import config
1. Simplenote: sign-in
1. TablePlus: ...
1. Telegram: sign-in
1. Tinkerwell: activate license
1. Transmission
1. VS Code:
    - Install extensions:
        - ...
1. VLC
