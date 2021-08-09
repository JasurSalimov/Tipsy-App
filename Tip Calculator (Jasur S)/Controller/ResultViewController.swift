//
//  ResultViewController.swift
//  Tip Calculator (Jasur S)
//
//  Created by Jasur Salimov on 8/9/21.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var billTotal: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    @IBOutlet weak var textWithInfo: UILabel!
    var tipBrainR = TipBrain()
    var totalPerPerson: String?
    var percentage: String?
    var pAmount: String?
    @IBAction func recalculatePressed(_ sender: UIButton) {
    
        self.dismiss(animated: true, completion: nil)    // to dissmiss newViewController

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recalculateButton.layer.cornerRadius = 10
        recalculateButton.layer.borderColor = UIColor.black.cgColor
        
        billTotal.text = totalPerPerson ?? "no value"
        textWithInfo.text = "Split between \(pAmount ?? "no value" ) people, with \(percentage ?? "no value") tip."
        
           
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
