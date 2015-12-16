//
//  SamplesColors.swift
//  SnapKit Samples
//
//  Created by Sahand Nayebaziz on 12/15/15.
//  Copyright © 2015 Sahand Nayebaziz. All rights reserved.
//

import UIKit

struct SamplesColors {
    private static func createColorFromRGB(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    static var lightBlue: UIColor {
        return createColorFromRGB(20, g: 170, b: 239)
    }
}