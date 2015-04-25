//
//  EducationViewController.swift
//  MarianaMedeiro
//
//  Created by Mariana Medeiro on 17/04/15.
//  Copyright (c) 2015 Mariana Medeiro. All rights reserved.
//

import UIKit

class EducationViewController: UIViewController {

    @IBOutlet weak var titleEducationLabel: UILabel!
    
    @IBAction func educationBackButton(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var englishLabel: UILabel!
    @IBOutlet weak var aditionalLabel: UILabel!
    @IBOutlet weak var highSchoolLabel: UILabel!
    @IBOutlet weak var technicalLabel: UILabel!
    @IBOutlet weak var ciscoLabel: UILabel!
    @IBOutlet weak var graduationLabel: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

       titleEducationLabel.backgroundColor = UIColor.lightGrayColor()
        
        englishLabel.text = "Intermediate English"
        englishLabel.textColor = UIColor.whiteColor()
        englishLabel.backgroundColor = UIColor.lightGrayColor()

        aditionalLabel.text = "C++, Arduino, Objective-C, Swift"
        aditionalLabel.textColor = UIColor.whiteColor()
        aditionalLabel.backgroundColor = UIColor.lightGrayColor()
        
        highSchoolLabel.text = "High School \n Instituto Técnico de Barueri (ITB) \n 2010 - 2012"
        highSchoolLabel.textColor = UIColor.whiteColor()
        highSchoolLabel.backgroundColor = UIColor.lightGrayColor()
        
        technicalLabel.text = "Network Technician \n Instituto Técnico de Barueri (ITB) \n 2010 - 2012"
        technicalLabel.textColor = UIColor.whiteColor()
        technicalLabel.backgroundColor = UIColor.lightGrayColor()
        
        ciscoLabel.text = "CCNA - CISCO \n Instituto Técnico de Barueri (ITB) \n 2010 - 2012"
        ciscoLabel.textColor = UIColor.whiteColor()
        ciscoLabel.backgroundColor = UIColor.lightGrayColor()
        
        graduationLabel.text = "Eletronic Engineering \n Universidade Pesbiteriana Mackenzie (UPM) \n 2013 - 2017"
        graduationLabel.textColor = UIColor.whiteColor()
        graduationLabel.backgroundColor = UIColor.lightGrayColor()
        
    }



}
