//
//  AnatomyScreenItem.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/28/22.
//

import Foundation
import UIKit

class AnatomyScreenItem {
    
    var img: UIImage
    var title: String
    
    init(imgName: String, title: String) {
        
        self.img = UIImage(named: imgName)!
        self.title = title
    }
    
    
    static var data: [AnatomyScreenItem] = [
        AnatomyScreenItem(imgName: "anatomy2", title: "Human Mouth"),
        AnatomyScreenItem(imgName: "anatomy3", title: "Human Skeleton"),
        AnatomyScreenItem(imgName: "anatomy4", title: "Female Anatomy"),
        AnatomyScreenItem(imgName: "anatomy5", title: "Human Skull"),
        AnatomyScreenItem(imgName: "anatomy7", title: "Human Skin"),
        AnatomyScreenItem(imgName: "anatomy9", title: "Abdomen")
        
    ]
}
