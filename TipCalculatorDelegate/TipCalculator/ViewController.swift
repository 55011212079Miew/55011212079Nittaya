//
//  ViewController.swift
//  TipCalculator
//
//  Created by Student on 9/12/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    @IBOutlet weak var ttt: UIButton!
    @IBOutlet var totalTextField : UITextField!
    @IBOutlet var textPctSlider : UISlider!
    @IBOutlet var textPctLabel : UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    var possibleTips = Dictionary<Int, (tipAmt:Double, total:Double)>()
    var sortedKeys:[Int] = []
    func refreshUI(){
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        textPctSlider.value = Float(tipCalc.taxPct) * 100.0
        textPctLabel.text = "Tax Percentage(\(Int(textPctSlider.value))%)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func calculateTapped(sender :AnyObject){
    tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
    possibleTips = tipCalc.returnPossibletips()
        sortedKeys = sorted(Array(possibleTips.keys))
        tableView.reloadData()
    
        }
    
    @IBAction func taxtPercentageChanged(sender :AnyObject){
    tipCalc.taxPct = Double(textPctSlider.value)/100.0
    refreshUI()
        
    }
    
    @IBAction func viewTapped(sender :AnyObject){
    totalTextField.resignFirstResponder()
}


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
        return sortedKeys.count
    }
    func numberOfSectionsInTabbleView(tableView: UITableView) -> Int{
        return 1
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        let tipPct = sortedKeys[indexPath.row]
        let tipAmt = possibleTips[tipPct]!.tipAmt
        let total = possibleTips[tipPct]!.total
        
        cell.textLabel!.text = "\(tipPct)%"
        cell.detailTextLabel!.text = String(format: "Tip: $%0.2f, Total: $%0.2f", tipAmt, total)
        return cell
        
    }

}


