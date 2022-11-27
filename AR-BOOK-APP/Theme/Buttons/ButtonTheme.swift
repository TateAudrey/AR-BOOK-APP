//
//  ButtonTheme.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import Foundation
import UIKit


extension UIButton {
    
    
    func MainButtonCustomization(){
        
        layer.backgroundColor = UIColor(named: "ButtonColor")?.cgColor
        layer.cornerRadius = 27
    }
    
    
    func RoundButton(){
        
        layer.backgroundColor = UIColor(named: "ButtonColor")?.cgColor
        layer.cornerRadius = layer.bounds.size.height/2
    }
    
}
