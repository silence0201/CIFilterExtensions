//
//  CIOpTileFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIOpTileFilter {
    
    public var width: NSNumber = 65
    public var image: CIImage
    public var center: CIVector = CIVector(values: [150.0, 150.0], count: 2)
    public var angle: NSNumber = 0
    public var scale: NSNumber = 2.8
    
    public init(width: NSNumber = 65, image: CIImage, center: CIVector = CIVector(values: [150.0, 150.0], count: 2), angle: NSNumber = 0, scale: NSNumber = 2.8){
        self.width = width
        self.image = image
        self.center = center
        self.angle = angle
        self.scale = scale
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIOpTile") else { return nil }
        filter.setValue(width, forKey: "inputWidth")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(center, forKey: "inputCenter")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(scale, forKey: "inputScale")
        return filter
    }
    
}

extension CIImage {
    
    public func opTileFilter(width: NSNumber = 65, center: CIVector = CIVector(values: [150.0, 150.0], count: 2), angle: NSNumber = 0, scale: NSNumber = 2.8) -> CIImage? {
        guard let filter = CIFilter(name: "CIOpTile") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(width, forKey: "inputWidth")
        filter.setValue(center, forKey: "inputCenter")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(scale, forKey: "inputScale")
        return filter.outputImage
    }
    
}

