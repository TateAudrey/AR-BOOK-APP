//
//  UIElement.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import Foundation
import UIKit

class UIElement {
    
    static func addLoadingView(view: UIView, message: String = "Loading", height: CGFloat = 0, bgColor: CGColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.45).cgColor) -> UIView {
        let h = height == 0 ? view.frame.height : height
        let loading = LoadingView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: h))
        loading.addLoadingText(message: message, bgColor: bgColor)
        loading.startAnimating()
        
        return loading
    }
    
}
