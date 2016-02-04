//
//  EntryController.swift
//  Journal
//
//  Created by Zebra on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    static var sharedController = EntryController()
    
    var entries: [Entry]

    init() {
        entries = []
    }
    
    func addEntry(entry: Entry) {
        entries.append(entry)
    }
    
    // Why NSIndexPath?
    func removeEntry(indexPath: NSIndexPath) {
        entries.removeAtIndex(indexPath.row)
    }
}