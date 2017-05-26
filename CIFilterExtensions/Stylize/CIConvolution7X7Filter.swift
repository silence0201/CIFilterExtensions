//
//  CIConvolution7X7Filter.swift
//  Demo
//
//  Created by Silence on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

open class CIConvolution7X7Filter {
    
    open var bias: NSNumber = 0
    open var image: CIImage
    open var weights: CIVector = CIVector(values: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], count: 49)
    
    required public init(bias: NSNumber = 0, image: CIImage, weights: CIVector = CIVector(values: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], count: 49)){
        self.bias = bias
        self.image = image
        self.weights = weights
    }
    
    open func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIConvolution7X7") else { return nil }
        filter.setValue(bias, forKey: "inputBias")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(weights, forKey: "inputWeights")
        return filter
    }
    
}

extension CIImage {
    
    public func convolution7X7Filter(bias: NSNumber = 0, weights: CIVector = CIVector(values: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0], count: 49)) -> CIImage? {
        guard let filter = CIFilter(name: "CIConvolution7X7") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(bias, forKey: "inputBias")
        filter.setValue(weights, forKey: "inputWeights")
        return filter.outputImage
    }
    
}

