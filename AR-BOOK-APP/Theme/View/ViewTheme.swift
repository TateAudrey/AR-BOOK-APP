//
//  ViewTheme.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/28/22.
//

import UIKit


extension UIView {
    
    
    func CustomizeView(){
        
        layer.cornerRadius = 10
        layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
}
