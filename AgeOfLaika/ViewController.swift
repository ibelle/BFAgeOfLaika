//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by HUGE | Isaiah Belle on 1/10/15.
//  Copyright (c) 2015 IsaiahBelleDigital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var convertToDogYearsButton: UIButton!
    
    let DOG_YEAR_FACTOR = 7.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYears(sender: UIButton) {
        if  let humanYearsFromTextField = (humanYearsTextField.text as NSString?)?.doubleValue
        {
            if(humanYearsFromTextField > 0){
                
                var dogYears = humanYearsFromTextField * DOG_YEAR_FACTOR
                dogYearsLabel.text = "\(dogYears) in Dog years"
                dogYearsLabel.hidden = false
            }else{
                clearConversionLabel()
            }
        }else{
            clearConversionLabel()
        }
        humanYearsTextField.resignFirstResponder()
        
    }
    
    func clearConversionLabel() {
        dogYearsLabel.text = ""
        dogYearsLabel.hidden = true
    }

}

