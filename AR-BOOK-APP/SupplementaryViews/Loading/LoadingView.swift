//
//  LoadingView.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import Foundation
import UIKit

class LoadingView: UIView {
    
    @IBOutlet weak var loadingIndicator: UIImageView!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var loadingMessageLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        Bundle.main.loadNibNamed("LoadingView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask =     [.flexibleHeight, .flexibleWidth]
    }
    
    func addLoadingText(message: String, bgColor: CGColor) {
        loadingMessageLabel.text = message
        contentView.layer.backgroundColor = bgColor
    }
   
    func startAnimating() {
        let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = NSNumber(value: Double.pi * 2)
        rotation.duration = 1
        rotation.isCumulative = true
        rotation.repeatCount = Float.greatestFiniteMagnitude
        self.loadingIndicator.layer.add(rotation, forKey: "rotationAnimation")
    }
    
     func stopAnimating() {
        self.loadingIndicator.layer.removeAnimation(forKey: "rotationAnimation")
    }
}
