//
//  ColorTwoViewController.swift
//  exam
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}

class ColorTwoViewController: UIViewController {
    
    var delegate:ColorTwoViewControllerDelegate? = nil
    
    var colorString = " "

    @IBAction func colorSelectionButton(sender: UIButton) {
    
        colorLabel.text = sender.titleLabel!.text!
        if(sender.titleLabel!.text!=="Red"){
            view.backgroundColor = UIColor.redColor()
            colorLabel.textColor = UIColor.redColor();
            colorLabel.backgroundColor = UIColor.darkGrayColor();
        }else if(sender.titleLabel!.text!=="Bule"){
            view.backgroundColor = UIColor.blueColor()
            colorLabel.textColor = UIColor.blueColor();
            colorLabel.backgroundColor = UIColor.darkGrayColor();
        }else if(sender.titleLabel!.text!=="Green"){
            view.backgroundColor = UIColor.greenColor()
            colorLabel.textColor = UIColor.greenColor();
            colorLabel.backgroundColor = UIColor.darkGrayColor();
        }
    }
   

    @IBOutlet weak var colorLabel: UILabel!
    
    @IBAction func saveColor(sender: UIBarButtonItem) {
            if(delegate != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        colorLabel.text = colorString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
