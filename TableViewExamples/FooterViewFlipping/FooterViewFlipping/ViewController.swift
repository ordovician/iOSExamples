//
//  ViewController.swift
//  FooterViewFlipping
//
//  Created by Erik Engheim on 17/11/14.
//
//

import UIKit

//extension CGSize {
//    func +(left: Self, right: Self) -> Self {
//    
//    }
//}

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "Footer", bundle: nil)
        let views = nib.instantiateWithOwner(nil, options: nil) as [UIView]
        let footer = views[0]
        self.tableView.tableFooterView = footer
    }

//    override func viewWillLayoutSubviews() {
//        if let tableView = self.tableView {
//            println("TableView Size: \(tableView.frame.size)")
//            let tableSize = tableView.frame.size
//            
//            if let footer = self.tableView.tableFooterView {
//                println("Footer Size: \(footer.frame.size)")
//                let offset = footer.frame.size.height
//                let minContentHeight = tableSize.height - offset
//                
//                tableView.contentSize = footer.frame.size
//            }
//        }
//    }

}

