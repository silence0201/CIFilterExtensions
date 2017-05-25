//
//  CIDotScreenFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIDotScreenFilter {
    
    public var width: NSNumber = 6
    public var image: CIImage
    public var sharpness: NSNumber = 0.7
    public var center: CIVector = CIVector(values: [150.0, 150.0], count: 2)
    public var angle: NSNumber = 0
    
    public init(width: NSNumber = 6, image: CIImage, sharpness: NSNumber = 0.7, center: CIVector = CIVector(values: [150.0, 150.0], count: 2), angle: NSNumber = 0){
        self.width = width
        self.image = image
        self.sharpness = sharpness
        self.center = center
        self.angle = angle
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIDotScreen") else { return nil }
        filter.setValue(width, forKey: "inputWidth")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(sharpness, forKey: "inputSharpness")
        filter.setValue(center, forKey: "inputCenter")
        filter.setValue(angle, forKey: "inputAngle")
        return filter
    }
    
}

extension CIImage {
    
    public func dotScreenFilter(width: NSNumber = 6, sharpness: NSNumber = 0.7, center: CIVector = CIVector(values: [150.0, 150.0], count: 2), angle: NSNumber = 0) -> CIImage? {
        guard let filter = CIFilter(name: "CIDotScreen") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(width, forKey: "inputWidth")
        filter.setValue(sharpness, forKey: "inputSharpness")
        filter.setValue(center, forKey: "inputCenter")
        filter.setValue(angle, forKey: "inputAngle")
        return filter.outputImage
    }
    
}

