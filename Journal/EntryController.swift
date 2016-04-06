//
//  EntryController.swift
//  Journal
//
//  Created by admin on 4/6/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


class EntryController {
    
    var sharedController = EntryController()
    
    var entries: [Entry] = []
    
    func addEntry(entry: Entry) {
        
        entries.append(entry)
        
    }
    
    func removeEntry(entry: Entry) {
        
        if let entryIndex = entries.indexOf(entry){
            entries.removeAtIndex(entryIndex)
        }
        
        
    }
    
}