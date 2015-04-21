//
//  JobsViewController.swift
//  MarianaMedeiro
//
//  Created by Mariana Medeiro on 17/04/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

import UIKit

class JobsViewController: UIViewController {

    @IBAction func jobsBackButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var jobsTitleLabel: UILabel!
    @IBOutlet weak var bepidLabel: UILabel!
    @IBOutlet weak var megaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jobsTitleLabel.text = "Experiences"
        jobsTitleLabel.backgroundColor = UIColor.lightGrayColor()
        
        bepidLabel.text = "MackMobile \n (BEPiD Brazil) \n iOS Developer \n Fev/2015 - Currently"
        bepidLabel.textColor = UIColor.whiteColor()
        bepidLabel.backgroundColor = UIColor.lightGrayColor()
        
        megaLabel.text = "TvAlphaville \n MegaTelecom \n HelpDesk \n Nov/2011 - Jan/2013"
        megaLabel.textColor = UIColor.whiteColor()
        megaLabel.backgroundColor = UIColor.lightGrayColor()
        
        
        
    }

}
