# DarkModeSwitcher
*version 1.0b* -- BETA version

This daemon will schedule turning Dark Mode in MacOS on/off 

## How to run?

Just print `./start` in your terminal.

    1. App will build and replace executable in `/Applications`
    2. *.plist file will be copied to `$HOME/Library/LaunchAgents`
    3. `/usr/local/etc/DarkModeSwitcher` directory will be created
    4. Daemon started!

## Hot to disable it?

Print `./disable` in your terminal to delete this app from /Applications, disable daemon and delete daemon's plist, daemons logs and configuration files.

## How to configure it?

To configure it you can use configuration file at `/usr/local/etc/DarkModeSwitcher/DarkModeSwitcher.conf`

## Where are my logs?

`/usr/local/etc/DarkModeSwitcher/DarkModeSwitcher.log` file is at your service!
