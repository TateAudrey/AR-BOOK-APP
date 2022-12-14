//
//  PhysicsViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/29/22.
//

import UIKit

class PhysicsViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    let reuseIdentifier = "HomeDetailTableViewCell"
    var arStatusView: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupDelegates()
        registerNIB()
    }
    
    func setupDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    func registerNIB(){
        
        tableView.register(UINib(nibName: reuseIdentifier, bundle: .main), forCellReuseIdentifier: reuseIdentifier)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showPhysics" {
            let destination = segue.destination as! LoadPhysicsARViewController
            destination.status = arStatusView
        }
    }

}



extension PhysicsViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! HomeDetailTableViewCell
        
        if indexPath.row == 0 {
            
            cell.titleLabel.text = "Cosmonaut Experience"
            arStatusView = "cosmonaut"
            
        } else if indexPath.row == 1 {
            
            arStatusView = "lunarrover"
            cell.titleLabel.text = "Lunar Rover Experience"
            arStatusView = "lunarrover"
            
        } else {
            
            arStatusView = "spacehab"
            cell.titleLabel.text = "Jameson Lunar Base Habitat Experience"
            arStatusView = "spacehab"
            
        }
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
            arStatusView = "cosmonaut"
            performSegue(withIdentifier: "showPhysics", sender: nil)
            
        } else if indexPath.row == 1 {
            
            arStatusView = "lunarrover"
            performSegue(withIdentifier: "showPhysics", sender: nil)
            
        } else {
            
            arStatusView = "spacehab"
            performSegue(withIdentifier: "showPhysics", sender: nil)
            
        }
        
       
    }
  
    
    
    
}
