//
//  Master.swift
//  NavigationAndStatusbar
//
//  Created by Erik Engheim on 22/09/14.
//  Copyright (c) 2014 Translusion. All rights reserved.
//

import UIKit

class Master : UIViewController {
    
    
    @IBAction func showDetail(sender: AnyObject) {
        let detail = Detail(nibName: "Detail", bundle: nil)
        self.presentViewController(detail, animated: true, completion: nil)
    }
    
    @IBAction func navigateToDetails(sender: AnyObject) {
        self.navigationController?.navigationBarHidden = false

        let detail = Detail(nibName: "Detail", bundle: nil)
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
