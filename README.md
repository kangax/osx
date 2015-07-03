## Setting up new laptop

1. Install XCode command line tools (https://developer.apple.com/downloads/, Sign In required)
1. Run install.sh (see below)
1. Run installers that need to be finished separately (uTorrent, Hearthstone, etc.)
1. Run OSX customization file (aka Mathias .osx, see below)
1. Update OS X and apps (through App Store)
1. Map Caps to Ctrl in keyboard settings (since this is apparently quite difficult to do programmatically http://apple.stackexchange.com/questions/13598/updating-modifier-key-mappings-through-defaults-command-tool)
1. Add translit as an input source in System Prefs (+ map it to Alt+Cmd+Space)
1. Set Quicksilver triggers
1. Install Fleep & YoruFukurou through App Store (since there's no casks for them... yet)


## install.sh

This is the main script that installs 90%+ of things required to get a "working" OS X. It's meant to be run as part of a fresh install on a new laptop.

In a nutshell, it does this:

- Installs all the brews that I use (git, zsh, cairo, node, postgresql, etc.)
- Installs all the applications that I use, via cask (chrome, quicksilver, imageoptim, virtualbox, etc.)
- Installs oh-my-zsh and sets it up
- Generates SSH keys (and opens github settings page for convenience)
- Installs global node packages that I use often (bower, jshint, jscs, etc.)
- Customizes Sublime using other files from this repo
- Installs translit keyboard

## defaults.sh

Sets up sensible OS X defaults and other useful tweaks. Based on Mathias' excellent .osx

## Package Control.sublime-settings

Specifies which Sublime packages to install

## Preferences.sublime-settings

Specifies main Sublime settings
