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
        OnBoardingScreenItem(title: "A Different Experience", descriptionText: "Enhancing your learning experience through Augmented Reality", imgName: "image1"),
        OnBoardingScreenItem(title: "Bring your Book to Life", descriptionText: "Make your main subject come to life using AR", imgName: "image2"),
        OnBoardingScreenItem(title: "Interactive Guide", descriptionText: "Explore your favorite Subject with interactive modes", imgName: "image3"),
    ]
}

