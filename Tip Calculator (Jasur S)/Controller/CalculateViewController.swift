//
//  ViewController.swift
//  Tip Calculator (Jasur S)
//
//  Created by Jasur Salimov on 8/8/21.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var billChanged: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var personCount: UIStepper!
    
    @IBAction func tipChanged(_ sender: UIButton) {
    
    
    }
    @IBAction func personCountChange(_ sender: UIStepper) {
        
    }
    
   
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         button.backgroundColor = .clear
         button.layer.cornerRadius = 5
         button.layer.borderWidth = 1
         button.layer.borderColor = UIColor.black.cgColor
         */
        
        
        

        // Do any additional setup after loading the view.
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
