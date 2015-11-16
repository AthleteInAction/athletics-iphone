//
//  access.swift
//  Athletics-iPhone
//
//  Created by grobinson on 11/15/15.
//  Copyright © 2015 Wambl. All rights reserved.
//

import Foundation
import Parse

class Access : PFObject,PFSubclassing {
    
    @NSManaged var admin: Bool
    @NSManaged var player: [String]
    @NSManaged var coach: [String]
    @NSManaged var contributor: [String]
    @NSManaged var parent: [String]
    
    override class func initialize(){
        
        struct Static { static var onceToken : dispatch_once_t = 0 }
        
        dispatch_once(&Static.onceToken){ self.registerSubclass() }
        
    }
    
    static func parseClassName() -> String { return "Access" }
    
}