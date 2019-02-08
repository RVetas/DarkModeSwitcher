# DarkModeSwitcher
*version 0.2b* -- this is early beta version and parameters of the daemon will be changed

This package provides you an opportunity to schedule Dark Mode switching on your Mac.

## How to run?

Just print `./start` in your terminal.
    1. App will build and replace executable in `/Applications`
    2. *.plist file will be copied to `/Library/LaunchDaemons`
    3. Daemon started!

## Hot to disable it?

Print `./stop` in your terminal to delete this app from /Applications, disable daemon and delete daemon's plist.

### Note: When copiyng to `/Library/LaunchDaemons` and loading daemon root access is needed
