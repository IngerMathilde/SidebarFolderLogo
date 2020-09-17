//
//  AppDelegate.swift
//  PlaygroundFolder
//
//  Created by Inger van Boeijen on 16/09/2020.
//  Copyright © 2020 Inger van Boeijen. All rights reserved.
//

import Cocoa
import Darwin


class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSLog("Installing Finder extension")
        SwiftySystem.execute(path: "/usr/bin/pluginkit", arguments: ["-e", "use", "-i", "com.PlaygroundFolder.PlaygroundFolderFinderSync"])
        SwiftySystem.execute(path: "/usr/bin/killall",arguments: ["Finder"])
        alert(customMessage: "Finder sync functionalities for Playground folder")
        exit(0)
    }
        
    private func alert(customMessage: String) {
        let alert = NSAlert()
        alert.messageText = "Information"
        alert.informativeText = customMessage
        alert.runModal()
    }
}

