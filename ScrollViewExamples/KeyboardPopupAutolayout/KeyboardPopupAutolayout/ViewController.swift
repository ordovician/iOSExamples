//
//  ViewController.swift
//  KeyboardPopupAutolayout
//
//  Created by Erik Engheim on 19/09/14.
//  Copyright (c) 2014 Translusion. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var uriField: UITextField!
    @IBOutlet var bottomConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerKeyboardNotifications()
    }
    
    deinit {
        let center = NSNotificationCenter.defaultCenter()
        center.removeObserver(self)
    }


    func registerKeyboardNotifications() {
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWasShown:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillBeHidden:", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    func keyboardWasShown(notification : NSNotification) {
        let info = notification.userInfo
        if let keyboardFrame: NSValue = info?[UIKeyboardFrameBeginUserInfoKey] as? NSValue {
            let keyboardSize = keyboardFrame.CGRectValue().size
            
            bottomConstraint.constant = keyboardSize.height + uriField.frame.height
            view.layoutIfNeeded()
        }
    }
    
    
    func keyboardWillBeHidden(notification : NSNotification) {
        bottomConstraint.constant = 29
        view.layoutIfNeeded()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

