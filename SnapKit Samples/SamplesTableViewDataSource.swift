//
//  SamplesTableViewDataSource.swift
//  SnapKit Samples
//
//  Created by Sahand Nayebaziz on 12/15/15.
//  Copyright © 2015 Sahand Nayebaziz. All rights reserved.
//

import UIKit

class SamplesTableViewDataSource: NSObject, UITableViewDataSource {

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SampleLibrary.go.getSamples().count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SamplesTableViewCell", forIndexPath: indexPath) as! SamplesTableViewCell
        cell.configureCell(SampleLibrary.go.getSamples()[indexPath.row])
        return cell
    }
}
