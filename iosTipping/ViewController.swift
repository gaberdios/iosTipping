//
//  ViewController.swift
//  iosTipping
//
//  Created by G on 24/08/16.
//  Copyright © 2016 gaberdios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - @IBOutlets
    @IBOutlet weak var enterBillAmount: UITextField!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    @IBOutlet weak var splitLbl: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var eachLbl: UILabel!
    
    // MARK: - Properties
    var tip = TipCalc(billAmount: 0.0, tipPercent: 0.0)

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    
        
    }

}

