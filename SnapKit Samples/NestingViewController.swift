//
//  NestingViewController.swift
//  SnapKit Samples
//
//  Created by Sahand Nayebaziz on 12/16/15.
//  Copyright © 2015 Sahand Nayebaziz. All rights reserved.
//

import UIKit

class NestingViewController: SampleViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Initialize your new subviews
        let myBlueRectangle = UIView()
        myBlueRectangle.layer.borderColor = view.tintColor.CGColor
        myBlueRectangle.layer.borderWidth = 2
        
        let myOrangeRectangle = UIView()
        myOrangeRectangle.backgroundColor = SamplesColors.orange
        
        // Add your subviews to the view heirarchy.
        //
        // * Notice here that myBlueRectangle is added as a subview of 'view', the view controller's view, 
        //   while myOrangeRectangle is added as a subview of myBlueRectangle! Voilà! You have nested views!
        //   Now that each view is a subview of another view, we can use constraints to position them how we'd like!
        //
        view.addSubview(myBlueRectangle)
        myBlueRectangle.addSubview(myOrangeRectangle)
        
        // Make your constraints!
        //
        // * Here we are going to get a bit fancier with our constraints. If you've read the 'Centering' example,
        //   you've seen how we can use 'size' and 'center' to quickly set up height, width, centerX, and centerY. 
        //   Here, we're going to give our subviews, myBlueRectangle and myOrangeRectangle, the sizes and positions
        //   that we'd like them to have but with a different method! 
        //   
        //   Instead of giving them specific 'sizes', we're going to constrain each subview to the sides of its
        //   superview. This can give each subview the size and position that we want it to have, without us having
        //   to worry about calculating an exact, floating-point size! We'll set them up one by one here so you can see what we mean.
        //
        // * First, let's do myBlueRectangle. Let's say we want myBlueRectangle to be constrained to 'view' with a padding of 
        //   200 on the top, 100 on the bottom, and 50 on the left and right Here's how we can do that. Bonus: These constraints
        //   can be added with even less code using 'make.edges.equalTo(view).inset' and a call to 'UIInsetEdgesMake'!
        //
        myBlueRectangle.snp_makeConstraints { make in
            make.top.equalTo(view.snp_top).offset(200)
            make.bottom.equalTo(view.snp_bottom).offset(-100)
            make.left.equalTo(view.snp_left).offset(50)
            make.right.equalTo(view.snp_right).offset(-50)
        }
        
        // * Now let's install constraints on myOrangeRectangle, which we already know is a subview of myBlueRectangle after 
        //   our code on line 31 ran! Here, we will do the same thing we did above, using the sides of myBlueRectangle to set
        //   the constraints on myOrangeRectangle.
        //
        myOrangeRectangle.snp_makeConstraints { make in
            make.top.equalTo(myBlueRectangle).offset(16)
            make.bottom.equalTo(myBlueRectangle).offset(-16)
            make.left.equalTo(myBlueRectangle).offset(16)
            make.right.equalTo(myBlueRectangle).offset(-16)
        }
        
        // * Did you notice anything different about the way we applied constraints to myBlueRectangle vs myOrangeRectangle?
        //   With myBlueRectangle, we explicitly set constraints using the top, bottom, left, and right of 'view'. This is helpful
        //   if say, you want the TOP of one subview to be some offset away from the BOTTOM of another subview. This would look like:
        //
        //   make.top.equalTo(otherSubview.snp_bottom).offset(100)
        //
        //   If you do not specify, SnapKit will use defaults. We didn't specify for myOrangeRectangle because each of our constraints
        //   (top, bottom, left, and right) were being installed on matching constraints of myBlueRectangle!
        //
    }

}
