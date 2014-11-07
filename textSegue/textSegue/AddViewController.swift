//
//  AddViewController.swift
//  textSegue
//
//  Created by student on 10/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
protocol AddViewControllerDelegate{
    func myVCDidFinish(controller:AddViewController,text:String)
}

class AddViewController: UIViewController {
    
    @IBOutlet var Label1: UILabel!
    @IBOutlet var Label2: UILabel!
    @IBOutlet var Label3: UILabel!
   
    var delegate:AddViewController? = nil

    @IBOutlet var name: UILabel!
    @IBOutlet var id: UILabel!
    @IBOutlet var major: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //func nemberList(studer:StuderData){
        //Label1.text = studer.name
        //Label2.text = studer.id
        //Label3.text = studer.major

    @IBAction func saveTextField(sender: UIBarButtonItem) {
        
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
