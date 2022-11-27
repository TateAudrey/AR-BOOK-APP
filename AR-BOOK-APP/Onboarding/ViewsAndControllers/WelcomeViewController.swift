//
//  WelcomeViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var getStartedButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    
    // MARK: - Functions

    func setupUI(){
        
        getStartedButton.MainButtonCustomization()
    }
    
    
    // MARK: - Button Actions

    @IBAction func getStartedButtonClick(_ sender: UIButton) {
        
        performSegue(withIdentifier: "gotoOnBoardingScreen", sender: nil)
        
        
    }
    

}
