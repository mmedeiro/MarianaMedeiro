//
//  ProfileViewController.swift
//  MarianaMedeiro
//
//  Created by Mariana Medeiro on 17/04/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profileImage.backgroundColor = UIColor(patternImage: UIImage(named: "profile.png")!)
        profileImage.layer.borderColor = UIColor.whiteColor().CGColor
        profileImage.layer.cornerRadius = 100
        profileImage.clipsToBounds = true
        
        nameLabel.text = "Medeiro, Mariana Isabele de Sousa"
        nameLabel.textColor = UIColor.whiteColor()
        nameLabel.backgroundColor = UIColor.lightGrayColor()
        
        
        ageLabel.text = "June 23, 1995"
        ageLabel.textColor = UIColor.whiteColor()
        ageLabel.backgroundColor = UIColor.lightGrayColor()
        
        maritalStatusLabel.text = "Single"
        maritalStatusLabel.textColor = UIColor.whiteColor()
        maritalStatusLabel.backgroundColor = UIColor.lightGrayColor()
        
        nationalityLabel.text = "Brazil, Sao Paulo, Jandira"
        nationalityLabel.textColor = UIColor.whiteColor()
        nationalityLabel.backgroundColor = UIColor.lightGrayColor()
        
        
        textViewTitleLabel.backgroundColor = UIColor.lightGrayColor()
        
    }

}
