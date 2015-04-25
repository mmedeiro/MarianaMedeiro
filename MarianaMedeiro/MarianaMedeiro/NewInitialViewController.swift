//
//  NewInitialViewController.swift
//  MarianaMedeiro
//
//  Created by Mariana Medeiro on 23/04/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

import UIKit

class NewInitialViewController: UIViewController {
    
    @IBOutlet weak var ProfileLabel: UILabel!
    @IBOutlet weak var EducationLabel: UILabel!
    @IBOutlet weak var ExperiencesLabel: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        ProfileLabel.textColor = UIColor(red: 251/255, green: 68/255, blue: 137/255, alpha: 1.0)
        EducationLabel.textColor = UIColor(red: 88/255, green: 205/255, blue: 218/255, alpha: 1.0)
        ExperiencesLabel.textColor = UIColor(red: 104/255, green: 222/255, blue: 122/255, alpha: 1.0)
        
        UIView.animateWithDuration(1.0, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.EducationLabel.hidden = true
            self.ExperiencesLabel.hidden = true
            self.ProfileLabel.hidden = true
            self.ProfileLabel.center = CGPointMake(8, 82)
            self.ProfileLabel.hidden = false

        }, completion: nil)
        
        EducationLabel.hidden = true
        ExperiencesLabel.hidden = true
        ProfileLabel.hidden = true
        
        UIView.animateWithDuration(1.0, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.EducationLabel.hidden = true
            self.EducationLabel.center = CGPointMake(8, 150)
            self.EducationLabel.hidden = false
            
        }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.ExperiencesLabel.hidden = true
            self.ExperiencesLabel.center = CGPointMake(8, 150)
            self.ExperiencesLabel.hidden = false
            
        }, completion: nil)
    }
    
    
    override func prefersStatusBarHidden () ->  Bool {
            return true
        }

}
