//
//  main.swift
//  DarkModeSwitcher
//
//  Created by Виталий Рамазанов on 08/02/2019.
//  Copyright © 2019 Виталий Рамазанов. All rights reserved.
//

import Foundation

let userCalendar = Calendar.current
let currentDate = Date()
let currentHour = userCalendar.component(.hour, from: currentDate)

if currentHour >= 20 || currentHour =< 10 {
    let command = "tell application \"System Events\" to tell appearance preferences to set dark mode to true"
    let _ = NSAppleScript(source: command)?.executeAndReturnError(nil).stringValue
    print("Ok, its >20 or < 10")
} else {
    let command = "tell application \"System Events\" to tell appearance preferences to set dark mode to false"
    let _ = NSAppleScript(source: command)?.executeAndReturnError(nil).stringValue
    print("Ok, its other time")
}
