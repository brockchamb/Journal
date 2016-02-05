//
//  EntryController.swift
//  Journal
//
//  Created by Zebra on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    private let entryKey = "entryKey"
    
    static var sharedController = EntryController()
    
    var entries: [Entry]

    init() {
        entries = []
        self.loadFromPersistenceStore()
    }
    
    func loadFromPersistenceStore() {
        
        let entriesFromDefaults = NSUserDefaults.standardUserDefaults().objectForKey(entryKey) as? [[String:AnyObject]]
        
        if let entry = entriesFromDefaults {
            self.entries = entry.map({Entry(dictionary: $0)!})
        }
    }
    
    func saveToPersistentStore() {
        let entriesDict = self.entries.map({$0.dictCopy()})
        NSUserDefaults.standardUserDefaults().setObject(entriesDict, forKey: entryKey)
    }
    
    func addEntry(entry: Entry) {
        entries.append(entry)
        self.saveToPersistentStore()
    }
    
    // Why NSIndexPath?
    func removeEntry(indexPath: NSIndexPath) {
        entries.removeAtIndex(indexPath.row)
        self.saveToPersistentStore()
    }
}