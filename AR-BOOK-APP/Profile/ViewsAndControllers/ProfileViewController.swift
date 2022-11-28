//
//  ProfileViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var window: UIWindow?
    
    // MARK: - Outlets
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var signoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        progressView.transform = progressView.transform.scaledBy(x: 1, y: 2)
        signoutButton.RoundButtonOutline()
        
    }

    @IBAction func signoutButtonClick(_ sender: UIButton) {
        
        var signoutAlert = UIAlertController(title: "Sign Out?", message: "Are you sure you want to sign out?", preferredStyle: UIAlertController.Style.alert)

        signoutAlert.addAction(UIAlertAction(title: "Sign Out", style: .destructive, handler: { (action: UIAlertAction!) in
            
            AppStateRepository.setloggedIn(value: false)
          
            if let window = self.view.window {
                window.rootViewController?.dismiss(animated: false, completion: nil)
                let stBoard : UIStoryboard = UIStoryboard(name: "Registration", bundle:nil)
                
                let navController = stBoard.instantiateViewController(withIdentifier: "RegistrationID")
                
                window.rootViewController = navController
            }
            
          }))

        signoutAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
          
            //Do nothing
            
          }))

        present(signoutAlert, animated: true, completion: nil)
    }
    
 

}
