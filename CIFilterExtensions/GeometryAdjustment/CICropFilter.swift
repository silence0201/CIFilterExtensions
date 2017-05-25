//
//  CICropFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CICropFilter {
    
    public var image: CIImage
    public var rectangle: CIVector = CIVector(values: [-8.98846567431158e+307, -8.98846567431158e+307, 1.79769313486232e+308, 1.79769313486232e+308], count: 4)
    
    public init(image: CIImage,
                rectangle: CIVector = CIVector(values: [-8.98846567431158e+307, -8.98846567431158e+307, 1.79769313486232e+308, 1.79769313486232e+308],
                count: 4)){
        self.image = image
        self.rectangle = rectangle
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CICrop") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(rectangle, forKey: "inputRectangle")
        return filter
    }
    
}

extension CIImage {
    
    public func cropFilter(rectangle: CIVector = CIVector(values: [-8.98846567431158e+307, -8.98846567431158e+307, 1.79769313486232e+308, 1.79769313486232e+308],
                                                          count: 4)) -> CIImage? {
        guard let filter = CIFilter(name: "CICrop") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(rectangle, forKey: "inputRectangle")
        return filter.outputImage
    }
    
}
