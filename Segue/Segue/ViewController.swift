//
//  ViewController.swift
//  Segue
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 Pramot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, color2ViewControllerDelegate {
    
    @IBOutlet var colorLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller: color2ViewController, text: String){
        colorLable.text = "Co:" + text
        controller.navigationController?.popViewControllerAnimated(true)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as color2ViewController
            vc.colorString = colorLable.text!
            vc.delegate = self
            
        }
    }


}

