#!/bin/bash

read -p "you must create a firefox profile named 'userjs' to load BetterFox, this will prompt you to do so (PRESS ENTER TO CONTINUE)"
firefox -ProfileManager
profiles=(~/snap/firefox/common/.mozilla/firefox/*.userjs)
userjs=${profiles[0]}
curl -L -o $userjs/user.js https://raw.githubusercontent.com/yokoffing/Betterfox/main/user.js
sed -i '/\/\/ Enter your personal overrides below this line:/{r userjs-overrides.js
d}' $userjs/user.js

read -p "you will want to install the following extensions:
1) uBlock origin
2) Vimium
3) I still don't care about cookies
4) Sponsorblock
5) Firefox Multi-Account containers
6) Easy Container Shortcuts
7) LanguageTool
8) addressable-tabs

you will want to configure the following extensions as follows:
1. uBlock origin - https://github.com/yokoffing/filterlists
2. Firefox Containers (remove the default ones)
3. Sponsorblock - enable skips on every category
4. Vimium - Click on the icon and hit 'allow on all pages'.
5. Change the theme to 'dark' because the gnome-compliant colors are terrible.
6. Sign into any accounts you haven't signed into.

(PRESS ENTER TO CONTINUE)"

