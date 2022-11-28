//
//  HomeDetailViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/28/22.
//

import UIKit

class HomeDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    let reuseIdentifier = "HomeDetailTableViewCell"
    
    
    
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


}



extension HomeDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! HomeDetailTableViewCell
        
        
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "gotoAnatomy", sender: nil)
    }
  
    
    
    
}
