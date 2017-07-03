
# /etc/X11/xinit/xinitrc.d/30-dbus     
#!/bin/bash
 # launches a session dbus instance
 if [ -z "$DBUS_SESSION_BUS_ADDRESS" ] && type dbus-launch >/dev/null; then
   eval $(dbus-launch --sh-syntax --exit-with-session)
 fi

# gets me desktop icons in thunar, right scaling, etc
gnome-settings-daemon

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
