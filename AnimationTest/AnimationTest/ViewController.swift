//
//  ViewController.swift
//  AnimationTest
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBAction func animateButtonPressed(sender: AnyObject) {
        for loopNumber in 0...10 {
            
            // set up some constants for the animation
            let duration : NSTimeInterval = 1.0
            let delay : NSTimeInterval = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
            // set up some constants for the fish
            let size : CGFloat = CGFloat( Int(rand()) %  40 + 20.0)
            let yPosition : CGFloat = CGFloat( Int(rand()) %  200 + 20.0)
            
            // create the fish and add it to the screen
            let fish = UIImageView()
            fish.image = UIImage(named: "blue-fish.png")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320-size, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()

        
            })
        

    }

}
}
