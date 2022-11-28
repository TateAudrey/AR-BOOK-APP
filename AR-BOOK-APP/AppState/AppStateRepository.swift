//
//  AppStateRepository.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import Foundation
import UIKit

public class AppStateRepository {
    
    private init(){}
    
    
    public static func setDidOnboarding(value: Bool) {
        UserDefaults.standard.set(value, forKey: UserDefaultConstants.didOnBoarding)
    }
    
    public static func setloggedIn(value: Bool) {
        UserDefaults.standard.set(value, forKey: UserDefaultConstants.didLogin)
    }
    
    public static func didOnboarding() -> Bool {
        return UserDefaults.standard.bool(forKey: UserDefaultConstants.didOnBoarding)
    }
    
    public static func loggedIn() -> Bool {
        return UserDefaults.standard.bool(forKey: UserDefaultConstants.didLogin)
    }
    

}
