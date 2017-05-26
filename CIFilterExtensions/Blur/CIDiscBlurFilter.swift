//
//  CIDiscBlurFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIDiscBlurFilter {
    
    public var image: CIImage
    public var radius: NSNumber = 8
    
    public init(image: CIImage, radius: NSNumber = 8){
        self.image = image
        self.radius = radius
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIDiscBlur") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(radius, forKey: "inputRadius")
        return filter
    }
    
}

extension CIImage {
    
    public func discBlurFilter(radius: NSNumber = 8) -> CIImage? {
        guard let filter = CIFilter(name: "CIDiscBlur") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(radius, forKey: "inputRadius")
        return filter.outputImage
    }
    
}

