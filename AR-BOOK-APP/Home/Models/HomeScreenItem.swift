//
//  HomeScreenItem.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//


import Foundation
import UIKit

class HomeScreenItem {
    
    var img: UIImage
    
    init(imgName: String) {
        
        self.img = UIImage(named: imgName)!
       
    }
    
    
    static var data: [HomeScreenItem] = [
        HomeScreenItem(imgName: "biology"),
        HomeScreenItem(imgName: "chemistry"),
        HomeScreenItem(imgName: "history"),
        HomeScreenItem(imgName: "physics")
        
    ]
}

