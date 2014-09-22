//
//  Detail.swift
//  NavigationAndStatusbar
//
//  Created by Erik Engheim on 22/09/14.
//  Copyright (c) 2014 Translusion. All rights reserved.
//

import UIKit

class Detail : UIViewController {
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        self.navigationController?.navigationBarHidden = false
//    }
//    
//
//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.navigationBarHidden = true
    }
}
