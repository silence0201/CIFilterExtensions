//
//  CIConvolution9VerticalFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIConvolution9VerticalFilter {
    
    public var bias: NSNumber = 0
    public var image: CIImage
    public var weights: CIVector = CIVector(values: [0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0], count: 9)
    
    public init(bias: NSNumber = 0, image: CIImage, weights: CIVector = CIVector(values: [0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0], count: 9)){
        self.bias = bias
        self.image = image
        self.weights = weights
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIConvolution9Vertical") else { return nil }
        filter.setValue(bias, forKey: "inputBias")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(weights, forKey: "inputWeights")
        return filter
    }
    
}

extension CIImage {
    
    public func convolution9VerticalFilter(bias: NSNumber = 0, weights: CIVector = CIVector(values: [0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0], count: 9)) -> CIImage? {
        guard let filter = CIFilter(name: "CIConvolution9Vertical") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(bias, forKey: "inputBias")
        filter.setValue(weights, forKey: "inputWeights")
        return filter.outputImage
    }
    
}

