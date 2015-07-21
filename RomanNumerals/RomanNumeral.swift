//
//  RomanNumeral.swift
//  RomanNumerals
//
//  Created by Lauren Nicole Roth on 7/20/15.
//  Copyright (c) 2015 Lauren Nicole Roth. All rights reserved.
//

import Foundation

class RomanNumeralsCalculator {
    let romanMap = [
                        1 : "I",
                        4 : "IV",
                        5 : "V",
                        9 : "IX",
                        10 : "X",
                        40 : "XL",
                        50 : "L",
                        90 : "XC",
                        100 : "C",
                        400 : "CD",
                        500 : "D",
                        900 : "CM",
                        1000 : "M" ]
    
    
    func arabicToRomanNumeral(var number: Int) -> String {
        
        var result = ""
        
        for (value, letter) in romanMap {
            while number >= value {
                result += letter
                number  -= value
            }
        }
        return result
    }
}