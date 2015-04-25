//
//  ScrollViewTestViewController.swift
//  MarianaMedeiro
//
//  Created by Mariana Medeiro on 24/04/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

import UIKit

class ScrollViewTestViewController: UIViewController, UIScrollViewDelegate {
    
    let scrollView = UIScrollView(frame: CGRectMake(50, 50, 300, 300))
    var frame: CGRect = CGRectMake(0, 0, 0, 0)
    var images: [String] = ["me.png", "me2.png", "me3.png"]
    var pageControl: UIPageControl = UIPageControl(frame: CGRectMake(50, 500, 200, 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurePageControl()
        
        scrollView.layer.borderColor = UIColor.whiteColor().CGColor
        scrollView.layer.cornerRadius = 150
        scrollView.clipsToBounds = true

        scrollView.delegate = self
        self.view.addSubview(scrollView)
        
        for index in 0..<2 {
            frame.origin.x = self.scrollView.frame.size.width*CGFloat(index)
            frame.size = self.scrollView.frame.size
            self.scrollView.pagingEnabled = true
            
            var subView = UIImageView(frame: frame)
            
            subView.image = UIImage(named: images[index])
            self.scrollView.addSubview(subView)

        }
        
        self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width*2, self.scrollView.frame.size.height)
        pageControl.addTarget(self, action: Selector("changePage:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
        override func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
        }
        
        func configurePageControl(){
            self.pageControl.numberOfPages = images.count
            self.pageControl.currentPage = 0
            self.pageControl.tintColor = UIColor.redColor()
            self.pageControl.pageIndicatorTintColor = UIColor.blackColor()
            self.pageControl.currentPageIndicatorTintColor = UIColor.greenColor()
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



    