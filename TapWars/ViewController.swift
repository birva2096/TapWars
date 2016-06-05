//
//  ViewController.swift
//  TapWars
//
//  Created by BIRVA PATEL on 25/03/16.
//  Copyright © 2016 BirvaPatel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var TopBtn: UIButton!
    @IBOutlet weak var BtmBtn: UIButton!
    @IBOutlet weak var endScene: UIButton!
    @IBOutlet weak var TopLabel: UILabel!
    @IBOutlet weak var BtmLabel: UILabel!

    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        score = 0;
        BlueLabel.text = "\(score)"
        RedLabel.text = "\(score)"
        
        BlueLabel.transform = CGAffineTransformMakeRotation(3.14) //to transform the label by 180(pi)
        endScene.hidden = true
        TopLabel.hidden = true
        BtmLabel.hidden = true
        
        
    }
    @IBAction func EndScene(sender: AnyObject) {
        endScene.hidden = true
        TopLabel.hidden = true
        BtmLabel.hidden = true
        sleep(2)
        exit(0);

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TopAction(sender: AnyObject) {
        score++
        BlueLabel.text = "\(score)"
        RedLabel.text = "\(score)"
        testScore();
    }

    @IBAction func BtmAction(sender: AnyObject) {
        score--
        BlueLabel.text = "\(score)"
        RedLabel.text = "\(score)"
        testScore();
    }
    
    func testScore()
    {
        if score>=10 {
            endScene.hidden = false
            TopLabel.hidden = false
            BtmLabel.hidden = false
            TopLabel.text = "Winner!!!!"
            BtmLabel.text = "Loser!!!"
          
            
        }
        else if score <= -10{
            endScene.hidden = false
            TopLabel.hidden = false
            BtmLabel.hidden = false
            TopLabel.text = "Loser!!!!"
            BtmLabel.text = "Winner!!!"

        }
    }

}

