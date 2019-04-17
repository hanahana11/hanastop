//
//  ViewController.swift
//  hanastop
//
//  Created by 末利　花 on 2019/04/16.
//  Copyright © 2019年 末利　花. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @objc var timer = Timer()
    var startime: TimeInterval = 0
    var elapseTime: Double = 0.0
    var time : Double = 0.0
    var count : Float = 0
    
    @IBOutlet weak var labelTimer: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    }
    @objc func Timerup() {
        count = count + 0.01
        labelTimer.text = String(format: "%.2f", count)
    }
    
        
    
    
    @IBAction func start(){
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector: #selector(Timerup),
                                         userInfo: nil,
                                         repeats: true)
        }
    }
    
    @IBAction func stop(){
        if timer.isValid {
            timer.invalidate()
        }
    }

    @IBAction func reset() {
        if timer.isValid{
            timer.invalidate()
            labelTimer.text = String(0.0)
            count = 0
        }
        
        if !timer.isValid{
            labelTimer.text = String(0.0)
            count = 0
        }
    }



}
