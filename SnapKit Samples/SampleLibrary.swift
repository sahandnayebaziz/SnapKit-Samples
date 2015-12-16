//
//  SampleLibrary.swift
//  SnapKit Samples
//
//  Created by Sahand Nayebaziz on 12/15/15.
//  Copyright © 2015 Sahand Nayebaziz. All rights reserved.
//

import UIKit

class SampleLibrary {
    
    static let go = SampleLibrary()
    
    private var samples: [Sample] = []
    
    func getSamples() -> [Sample] {
        if samples.isEmpty {
            samples = createSamples()
        }
        return samples
    }
    
    private func createSamples() -> [Sample] {
        var samples: [Sample] = []
        
        samples.append(Sample(name: "Centering a subview", description: "Centering a subview is easy with the center, centerX, and centerY constraints.", view: UIView.self))
        samples.append(Sample(name: "Nesting views", description: "With constraints installed on the proper parent views, you can nest views within views and enjoy the same ease of use laying them out, all from code.", view: UIView.self))
        
        return samples
    }
}