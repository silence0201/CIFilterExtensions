//
//  CIAreaHistogramFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIAreaHistogramFilter {
    
    public var count: NSNumber = 64
    public var image: CIImage
    public var scale: NSNumber = 1
    public var extent: CIVector = CIVector(values: [0.0, 0.0, 640.0, 80.0], count: 4)
    
    public init(count: NSNumber = 64, image: CIImage, scale: NSNumber = 1, extent: CIVector = CIVector(values: [0.0, 0.0, 640.0, 80.0], count: 4)){
        self.count = count
        self.image = image
        self.scale = scale
        self.extent = extent
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIAreaHistogram") else { return nil }
        filter.setValue(count, forKey: "inputCount")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(scale, forKey: "inputScale")
        filter.setValue(extent, forKey: "inputExtent")
        return filter
    }
    
}

extension CIImage {
    
    public func areaHistogramFilter(count: NSNumber = 64, scale: NSNumber = 1, extent: CIVector = CIVector(values: [0.0, 0.0, 640.0, 80.0], count: 4)) -> CIImage? {
        guard let filter = CIFilter(name: "CIAreaHistogram") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(count, forKey: "inputCount")
        filter.setValue(scale, forKey: "inputScale")
        filter.setValue(extent, forKey: "inputExtent")
        return filter.outputImage
    }
    
}

