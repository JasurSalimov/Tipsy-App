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
    
    mutating func tipSet(tipAmount: String){
        switch tipAmount{
        case "0%":
            self.tipPercentage = 0
            break;
        case "10%":
            self.tipPercentage = 10
            break;
        case "20%":
            self.tipPercentage = 20
            break;
        default:
            break;
        }
        
       
    }
    mutating func totalSet(bill: String){
        if(bill != ""){
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
        print(splitAmount)
        print(forCalc)
        return forCalc/Double(splitAmount)
        
    }
    
    
    
    
    
    
}
