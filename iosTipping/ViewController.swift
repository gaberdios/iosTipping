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
  //  var tip = TipModel(billAmount: 0.0, tipPercent: 0)
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0, splitNum: 0)
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        tipPercentValue()
        splitNumValue()

        
        
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    
        
        
    }
    
    // MARK: - @IBOutlet Action
    
    @IBAction func tipPercentSliderChanged(_ sender: UISlider) {
        
        let currentValue = Int(sender.value)
        
        tipPercentLbl.text = "TIP \(currentValue)%"
        
        
        calcTip()
    }
    
    @IBAction func splitSliderChanged(_ sender: UISlider) {
        
        tipPercentValue()
        calcTip()
        
        let currentValue = Int(sender.value)
        
        splitLbl.text = "SPLIT \(currentValue)"
    }
    
    // MARK: - Functions
    
    func calcTip() {
        tip.tipPercent = Int(tipPercentSlider.value)
        tip.billAmount = ((enterBillAmount.text)! as NSString).doubleValue
        tip.splitNum = Int(splitSlider.value)
        tip.calculateTip()
        updateUI()
    }
    
    func updateUI() {
        tipAmountLbl.text = String(format: "$%0.2f", tip.tipAmount)
        totalAmountLbl.text = String(format: "$%0.2f", tip.totalAmount)
        eachLbl.text = String(format: "$%0.2f", tip.eachAmount)
    }
    
    func tipPercentValue() {
        tipPercentLbl.text = "TIP \(Int(tipPercentSlider.value))%"
    }
    
    func splitNumValue() {
        splitLbl.text = "SPLIT \(Int(splitSlider.value))"
    }
    

    
    
    
    
    
    
    
    
    
}



