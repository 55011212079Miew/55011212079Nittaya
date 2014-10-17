//
//  ViewController.swift
//  Exam1
//
//  Created by student on 10/10/14.
//  Copyright (c) 2014 nittaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
   
    @IBOutlet weak var name1: UITextField!
    
    @IBOutlet weak var volume: UILabel!
    
    @IBOutlet weak var volume1: UITextField!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var price1: UITextField!
    
    @IBOutlet weak var total1: UITextField!
   
    @IBOutlet weak var table: UITableView!
    @IBAction func total(sender: AnyObject) {
    }
    
    @IBAction func profit(sender: AnyObject) {
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

