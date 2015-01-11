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
    @IBAction func convertToRealDogYears(sender: UIButton) {
        
        /*
        Change the conversion method (which evaluates when your UIButton is touched) to use if statements. The real conversion for dog years is as follows; Each human year equals 10.5 dog years for the first two years, and then 4 dog years for each human year after. Sounds like a word problem? Well, it is. You will find yourself frequently taking what is asked of you, and translating that into code in your project. Again, best of luck!
        */
        if  let humanYearsFromTextField = (humanYearsTextField.text as NSString?)?.doubleValue
        {
            if(humanYearsFromTextField > 0){
                let youngConversionFactor = 10.5
                let YOUNG_DOG_FACTOR = 2.0
                let oldConversionFactor = 4.0
                var dogYears:Double?
                
                if ( humanYearsFromTextField <= YOUNG_DOG_FACTOR){
                    dogYears = youngConversionFactor * humanYearsFromTextField
                }else{
                  dogYears = (youngConversionFactor * YOUNG_DOG_FACTOR) + oldConversionFactor * (humanYearsFromTextField - YOUNG_DOG_FACTOR)
                }
                if dogYears != nil {
                    dogYearsLabel.text = "\(dogYears!) in Dog years"
                    dogYearsLabel.hidden = false
                }
            }else{
                clearConversionLabel()
            }
        }else{
            clearConversionLabel()
        }
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }
    
    func clearConversionLabel() {
        dogYearsLabel.text = ""
        dogYearsLabel.hidden = true
    }

}

