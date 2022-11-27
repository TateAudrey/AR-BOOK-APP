//
//  HomeCollectionViewCell.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 10
        layer.shadowColor = UIColor.white.cgColor
        layer.shadowRadius = 5
    }

}
