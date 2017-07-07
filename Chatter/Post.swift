//
//  Post.swift
//  Chatter
//
//  Created by iD Student on 7/7/17.
//  Copyright © 2017 iD Tech. All rights reserved.
//

import Foundation

class Post {
    
    var text: String
    var date : NSDatevar userName: String
    
    init(text: String, date: NSDate, userName: String) {
        
        self.text = text
        self.date = date
        self.userName = userName
    }
}
