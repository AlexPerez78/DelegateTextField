//
//  ViewController.swift
//  TextFields
//
//  Created by Jason on 11/11/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var characterCountLabel: UILabel!
    @IBOutlet weak var editingSwitch: UISwitch!
    
    // Text Field Delegate objects
    let emojiDelegate = EmojiTextFieldDelegate()
    let colorizerDelegate = ColorizerTextFieldDelegate()
    let RandomColorDelegatef = RandomColorDelegate()
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashTextDelegate = CashTextFieldDelegate()

    
    // Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // set the label to be hidden
        //self.characterCountLabel.hidden = true
        
        // Set the three delegates
        self.textField1.delegate = zipCodeDelegate
        self.textField2.delegate = cashTextDelegate
        self.textField3.delegate = self
        
        self.editingSwitch.setOn(false, animated: false)
    }

    //If the Toggle switch is on, then user can start to write
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return self.editingSwitch.on
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    //Toggle Switch to be on or Off
    @IBAction func toggleSwitch(sender: AnyObject) {
        
        if !(sender as! UISwitch).on {
            self.textField3.resignFirstResponder()
        }
    }
}

