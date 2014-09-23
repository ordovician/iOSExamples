//
//  Settings.swift
//  SettingsPage
//
//  Created by Erik Engheim on 9/23/14.
//  Copyright (c) 2014 Erik Engheim. All rights reserved.
//

import UIKit

// This demonstrates how you can create something similar to the preference
// editor in the "Settings" app. A tip is to design a cell how you want it and
// then select the cell in the sidebar and duplicate it. This way you can quickly
// copy font sizes, indentation, autolayout etc.

// If you don't tap on the UITextField directly it wont get active (become first responder)
// With the code trick below you can make catch that a cell has been tapped and
// locate the textfield to make it first responder. To make this work, make sure
// selection is enabled for the UITableView but that each cell is set to not show
// selection.
class Settings : UITableViewController {
    override func viewDidLoad() {
        navigationItem.title = "Settings"
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        
        // The cells contentview is the one containing custom added components.
        if let subviews = cell?.contentView.subviews {
            
            // Find a subview which is a UITextField. Place cursor in this textfield.
            for view in subviews {
                if let textfield = view as? UITextField {
                    textfield.becomeFirstResponder()
                    break
                }
            }
        }
    }
}
