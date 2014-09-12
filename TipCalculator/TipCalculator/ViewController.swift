//
//  ViewController.swift
//  TipCalculator
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var totalTextfield : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var resultsText : UITextView!
  
    @IBAction func calculateTapped(sender: AnyObject){}
    @IBAction func taxPercen(sender: AnyObject){}
    @IBAction func viewTapped(sender: AnyObject){}

    let tipCalc = TipCalculatorModel(total:33.33,taxpct:0.06)
    func refeshUI(){
        //1
        totalTextfield.text = String(format:"%0.2f",tipCalc.total)
        //2
        taxPctSlider.value = Float(tipCalc.taxPct)*100.0
        //3
        taxPctLabel.text="Tax Percentage(\(Int(taxPctSlider))%)"
        //4
        resultsTextView.text=""
    }
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




