//
//  LoadARViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/28/22.
//

import UIKit
import RealityKit

class LoadARViewController: UIViewController {

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
        
        switch status {
            
        case "anatomy2":
            
           
            let arAnchor = try! Mouth.loadScene()
            
            arView.scene.anchors.append(arAnchor)
            
        case "anatomy3":
           
            let arAnchor = try! Skeleton.loadScene()
            
            arView.scene.anchors.append(arAnchor)
            
        case "anatomy4":
            
            let arAnchor = try! Woman.loadScene()
            
            arView.scene.anchors.append(arAnchor)
            
        case "anatomy5":
           
            let arAnchor = try! Skull.loadScene()
            
            arView.scene.anchors.append(arAnchor)
            
      
            
        case "anatomy7":
           
            let arAnchor = try! Skin.loadScene()
            
            arView.scene.anchors.append(arAnchor)
            
       
            
        default:
            
            let arAnchor = try! Abdomen.loadScene()
            
            arView.scene.anchors.append(arAnchor)
        }

    }
    
}

