//
//  ViewController.swift
//  ChessClock
//
//  Created by Zumbarlal Saindane on 20/02/17.
//  Copyright © 2017 zums. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer1 = Timer()
    var timer2 = Timer()
    var counter1 = 0
    var counter2 = 0
    

    
    @IBOutlet weak var player1Button: UIButton!
    @IBOutlet weak var player2Button: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    

    @IBOutlet weak var resetAllButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label1.text = String(0)
        label2.text = String(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateCounter1()
    {
        counter1 += 1
        label1.text = String(counter1)
    }
    
    func updateCounter2()
    {
        counter2 += 1
        label2.text = String(counter2)
    }

    @IBAction func player1(_ sender: AnyObject) {
        timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter2), userInfo: nil, repeats: true)
        
        timer1.invalidate()
        
        player1Button.isEnabled = false
        player1Button.alpha = 0.2
        
        player2Button.isEnabled = true
        player2Button.alpha = 1
    }
    
    
    @IBAction func player2(_ sender: AnyObject) {
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter1), userInfo: nil, repeats: true)
        
        timer2.invalidate()
        
        player2Button.isEnabled = false
        player2Button.alpha = 0.2
        
        player1Button.isEnabled = true
        player1Button.alpha = 1
    }
    
    
    @IBAction func reset(_ sender: AnyObject) {
        timer1.invalidate()
        timer2.invalidate()
        counter1 = 0
        label1.text = String(counter1)
        
        
        counter2 = 0
        label2.text = String(counter2)
        
        player1Button.isEnabled = true
        player1Button.alpha = 1
        player2Button.isEnabled = true
        player2Button.alpha = 1
        
    }
    @IBAction func stop(_ sender: AnyObject) {
        timer1.invalidate()
        timer2.invalidate()
        
        
    }

}

