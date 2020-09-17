//
//  main.swift
//  WorkspaceFolder
//
//  Created by Inger van Boeijen on 15/09/2020.
//  Copyright © 2020 Inger van Boeijen. All rights reserved.
//

import Cocoa

let delegate = AppDelegate()
NSApplication.shared.delegate = delegate
let errorCode = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
exit(errorCode)
