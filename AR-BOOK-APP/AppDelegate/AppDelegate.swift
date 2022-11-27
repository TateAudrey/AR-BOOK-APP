//
//  AppDelegate.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/25/22.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        initialViewController()
        FirebaseApp.configure()
        
        return true
    }
    
    private func initialViewController() {
        //Set initial view controllers
        window = UIWindow(frame: UIScreen.main.bounds)
        
        var initialViewController : UIViewController?
        
        
        initialViewController  = (UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainID"))
        
        self.window?.rootViewController = initialViewController
        self.window?.makeKeyAndVisible()
    }
    
    
}



