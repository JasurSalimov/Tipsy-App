//
//  TipBrain.swift
//  Tip Calculator (Jasur S)
//
//  Created by Jasur Salimov on 8/8/21.
//

import Foundation


struct TipBrain{
    
    var tipPercentage: Int = 0
    var totalBill: Double = 0
    var splitAmount: Int = 0
    var forCalc: Double = 0
    
    mutating func tipSet(tipAmount: Int){
        self.tipPercentage = tipAmount
    }
    mutating func totalSet(bill: String){
        if(bill != nil){
            let double = NumberFormatter().number(from: bill)?.doubleValue
        self.totalBill = double!
        }
        
    }
    
    mutating func splitSet(split: Int){
        self.splitAmount = split
    }
    mutating func finalCalculate() -> Double{
        switch tipPercentage{
        case 0:
            self.forCalc = totalBill
            break;
        case 10:
            self.forCalc = totalBill/10 + totalBill
            break;
        case 20:
            self.forCalc = totalBill/5 + totalBill
            break;
        default:
            break;
        }
        
        return forCalc
        
    }
    
    
    
    
    
    
}
