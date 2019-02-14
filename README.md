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


## Как запустить?

Просто пропишите `./start` в своем терминале

    1. Приложение будет скомпилировано, а исполняемый файл будет перемещен в `/Applications`
    2. *.plist файл будет скопирован в `$HOME/Library/LaunchAgents`
    3. Будет создана директория `/usr/local/etc/DarkModeSwitcher`
    4. Демон будет запущен

## Как отключить?

Пропишите `./disable` в своем терминале  и скрипт удалит исполняемый файл, выключит демона, удалит *.plist файл, логи и файл конфигурации.

## Как настроить?

Для конфигурации используется файл  `/usr/local/etc/DarkModeSwitcher/DarkModeSwitcher.conf`

## Где логи?

`/usr/local/etc/DarkModeSwitcher/DarkModeSwitcher.log`  -- вот тут
