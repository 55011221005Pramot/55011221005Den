//
//  ViewController.swift
//  CoreDataExample
//
//  Created by student on 10/31/14.
//  Copyright (c) 2014 Pramot. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController ,UITableViewDataSource{
    
   

   //var items = [String]()
   var items = [NSManagedObject]()
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addItem(sender: AnyObject) {
        
        var alert = UIAlertController(title: "New item", message: "Add a new item", preferredStyle: .Alert)
           println("++++++++++++++++++++save")
        
        let saveAction = UIAlertAction(title: "Save", style: .Default) {(action: UIAlertAction!) -> Void in
            
        let textField = alert.textFields![0] as UITextField
            
        let textField2 = alert.textFields![1] as UITextField
         let textField3 = alert.textFields![2] as UITextField
              println("++++++++++++++++++++tf")
           //self.items.append(textField.text)
            
        self.saveName(textField.text)
        self.saveName(textField2.text)
        self.saveName(textField3.text)
        self.tableView.reloadData()
           // println(textField.text)
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default){
            (action: UIAlertAction!) -> Void in
        }
        alert.addTextFieldWithConfigurationHandler { (textField: UITextField!) -> Void in
            
        }
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert,
            animated: true,
            completion: nil)
        
    }
    
    
    @IBAction func Delete(sender: AnyObject) {
        
        
        
    }
    
    
     func saveName(name:String){
        //1
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        
        let managedContext = appDelegate.managedObjectContext!
        
        //2
        let entity = NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
            println("++++++++++++++++++++\(entity)")
      
        let item = NSManagedObject(entity: entity!,insertIntoManagedObjectContext: managedContext )
        
        //3
        item.setValue(name, forKey: "name")
        println("++++++++++++++++++++\(item)")
        
        var error: NSError?
        if !managedContext.save(&error){
            println("Could not save \(error),\(error?.userInfo)")
        }
        items.append(item)
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        //cell.textLabel!.text = items[indexPath.row]

        let item = items[indexPath.row]
        cell.textLabel!.text = item.valueForKey("name") as String?
        
        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        let fetchRequest = NSFetchRequest(entityName: "Item")
        
        var error: NSError?
        
        let fetchedResults = managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
        
        if let results = fetchedResults {
            items = results
        }else{
            println("Could not fetch\(error),\(error!.userInfo)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Shopping List\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

