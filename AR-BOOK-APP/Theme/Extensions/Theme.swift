//
//  Theme.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/28/22.
//

import UIKit

extension AppDelegate {
    
     func setTheme() {
        
        //Tab bar style
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().barStyle = UIBarStyle.default
        
        let tabBarFont = UIFont.systemFont(ofSize: 10, weight: UIFont.Weight.medium)
            
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: tabBarFont, NSAttributedString.Key.foregroundColor: UIColor(red: 190/255, green: 190/255, blue: 190/255, alpha: 1)], for: UIControl.State.normal)
            
         UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: tabBarFont, NSAttributedString.Key.foregroundColor: UIColor.white.cgColor], for: UIControl.State.selected)
   

    }
}
