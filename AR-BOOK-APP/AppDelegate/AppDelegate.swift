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
        
        
        
        if #available(iOS 15, *) {
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithOpaqueBackground()
            navigationBarAppearance.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor : UIColor.white
            ]
            
            navigationBarAppearance.largeTitleTextAttributes = [
                NSAttributedString.Key.foregroundColor : UIColor.white
            ]
            navigationBarAppearance.backgroundColor = UIColor(named: "ButtonColor")
            UINavigationBar.appearance().standardAppearance = navigationBarAppearance
            UINavigationBar.appearance().compactAppearance = navigationBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
            
            let tabBarApperance = UITabBarAppearance()
            tabBarApperance.configureWithOpaqueBackground()
            tabBarApperance.backgroundColor = UIColor(named: "ButtonColor")
            UITabBar.appearance().scrollEdgeAppearance = tabBarApperance
            UITabBar.appearance().standardAppearance = tabBarApperance
            
            
            let tabBarFont = UIFont.systemFont(ofSize: 10, weight: UIFont.Weight.medium)
            
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: tabBarFont, NSAttributedString.Key.foregroundColor: UIColor(red: 190/255, green: 190/255, blue: 190/255, alpha: 1)], for: UIControl.State.normal)
        }
        
        return true
    }
    
    private func initialViewController() {
        //Set initial view controllers
        window = UIWindow(frame: UIScreen.main.bounds)
        
        var initialViewController : UIViewController?
        
        
        if AppStateRepository.didOnboarding() {
            
            initialViewController  = (UIStoryboard(name: "Registration", bundle: nil).instantiateViewController(withIdentifier: "RegistrationID"))
            
            self.window?.rootViewController = initialViewController
            self.window?.makeKeyAndVisible()
            
            if AppStateRepository.loggedIn() {
                
                initialViewController  = (UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainID"))
                
                self.window?.rootViewController = initialViewController
                self.window?.makeKeyAndVisible()
                
            }
            
        }   else {
            
            initialViewController  = (UIStoryboard(name: "OnBoarding", bundle: nil).instantiateViewController(withIdentifier: "OnBoardingID"))
            
            self.window?.rootViewController = initialViewController
            self.window?.makeKeyAndVisible()
        }
        
        
        
    }
    
    
}



