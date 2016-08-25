//
//  ViewController.swift
//  iosTipping
//
//  Created by G on 24/08/16.
//  Copyright © 2016 gaberdios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterBillAmount: UITextField!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    @IBOutlet weak var splitLbl: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var eachLbl: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

