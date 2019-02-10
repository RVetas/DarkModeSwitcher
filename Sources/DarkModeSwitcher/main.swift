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
let currentMinute = userCalendar.component(.minute, from: currentDate)

if currentHour > 10 && currentHour < 20 { // current hour is in (10:00..20:00)
    let command = "tell application \"System Events\" to tell appearance preferences to set dark mode to false"
    let _ = NSAppleScript(source: command)?.executeAndReturnError(nil).stringValue
    print("currentHour: \(currentHour) | currentMinute: \(currentMinute) | Trying to set dark mode to false")
} else {
    let command = "tell application \"System Events\" to tell appearance preferences to set dark mode to true"
    let _ = NSAppleScript(source: command)?.executeAndReturnError(nil).stringValue
    print("currentHour: \(currentHour) | currentMinute: \(currentMinute) | Trying to set dark mode to true")
}
