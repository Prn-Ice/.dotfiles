## Plugins for zplugin

zplugin load zdharma/history-search-multi-word

zplugin ice compile"*.lzui" from"notabug"
zplugin load zdharma/zui

zplugin light zdharma/zplugin-crasis

# Binary release in archive, from Github-releases page; after automatic unpacking it provides program "fzf"

zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin

# One other binary release, it needs renaming from `docker-compose-Linux-x86_64`.
# This is done by ice-mod `mv'{from} -> {to}'. There are multiple packages per
# single version, for OS X, Linux and Windows – so ice-mod `bpick' is used to
# select Linux package – in this case this is not needed, Zplugin will grep
# operating system name and architecture automatically when there's no `bpick'

zplugin ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"; zplugin load docker/compose

# Vim repository on Github – a typical source code that needs compilation – Zplugin
# can manage it for you if you like, run `./configure` and other `make`, etc. stuff.
# Ice-mod `pick` selects a binary program to add to $PATH.

zplugin ice as"program" atclone"rm -f src/auto/config.cache; ./configure" atpull"%atclone" make pick"src/vim"
zplugin light vim/vim

# Scripts that are built at install (there's single default make target, "install",
# and it constructs scripts by `cat'ing a few files). The make"" ice could also be:
# `make"install PREFIX=$ZPFX"`, if "install" wouldn't be the only, default target

zplugin ice as"program" pick"$ZPFX/bin/git-*" make"PREFIX=$ZPFX"
zplugin light tj/git-extras

# Two regular plugins loaded in default way (no `zplugin ice ...` modifiers)

zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting

# Load the pure theme, with zsh-async library that's bundled with it
zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure

# This one to be ran just once, in interactive session

# OMZ Plugins

# Load OMZ Git library
zplugin snippet OMZ::lib/git.zsh

# Load Git plugin from OMZ
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin cdclear -q # <- forget completions provided up to this moment

zplugin snippet OMZ::lib/history.zsh

zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh

# zplugin snippet djui/alias-tips

# Toggle with ^X^L
zplugin light Valiev/almostontop

# https://github.com/hlissner/zsh-autopair for usage
zplugin light hlissner/zsh-autopair

# search history via substring
# zplugin load zsh-users/zsh-history-substring-search 

zplugin ice from"gh" wait"1" silent pick"zsh-history-substring-search.plugin.zsh" lucid
zplugin light zsh-users/zsh-history-substring-search

# file colors on ls
zplugin ice atclone"dircolors -b LS_COLORS > clrs.zsh" atpull'%atclone' pick"clrs.zsh" nocompile'!'
zplugin light trapd00r/LS_COLORS
