//
//  ViewController.swift
//  tippy
//
//  Created by Haritha Mohan on 12/15/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var one = 0.15
    var two = 0.18
    var three = 0.2
    // outlets
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    //@IBOutlet weak var tipBar: UISlider!
    // user actions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
//        let one = 0.15
//        let two = 0.18
//        let three = 0.2
        //Calculate the tip and total
        //let tipPercentages = [0.15, 0.18, 0.2]
        var tipPercentages = [one, two, three]
        var tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        var total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    @IBAction func SettingsButton(_ sender: Any) {
        //let defaults = UserDefaults.standard
    }
}

