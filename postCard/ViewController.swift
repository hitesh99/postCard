//
//  ViewController.swift
//  postCard
//
//  Created by Hitesh Sancheti on 26/10/14.
//  Copyright (c) 2014 Hitesh Sancheti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameText: UITextField!
    @IBOutlet weak var enterMessageText: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButton(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageText.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageText.text = ""
        enterMessageText.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

