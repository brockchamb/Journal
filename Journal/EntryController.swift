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
    
    // Why same var & class?
    func removeEntry(entry: Entry) {
        entries.removeAtIndex(indexPath.row)
    }
}