//
//  SamplesTableViewDelegate.swift
//  SnapKit Samples
//
//  Created by Sahand Nayebaziz on 12/15/15.
//  Copyright © 2015 Sahand Nayebaziz. All rights reserved.
//

import UIKit

class SamplesTableViewDelegate: NSObject, UITableViewDelegate {

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 110
    }
}
