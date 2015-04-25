//
//  ProfileViewController.swift
//  MarianaMedeiro
//
//  Created by Mariana Medeiro on 17/04/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var maritalStatusLabel: UILabel!
    @IBOutlet weak var nationalityLabel: UILabel!
    @IBOutlet weak var textViewTitleLabel: UILabel!
    
    @IBAction func profileBackButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    let scrollView = UIScrollView(frame: CGRectMake(90, 120, 200, 200))
    var frame: CGRect = CGRectMake(0, 0, 0, 0)
    var images: [String] = ["me.png", "me2.png", "me3.png"]
    var pageControl: UIPageControl = UIPageControl(frame: CGRectMake(90, 340, 200, 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurePageControl()
        
        scrollView.layer.borderColor = UIColor.whiteColor().CGColor
        scrollView.layer.cornerRadius = 100
        scrollView.clipsToBounds = true
        
        scrollView.delegate = self
        self.view.addSubview(scrollView)
        
        for index in 0..<3 {
            frame.origin.x = self.scrollView.frame.size.width*CGFloat(index)
            frame.size = self.scrollView.frame.size
            self.scrollView.pagingEnabled = true
            
            var subView = UIImageView(frame: frame)
            
            subView.image = UIImage(named: images[index])
            self.scrollView.addSubview(subView)
            
        }

        
        self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width*3, self.scrollView.frame.size.height)
        pageControl.addTarget(self, action: Selector("changePage:"), forControlEvents: UIControlEvents.ValueChanged)
        
    
//        self.profileImage.backgroundColor = UIColor(patternImage: UIImage(named: "profile.png")!)
//        profileImage.layer.borderColor = UIColor.whiteColor().CGColor
//        profileImage.layer.cornerRadius = 100
//        profileImage.clipsToBounds = true
        
        nameLabel.text = "Mariana Isabele de Sousa Medeiro"
        nameLabel.textColor = UIColor.whiteColor()
        nameLabel.backgroundColor = UIColor.lightGrayColor()
        
        
        ageLabel.text = "June 23, 1995"
        ageLabel.textColor = UIColor.whiteColor()
        ageLabel.backgroundColor = UIColor.lightGrayColor()
        
        maritalStatusLabel.text = "Single"
        maritalStatusLabel.textColor = UIColor.whiteColor()
        maritalStatusLabel.backgroundColor = UIColor.lightGrayColor()
        
        nationalityLabel.text = "Brazil, Sao Paulo, Barueri"
        nationalityLabel.textColor = UIColor.whiteColor()
        nationalityLabel.backgroundColor = UIColor.lightGrayColor()
        
        
        textViewTitleLabel.backgroundColor = UIColor.lightGrayColor()
        
    }
    
    func configurePageControl(){
        self.pageControl.numberOfPages = images.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.redColor()
        self.pageControl.pageIndicatorTintColor = UIColor.blackColor()
        self.pageControl.currentPageIndicatorTintColor = UIColor(red: 255/255, green: 47/255, blue: 146/255, alpha: 1.0)
        self.view.addSubview(pageControl)
        
    }
    
    func changePage(sender: AnyObject) -> (){
        let x = CGFloat(pageControl.currentPage) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPointMake(x, 0), animated: true)
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
    }
    
}
