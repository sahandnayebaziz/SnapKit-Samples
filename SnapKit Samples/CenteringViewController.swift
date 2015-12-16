//
//  CenteringViewController.swift
//  SnapKit Samples
//
//  Created by Sahand Nayebaziz on 12/16/15.
//  Copyright © 2015 Sahand Nayebaziz. All rights reserved.
//

import UIKit

class CenteringViewController: SampleViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize your new subview
        let myBlueRectangle = UIView()
        myBlueRectangle.backgroundColor = view.tintColor
        
        // Add your new subview to the parent view using addSubview() so you can install common constraints
        //
        // * If your subview isn't a part of the view heirarchy, it won't be possible to reference other
        //   views in the heirarchy for constraints like leading, trailing, or centering.
        //
        view.addSubview(myBlueRectangle)
        
        // Make your constraints!
        //
        // * Here we are using "size" and "center" to apply the simple constraints we'd like to see. "Size" and "center"
        //   are both great shortcuts that can be used to save you time. "Size" allows us to affect both height and width
        //   at the same time, while "center" allows us to affect both centerX and centerY at the same time.
        //
        // * Notice the size constraint here is set to a simple float value of 100, while the center constraint is a bit more
        //   interesting. The center constraint here takes the same value that 'view' has as center. 'view', in this case, refers
        //   to myBlueRectangle's parent view, the whole view for the view controller! This will cause myBlueRectangle to be centered
        //   in 'view'.
        //
        // * Bonus: How long do you think myBlueRectangle will stay centered in 'view'? Initially? Until the next viewWillAppear? Forever?
        //   The answer is forever! Well, until you remove myBlueRectangle as a subview or update, remove, or remake its constraints!
        //   Using AutoLayout constraints helps you prepare for different screen sizes, orientations, and shifts in the viewing window.
        //   The 'center' constraint will hang around and keep myBlueRectangle centered through these changes until you specify something
        //   different :)
        //
        myBlueRectangle.snp_makeConstraints { make in
            make.size.equalTo(100)
            make.center.equalTo(view.snp_center)
        }
    }
}
