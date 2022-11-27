//
//  SignInViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    // MARK: - Navigation
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    
    func setupUI(){
        
        signInButton.RoundButtonOutline()
    }

    @IBAction func forgotPassword(_ sender: UIButton) {
        // Create new Alert
        let dialogMessage = UIAlertController(title: "Please Note", message: "The Forgot Password process is out of scope for this AR VR Hackathon.", preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "Got It!", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
         })
        
        //Add OK button to a dialog message
        dialogMessage.addAction(ok)

        // Present Alert to
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
    @IBAction func signInButonClick(_ sender: Any) {
        
        
        let loading = UIElement.addLoadingView(view: view)
        view.addSubview(loading)
        view.isUserInteractionEnabled = false
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
           
            
            loading.removeFromSuperview()
            self.view.isUserInteractionEnabled = true
            self.navigationController?.isNavigationBarHidden = false
            
            self.performSegue(withIdentifier: "gotoHome", sender: nil)
            
        }
        
        
        
        
       
    }
}
