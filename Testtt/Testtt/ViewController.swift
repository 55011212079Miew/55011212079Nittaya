//
//  ViewController.swift
//  Testtt
//
//  Created by student on 11/21/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import CoreMotion
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()
    
    @IBAction func one(sender: AnyObject) {
        coreAudio()
    }
    
    
    @IBAction func two(sender: AnyObject) {
        
    }
    
    @IBAction func three(sender: AnyObject) {
        
    }
    
    func coreAudio(){
        var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("เพลงกล่อมเด็กภาคอีสาน (Lullaby Northeast)", ofType: "mp3")!)
        var error: NSError?
        
        audioPlayer = AVAudioPlayer(contentsOfURL: url1, error: &error)
        
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }
    func stopCoreAudio(){
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //    override func viewWillDisappear(animated: Bool) {
    //        audioPlayer.stop()
    //    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
