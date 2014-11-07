//
//  ViewController.swift
//  exam
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate{
    
   
    @IBOutlet var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    func myVCDidFinish(controller: ColorTwoViewController, text: String){
        colorLabel.text = "Co: " + text
        if(text=="Red"){
            view.backgroundColor = UIColor.redColor()
            colorLabel.textColor = UIColor.redColor();
            colorLabel.backgroundColor = UIColor.darkGrayColor();
        }
        else if(text=="Bule"){
            view.backgroundColor = UIColor.blueColor()
            colorLabel.textColor = UIColor.blueColor();
            colorLabel.backgroundColor = UIColor.darkGrayColor();
        }
        else if(text=="Green"){
            view.backgroundColor = UIColor.greenColor()
            colorLabel.textColor = UIColor.greenColor();
            colorLabel.backgroundColor = UIColor.darkGrayColor();
    }
        controller.navigationController?.popViewControllerAnimated(true)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as ColorTwoViewController
            vc.colorString = colorLabel.text!
            vc.delegate = self
        }
    }

    

}

