//
//  CICircularWrapFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CICircularWrapFilter {
    public var image: CIImage
    public var center: CIVector = CIVector(values: [150.0, 150.0], count: 2)
    public var angle: NSNumber = 0
    public var radius: NSNumber = 150
    
    public init(image: CIImage,
                center: CIVector = CIVector(values: [150.0, 150.0], count: 2),
                angle: NSNumber = 0,
                radius: NSNumber = 150){
        self.image = image
        self.center = center
        self.angle = angle
        self.radius = radius
    }
}

extension CIImage {
    public func circularWrapFilter(center: CIVector = CIVector(values: [150.0, 150.0], count: 2),
                                   angle: NSNumber = 0,
                                   radius: NSNumber = 150) -> CIImage? {
        guard let filter = CIFilter(name: "CICircularWrap") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(center, forKey: "inputCenter")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(radius, forKey: "inputRadius")
        return filter.outputImage
    }
}
