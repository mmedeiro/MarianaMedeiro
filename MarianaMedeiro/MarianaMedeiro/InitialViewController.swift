//
//  InitialViewController.swift
//  MarianaMedeiro
//
//  Created by Mariana Medeiro on 17/04/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var initialTitleLabel: UILabel!
    @IBAction func profileButton(sender: AnyObject) {
        segueForUnwindingToViewController(ProfileViewController(), fromViewController: self, identifier: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialTitleLabel.backgroundColor = UIColor.lightGrayColor()
        
        //self.backgroundImage.backgroundColor = UIColor(patternImage: UIImage(named: "curva.png")!)
        
    
    }

}
