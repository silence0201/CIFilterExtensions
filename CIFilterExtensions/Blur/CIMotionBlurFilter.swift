//
//  CIMotionBlurFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIMotionBlurFilter {
    
    public var image: CIImage
    public var angle: NSNumber = 0
    public var radius: NSNumber = 20
    
    public init(image: CIImage, angle: NSNumber = 0, radius: NSNumber = 20){
        self.image = image
        self.angle = angle
        self.radius = radius
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIMotionBlur") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(radius, forKey: "inputRadius")
        return filter
    }
    
}

extension CIImage {
    
    public func motionBlurFilter(angle: NSNumber = 0, radius: NSNumber = 20) -> CIImage? {
        guard let filter = CIFilter(name: "CIMotionBlur") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(radius, forKey: "inputRadius")
        return filter.outputImage
    }
    
}

