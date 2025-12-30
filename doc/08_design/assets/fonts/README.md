# Fonts

These are fonts used at Protopipe.

## Install

You cann install those fonts locally by:

1. creating Folders: 
    ```bash
    mkdir -p ~/.local/share/fonts/{polentical,helvetica}
    ```
1. copying `.ttf`s into thath folder:
    ```bash
    cp Helvetica-Neue-Font/Helvetica\ Neue\ Medium\ Extended/Helvetica\ Neue\ Medium\ Extended.ttf ~/.local/share/fonts/helvetica
    cp polentical_neon/Polentical\ Neon\ Bold.ttf ~/.local/share/fonts/polentical
    ```
1. refreshing cache:
    ```bash
    fc-cache -fv
    ```
1. checking if they are loaded:
    ```bash
    fc-list | grep -e "helvetica\|polentical"
    ```
