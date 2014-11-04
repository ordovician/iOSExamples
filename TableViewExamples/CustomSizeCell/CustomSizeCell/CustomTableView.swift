//
//  CustomTableView.swift
//  CustomSizeCell
//
//  Created by Erik Engheim on 09/10/14.
//  Copyright (c) 2014 Translusion. All rights reserved.
//

import UIKit

let kFirstCell = "FirstCell"
let kSecondCell = "SecondCell"
let kOtherCell = "OtherCell"

class CustomTableView : UITableViewController {
    override func viewDidLoad() {
        
        if NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_7_1 {
            self.tableView.estimatedRowHeight = 80
            self.tableView.rowHeight = UITableViewAutomaticDimension
        }

        
        for cellID in [kFirstCell, kSecondCell, kOtherCell] {
            let nib = UINib(nibName: cellID, bundle: nil)
            self.tableView.registerNib(nib, forCellReuseIdentifier: cellID)
        }
    }
    
//    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
//    }
//    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_7_1 {
            return 100
        }
        else {
            return UITableViewAutomaticDimension
        }
    }

    
    func cellIDForIndexPath(indexPath: NSIndexPath) -> String {
        switch indexPath.row {
        case 0:
            return kFirstCell
        case 1:
            return kSecondCell
        default:
            return kOtherCell
        }
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellID = self.cellIDForIndexPath(indexPath)
        let cell = self.tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as UITableViewCell
        
        return cell
    }
}
