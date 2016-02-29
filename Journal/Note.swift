//
//  AddNote.swift
//  Journal
//
//  Created by admin on 2/8/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Note {
    
    private let titleKey = "titleKey"
    private let bodyTextKey = "bodyTextKey"
    private let entryKey = "entryKey"
    
    
    var title: String
    var bodyText: String
    var entry: Entry?
    
    
    init(title: String, bodyText: String, entry: Entry) {
        self.title = title
        self.bodyText = bodyText
        self.entry = entry
    }
    
    func dictionary() -> [String: AnyObject] {
        let dictionary:[String:AnyObject] = [titleKey: self.title,
                          bodyTextKey: self.bodyText,
                          entryKey: self.entry!
                         ]
        return dictionary as! [String : AnyObject]
    }
    
    
    init?(dictionary: [String: AnyObject]) {
        guard let   dictTitle = dictionary["titleKey"] as? String,
                    dictBody = dictionary["bodyTextKey"] as? String,
                    dictEntry = dictionary["entryKey"] as? Entry else {
                self.title = ""
                self.bodyText = ""
                
                        
                return nil
        }
        
        self.title = dictTitle
        self.bodyText = dictBody
        self.entry = dictEntry
        
    }
    
    
}




















