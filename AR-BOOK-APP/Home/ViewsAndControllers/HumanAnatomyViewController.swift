//
//  HumanAnatomyViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/28/22.
//

import UIKit

class HumanAnatomyViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    let reuseIdentifier = "HumanAnatomyCollectionViewCell"
    
    var arStatusView: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDelegates()
        registerNIB()
    }
    
    func setupDelegates(){
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func registerNIB(){
        collectionView.register(UINib(nibName: reuseIdentifier, bundle: .main), forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoARView" {
            let destination = segue.destination as! LoadARViewController
            destination.status = arStatusView
        }
    }
    
    
    
}


//MARK:- CollectionView
extension HumanAnatomyViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return AnatomyScreenItem.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HumanAnatomyCollectionViewCell
        
        cell.layer.cornerRadius = 10
        
        cell.imageView.image = AnatomyScreenItem.data[indexPath.row].img
        cell.titleLabel.text = AnatomyScreenItem.data[indexPath.row].title
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
            
        case 0:
            arStatusView = "anatomy2"
            performSegue(withIdentifier: "gotoARView", sender: nil)
            
        case 1:
            arStatusView = "anatomy3"
            performSegue(withIdentifier: "gotoARView", sender: nil)
            
        case 2:
            arStatusView = "anatomy4"
            performSegue(withIdentifier: "gotoARView", sender: nil)
            
        case 3:
            arStatusView = "anatomy5"
            performSegue(withIdentifier: "gotoARView", sender: nil)
            
        case 4:
            arStatusView = "anatomy7"
            performSegue(withIdentifier: "gotoARView", sender: nil)
       
        default:
            
            arStatusView = "anatomy9"
            performSegue(withIdentifier: "gotoARView", sender: nil)
        }
        
    }
}

//MARK:- CollectionView FlowLayout
extension HumanAnatomyViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var width : CGFloat?
        var height : CGFloat?
        
        height = 200
        width = view.bounds.width / 2.4
        
        
        return CGSize(width: width!, height: height!)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 8.0, left: 8.0, bottom: 0.0, right: 8.0)
    }
}


