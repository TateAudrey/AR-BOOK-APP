//
//  LoadPhysicsARViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/29/22.
//

import UIKit
import RealityKit

class LoadPhysicsARViewController: UIViewController {

    @IBOutlet weak var arView: ARView!
    
    var status: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayARView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        displayARView()
    }
    
    
    
    func displayARView(){
        
        if status == "cosmonaut" {
            
            let arAnchor = try! Cosmonaut.loadScene()
            
            arView.scene.anchors.append(arAnchor)
            
        } else {
            
            let arAnchor = try! Lunarrover.loadScene()
            
            arView.scene.anchors.append(arAnchor)
        }
        

    }
    
}

