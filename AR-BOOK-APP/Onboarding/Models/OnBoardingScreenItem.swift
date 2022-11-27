//
//  OnBoardingScreenItem.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import Foundation
import UIKit

class OnBoardingScreenItem {
    
    var title: String
    var descriptionText: String
    var img: UIImage
    
    init(title: String, descriptionText: String, imgName: String) {
        
        self.img = UIImage(named: imgName)!
        self.title = title
        self.descriptionText = descriptionText
       
    }
    
    
    static var data: [OnBoardingScreenItem] = [
        OnBoardingScreenItem(title: "A Different Experience", descriptionText: "This app will enhance your Museum visit experience.", imgName: "image1"),
        OnBoardingScreenItem(title: "AR at your fingertips", descriptionText: "A deep dive into Augmented Reality straight from your fingertips.", imgName: "image2"),
        OnBoardingScreenItem(title: "Interactive Guide", descriptionText: "Explore your favorite Museum with interactive modes", imgName: "image3"),
    ]
}

