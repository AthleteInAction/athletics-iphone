//
//  Dailey.swift
//  Athletics-iPhone
//
//  Created by grobinson on 11/15/15.
//  Copyright © 2015 Wambl. All rights reserved.
//

import UIKit

class Dailey: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.translucent = false
        navigationController?.navigationBar.barTintColor = Colors.red()
        
        edgesForExtendedLayout = UIRectEdge()
        
        let slide = UIBarButtonItem(title: "Open", style: .Plain, target: self.revealViewController(), action: "revealToggle:")
        navigationItem.setLeftBarButtonItem(slide, animated: true)
        
    }

}