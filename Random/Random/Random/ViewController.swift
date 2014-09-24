//
//  ViewController.swift
//  Random
//
//  Created by student on 9/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var i=0,j=0,k=0
 
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var three: UIButton!
    
    
    @IBOutlet weak var oneL: UILabel!
    @IBOutlet weak var twoL: UILabel!
    @IBOutlet weak var treeL: UILabel!
    
    @IBOutlet weak var reset: UIButton!
    
    
    @IBAction func one(sender: UIButton) {
        i=i+1
        oneL.text = String(i)
    }
    @IBAction func two(sender: UIButton) {
        j=j+1
        twoL.text = String(j)
    }
    @IBAction func threee(sender: UIButton) {
        k=k+1
        treeL.text = String(k)
    }
   
    @IBAction func resetFunc(sender: UIButton) {
        i=0
        j=0
        k=0
        oneL.text = String(i)
        twoL.text = String(j)
        treeL.text = String(k)
        
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

