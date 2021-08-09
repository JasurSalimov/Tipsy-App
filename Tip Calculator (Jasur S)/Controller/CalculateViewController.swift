//
//  ViewController.swift
//  Tip Calculator (Jasur S)
//
//  Created by Jasur Salimov on 8/8/21.
//

import UIKit

class CalculateViewController: UIViewController, UITextFieldDelegate {
    
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        
        
    }
    
    @IBOutlet weak var billChanged: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var personCount: UIStepper!
    @IBOutlet weak var countLabel: UILabel!
    @IBAction func billEntered(_ sender: UITextField) {
        billChanged.text = sender.text ?? "0.0"
    }
    @IBOutlet weak var calculateButton: UIButton!
    var tipBrain = TipBrain()
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        sender.isSelected = true
        tipBrain.tipSet(tipAmount: sender.currentTitle ?? "0%")
    
    }
    @IBAction func personCountChange(_ sender: UIStepper) {
        tipBrain.splitSet(split: Int(sender.value))
        countLabel.text = String(round(10*sender.value)/10)
        
    }
    
   
    @IBAction func calculatePressed(_ sender: UIButton) {
        tipBrain.totalSet(bill: billChanged.text!)
        self.performSegue(withIdentifier: "Result", sender: self)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //two lines of code to make button little bit rounded
         calculateButton.layer.cornerRadius = 10
         calculateButton.layer.borderColor = UIColor.black.cgColor
         self.billChanged.delegate = self
      
        
        
        

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if (segue.identifier == "Result"){
                let destinationVC = segue.destination as! ResultViewController
                destinationVC.totalPerPerson = String(round(10*tipBrain.finalCalculate())/10)
                destinationVC.pAmount = String("\(tipBrain.splitAmount)")
                destinationVC.percentage = String("\(tipBrain.tipPercentage)%")
               
            }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
