//
//  Home.swift
//  Athletics-iPhone
//
//  Created by grobinson on 11/15/15.
//  Copyright © 2015 Wambl. All rights reserved.
//

import UIKit

class Home: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.translucent = false
        tabBar.barTintColor = Colors.red()
        
        let dailey = Dailey(nibName: "Dailey", bundle: nil)
        let daileyNav = UINavigationController(rootViewController: dailey)
        let daileyTab = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Favorites, tag: 1)
        daileyNav.tabBarItem = daileyTab
        
        viewControllers = [daileyNav]
        
    }

}