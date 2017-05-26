//
//  CIZoomBlurFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIZoomBlurFilter {
    
    public var image: CIImage
    public var amount: NSNumber = 20
    public var center: CIVector = CIVector(values: [150.0, 150.0], count: 2)
    
    public init(image: CIImage, amount: NSNumber = 20, center: CIVector = CIVector(values: [150.0, 150.0], count: 2)){
        self.image = image
        self.amount = amount
        self.center = center
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIZoomBlur") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(amount, forKey: "inputAmount")
        filter.setValue(center, forKey: "inputCenter")
        return filter
    }
    
}

extension CIImage {
    
    public func zoomBlurFilter(amount: NSNumber = 20, center: CIVector = CIVector(values: [150.0, 150.0], count: 2)) -> CIImage? {
        guard let filter = CIFilter(name: "CIZoomBlur") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(amount, forKey: "inputAmount")
        filter.setValue(center, forKey: "inputCenter")
        return filter.outputImage
    }
    
}

