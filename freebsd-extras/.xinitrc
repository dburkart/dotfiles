# install misc/qt5ct to configure qt5 themes
export QT_QPA_PLATFORMTHEME="qt5ct"

# load .Xresources configuration
xrdb -merge .Xresources

# set the background image (requires graphics/feh)
feh --bg-fill /home/dburkart/Pictures/Day_at_Camp.png &

# I use x11/rxvt-unicode for my terminal emulator - you can run a server
# process to conserve resources.
urxvtd -q -f -o

# install sysutils/dunst for lightweight OSD notifications
dunst &

# I use security/keychain for persistent ssh/gpg agent between logins
export SSH_ASKPASS=/usr/local/bin/ssh-askpass
eval `keychain --quiet --eval --agents ssh,gpg id_ed25519 id_rsa me@example.com`

# start your window manager here
exec i3
