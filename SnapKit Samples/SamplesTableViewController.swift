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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Samples"
        tableView.dataSource = dataSource
        tableView.registerClass(SamplesTableViewCell.self, forCellReuseIdentifier: "SamplesTableViewCell")
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 110
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let sampleForRow = SampleLibrary.go.getSamples()[indexPath.row]
        
        guard let viewControllerType = sampleForRow.viewController as? SampleViewController.Type else {
            fatalError("Sample must have a valid SampleViewController-based view controller to be displayed")
        }
        
        let viewController = viewControllerType.init()
        viewController.title = sampleForRow.name
        
        navigationController?.pushViewController(viewController, animated: true)
    }

}
