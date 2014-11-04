//
//  MyTable.swift
//  StoryboardCells
//
//  Created by Erik Engheim on 26/09/14.
//  Copyright (c) 2014 Translusion. All rights reserved.
//

import UIKit

class MyTable : UITableViewController {
    let stuff = ["hello", "how", "are", "you"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stuff.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("RecentCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = stuff[indexPath.row]
        return cell
    }
}
