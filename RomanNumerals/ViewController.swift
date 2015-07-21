//
//  ViewController.swift
//  RomanNumerals
//
//  Created by Lauren Nicole Roth on 7/20/15.
//  Copyright (c) 2015 Lauren Nicole Roth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var romanNumeral: UILabel!
    @IBOutlet weak var numberToConvert: UITextField!
    @IBOutlet weak var convertedNumber: UILabel!
    
    @IBAction func buttonClick(sender: AnyObject) {
        
        var arabicNumber:Int? = numberToConvert.text.toInt()
        convertedNumber.text = RomanNumeralsCalculator().arabicToRomanNumeral(arabicNumber!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

