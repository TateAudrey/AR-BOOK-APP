//
//  OnBoardingViewController.swift
//  AR-BOOK-APP
//
//  Created by Audrey Chanakira on 11/27/22.
//

import UIKit

class OnBoardingViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    let reuseIdentifier = "OnBoardingCollectionViewCell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupDelegates()
        registerNIB()
        setupUI()
        
    }

    
    // MARK: - Functions
    
    func setupUI(){
        
        nextButton.RoundButton()
    }
    
    func setupDelegates(){
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func registerNIB(){
        collectionView.register(UINib(nibName: reuseIdentifier, bundle: .main), forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    
    // MARK: - Button Actions

    @IBAction func nextButtonClick(_ sender: Any) {
        
        if pageControl.currentPage == OnBoardingScreenItem.data.count - 1 {
            print("Last Page")
            
            AppStateRepository.setDidOnboarding(value: true)
            
            
            if pageControl.currentPage == 2 {
                
                AppStateRepository.setDidOnboarding(value: true)
                
                var newViewController : UIViewController
                newViewController  = (UIStoryboard(name: "Registration", bundle: nil).instantiateViewController(withIdentifier: "RegistrationID"))
                self.view.removeFromSuperview()
                Window.rootViewController = newViewController
                Window.makeKeyAndVisible()
                
            }
            
            return
            
        }
        
        //Apparently there is a bug in iOS 14, hence the need to to disable and enable paging.
        collectionView.isPagingEnabled = false
        
        let indexPath = IndexPath(item: pageControl.currentPage + 1, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .right, animated: true)
        pageControl.currentPage += 1
        
        collectionView.isPagingEnabled = true
        
        
    }
    
    
}


extension OnBoardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return OnBoardingScreenItem.data.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! OnBoardingCollectionViewCell
        
        cell.titleLabel.text = OnBoardingScreenItem.data[indexPath.row].title
        cell.imageView.image = OnBoardingScreenItem.data[indexPath.row].img
        cell.descriptionLabel.text = OnBoardingScreenItem.data[indexPath.row].descriptionText
        
        
        return cell
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let bounds = self.collectionView.bounds
        let midpoint =  CGPoint(x: bounds.midX, y: bounds.midY)
        if let indexPath = self.collectionView.indexPathForItem(at: midpoint) {
            pageControl.currentPage = indexPath.item
            
        }
    }
    
    
    
}


extension OnBoardingViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var width : CGFloat?
        var height : CGFloat?
        
        height = collectionView.frame.height
        width = collectionView.frame.width
        
        return CGSize(width: width!, height: height!)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 8.0, left: 8.0, bottom: 0.0, right: 8.0)
    }
    
    
}
