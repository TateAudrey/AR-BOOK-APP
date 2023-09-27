//
//  MouthViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/28/22.
//

import UIKit
import RealityKit

class MouthViewController: UIViewController {
    
    @IBOutlet weak var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mouthAnchor = try! Mouth.loadScene()
        
        // Add the herero anchor to the scene
        arView.scene.anchors.append(mouthAnchor)
    }
    
}
