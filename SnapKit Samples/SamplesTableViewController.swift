//
//  SamplesTableViewController.swift
//  SnapKit Samples
//
//  Created by Sahand Nayebaziz on 12/15/15.
//  Copyright © 2015 Sahand Nayebaziz. All rights reserved.
//

import UIKit

class SamplesTableViewController: UITableViewController {
    
    let dataSource = SamplesTableViewDataSource()
    let delegate = SamplesTableViewDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Samples"
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.registerClass(SamplesTableViewCell.self, forCellReuseIdentifier: "SamplesTableViewCell")
    }

}
