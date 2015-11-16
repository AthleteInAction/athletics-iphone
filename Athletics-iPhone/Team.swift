//
//  Team.swift
//  Athletics-iPhone
//
//  Created by grobinson on 11/15/15.
//  Copyright © 2015 Wambl. All rights reserved.
//

import Foundation
import Parse

class Team : PFObject,PFSubclassing {
    
    @NSManaged var name: String
    @NSManaged private var sportRaw: String
    var sport: Sport {
        
        get { return Sport(rawValue: sportRaw)! }
        
        set { sportRaw = newValue.rawValue }
        
    }
    @NSManaged var access: Access
    
    override class func initialize(){
        
        struct Static { static var onceToken : dispatch_once_t = 0 }
        
        dispatch_once(&Static.onceToken){ self.registerSubclass() }
        
    }
    
    static func parseClassName() -> String { return "Teams" }
    
}

enum Sport: String {
    
    case Basketball = "basketball"
    
}