//
//  Entry.swift
//  Journal
//
//  Created by Zebra on 2/4/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class Entry {
    let title: String?
    let body: String?
    let timestamp = NSDate()
    
    init(title: String?, body: String?) {
        self.title = title
        self.body = body
        
    }
}

func ==(lhs: Entry, rhs: Entry) {
    lhs.title == rhs.title && lhs.body == rhs.body && lhs.timestamp == rhs.timestamp
}