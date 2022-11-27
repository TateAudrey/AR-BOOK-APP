//
//  SignInSignUpViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import UIKit

class SignInSignUpViewController: UIViewController {
    
    // MARK: - Navigation
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setupUI()
    }
    
    
    func setupUI(){
        
        signInButton.RoundButtonOutline()
        signupButton.RoundButtonOutline()
    }
    
    
    @IBAction func signinButtonClick(_ sender: UIButton) {
        performSegue(withIdentifier: "gotosignin", sender: nil)
        
    }
    
    @IBAction func signupButtonClick(_ sender: UIButton) {
        
        // Create new Alert
        let dialogMessage = UIAlertController(title: "Please Note", message: "The Registration process is out of scope for this AR VR Hackathon.", preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "Got It!", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
         })
        
        //Add OK button to a dialog message
        dialogMessage.addAction(ok)

        // Present Alert to
        self.present(dialogMessage, animated: true, completion: nil)
        
    }
    

}
