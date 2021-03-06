//
//  ViewController.swift
//  swiftTable
//
//  Created by Student on 9/24/14.
//  Copyright (c) 2014 swiftTable. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    let cellIdentifier = "cellIdentifier"
    var tableData = ["Bus","Helicopter","Truck"]
    
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.registerClass(UITableViewCell.self, forHeaderFooterViewReuseIdentifier: self.cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell cell.textLabel?.text = self.tableData[indexPath.row]
        var imageName = UIImage(named: tableData[indexPath.row])
        cell.imageView?.image = imageName
        return cell
    }
    func func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    func func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let alert = UIAlertController(title: "Item selected", message: "You selected item \(indexPath.row)", preferredStyle: <#UIAlertControllerStyle#>.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: <#UIAlertActionStyle#>.Default, handler: {(alert: UIAlertAction) in println("An alert of type \(alert.style.hashValue) was tapped")}))
        self.presentedViewController(alert, animated: true, completion: nil))
    }

}

