//
//  ViewController.swift
//  tipCalc
//
//  Created by Kevin Huynh on 12/29/18.
//  Copyright © 2018 Kevin Huynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var customTipLabel: UITextField!
    
    @IBOutlet weak var billLabel: UITextField!
    

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.10, 0.15, 0.18]
        let bill = Double(billLabel.text!) ?? 0
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = tip + bill
        totalLabel.text = String(format: "$%.2f", total)
        tipLabel.text = String(format: "$%.2f", tip)
        
    }
   
 /*   @IBAction func customTipCalc(_ sender: Any) {
        let bill = Double(billLabel.text!) ?? 0
        let tip = Double(customTipLabel.text!) ?? 0
        let total = tip + bill
        totalLabel.text = String(format: "$%.2f", total)
        tipLabel.text = String(format: "$%.2f", tip)
    }
    */
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}
