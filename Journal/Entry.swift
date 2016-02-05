//
//  Entry.swift
//  Journal
//
//  Created by Zebra on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry {
    
    private let titleKey = "titleKey"
    private let bodyKey = "bodyKey"
    private let timestampKey = "timestampKey"
    
    
    
    var title: String
    var body: String
    var timestamp = NSDate()
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
        self.timestamp = NSDate()
        
    }
    
    init?(dictionary: [String:AnyObject]){
        guard let title = dictionary[titleKey] as? String,
        let body = dictionary[bodyKey] as? String,
            let timestamp = dictionary[timestampKey] as? String else {
                
                self.title = ""
                self.body = ""
                self.timestamp = NSDate()
                return nil
        }
        self.title = title
        self.body = body
        self.timestamp = NSDate()
    }
    
    func dictCopy() -> [String:AnyObject] {
        let dictionary = [titleKey: self.title,
            bodyKey: self.body,
            timestampKey: "\(self.timestamp)"
        ]
        return dictionary
    }
}



func ==(lhs: Entry, rhs: Entry) {
    lhs.title == rhs.title && lhs.body == rhs.body && lhs.timestamp == rhs.timestamp
}