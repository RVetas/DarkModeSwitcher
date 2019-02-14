//
//  main.swift
//  DarkModeSwitcher
//
//  Created by Виталий Рамазанов on 08/02/2019.
//  Copyright © 2019 Виталий Рамазанов. All rights reserved.
//

import Foundation

print("////////////////////////////////////////////")
let path = "/usr/local/etc/DarkModeSwitcher/DarkModeSwitcher.conf"
let urlPath = URL(fileURLWithPath: path)

var fileContents = ""
print("Configuration file path: \(urlPath)")

if !FileManager.default.fileExists(atPath: urlPath.path) {
    print("Configuration file does not exists")
    let fileContents = """
LightStart = 10
LightEnd = 20\n
"""
    
    do {
        try fileContents.write(to: urlPath, atomically: false, encoding: .utf8)
        print("Creating new configuration file at: \(urlPath.absoluteString)")
    }
    catch {
        print("ERROR ON WRITING CONFIGURATION FILE")
    }
} else {
    print("Configuration file exists")
    do {
        let text = try String(contentsOf: urlPath, encoding: .utf8)
        fileContents = text
    }
    catch {
        print("ERROR ON READING CONFIGURATION FILE")
    }
}

let parameters = fileContents.split(separator: "\n")

let lightStartParams = parameters.indices.contains(0) ? parameters[0] : "LightStart = 10"
let lightEndParams = parameters.indices.contains(1) ? parameters[1] : "LightEnd = 20"

let lightStartParameter = lightStartParams.split(separator: "=")
let lightEndParameter = lightEndParams.split(separator: "=")

let startTimeString = lightStartParameter.indices.contains(1) ?
              lightStartParameter[1].replacingOccurrences(of: " ", with: "") : "10"

let endTimeString = lightEndParameter.indices.contains(1) ?
              lightEndParameter[1].replacingOccurrences(of: " ", with: "") : "10"

let startTime = Int(startTimeString)!
let endTime = Int(endTimeString)!
print("Start time: \(startTime) | End time: \(endTime)")

let userCalendar = Calendar.current
let currentDate = Date()
let currentHour = userCalendar.component(.hour, from: currentDate)
let currentMinute = userCalendar.component(.minute, from: currentDate)

if currentHour >= startTime && currentHour < endTime { // current hour is in (10:00..20:00)
    let command = "tell application \"System Events\" to tell appearance preferences to set dark mode to false"
    let _ = NSAppleScript(source: command)?.executeAndReturnError(nil).stringValue
    print("Current time: \(currentHour):\(currentMinute) | Trying to set dark mode to false")
} else {
    let command = "tell application \"System Events\" to tell appearance preferences to set dark mode to true"
    let _ = NSAppleScript(source: command)?.executeAndReturnError(nil).stringValue
    print("Current time: \(currentHour):\(currentMinute) | Trying to set dark mode to true")
}
