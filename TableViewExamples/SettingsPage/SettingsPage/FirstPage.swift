//
//  FirstPage.swift
//  SettingsPage
//
//  Created by Erik Engheim on 9/23/14.
//  Copyright (c) 2014 Erik Engheim. All rights reserved.
//

import UIKit

class FirstPage : UIViewController {
    
    @IBAction func showSettings(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Settings", bundle: nil)
        let viewcontroller: UIViewController = storyboard.instantiateInitialViewController() as UIViewController
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
}
