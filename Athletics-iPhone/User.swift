//
//  User.swift
//  Athletics-iPhone
//
//  Created by grobinson on 11/15/15.
//  Copyright © 2015 Wambl. All rights reserved.
//

import Foundation
import Parse

class User: PFUser {
    
    @NSManaged var name: String
    @NSManaged var access: Access
    
    // INITIALIZE
    // =========================================================
    // =========================================================
    override class func initialize(){
        
        struct Static { static var onceToken : dispatch_once_t = 0 }
        
        dispatch_once(&Static.onceToken){ self.registerSubclass() }
        
    }
    // =========================================================
    // =========================================================
    
}