//
//  EntryController.swift
//  Journal
//
//  Created by Zebra on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class EntryController {
    
    private let entryKey = "entryKey"
    
    static var sharedController = EntryController()
    
    var entries: [Entry] {
        let request = NSFetchRequest(entityName: "Entry")
        
        let moc = Stack.sharedStack.managedObjectContext
        
        do {
            return try moc.executeFetchRequest(request) as! [Entry]
            
        } catch {
            return []
            
        }
    }

    
    func addEntry(entry: Entry) {
        
        self.saveToPersistentStore()
    }
    
    func removeEntry(entry: Entry) {
        
        entry.managedObjectContext?.deleteObject(entry)
        
        saveToPersistentStore()

    }
    
    func saveToPersistentStore() {
        
        let moc = Stack.sharedStack.managedObjectContext
        
        do {
            try moc.save()
            
        } catch {
            print("Error saving Managed Object Context. Item not saved")
        }

    }
    

    

    
}


























