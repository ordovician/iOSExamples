//
//  ViewController.swift
//  ScrollToActiveField
//
//  Created by Erik Engheim on 18/09/14.
//  Copyright (c) 2014 Translusion. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var topField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = view.frame.size
        registerKeyboardNotifications()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
            
            
            var frame = scrollView.frame
            frame.size.height -= keyboardSize.height
            scrollView.frame = frame
        }
    }
    
    
    func keyboardWillBeHidden(notification : NSNotification) {
        self.scrollView.frame = self.view.frame
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func scrollBack(sender: AnyObject) {
        self.scrollView.frame = self.view.frame
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
}

