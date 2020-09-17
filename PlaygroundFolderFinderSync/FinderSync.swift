//
//  FinderSync.swift
//  PlaygroundFolderFinderSync
//
//  Created by Inger van Boeijen on 16/09/2020.
//  Copyright © 2020 Inger van Boeijen. All rights reserved.
//

import Cocoa
import FinderSync

class FinderSync: FIFinderSync {

    var myFolderURL = URL(fileURLWithPath: "/Users/ingervanboeijen/Playground")
    
    override init() {
        super.init()
        NSLog("FinderSync() launched from %@", Bundle.main.bundlePath as NSString)
        
        // Set up the directory we are syncing.
        FIFinderSyncController.default().directoryURLs = [self.myFolderURL]
    }
}
