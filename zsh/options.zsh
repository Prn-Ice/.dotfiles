# Options - `man zshoptions`

setopt promptsubst

#zplugin creinstall %HOME/my_completions  # Handle completions without loading any plugin, see "clist" command

#  Yakuake BLUR
#blur for  yakuake
if [[ $(ps --no-header -p $PPID -o comm) =~ '^yakuake$' ]]; then
        for wid in $(xdotool search --pid $PPID); do
            xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $wid; done
fi
