//
//  PerformsTableViewBasicSetup.swift
//  July-28
//
//  Created by Vishal Singh on 28/07/18.
//  Copyright © 2018 v-i-s-h-a-l. All rights reserved.
//

import UIKit

protocol PerformsTableViewBasicSetup {
    func setupTableView()
    func registerNibsNamed(_ names: [String])
}

extension PerformsTableViewBasicSetup where Self: UITableViewController {
    
    func setupTableView() {
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44.0
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
    }
    
    func registerNibsNamed(_ names: [String]) {
        for name in names {
            tableView.register(UINib(nibName: name, bundle: nil), forCellReuseIdentifier: name)
        }
    }
}
