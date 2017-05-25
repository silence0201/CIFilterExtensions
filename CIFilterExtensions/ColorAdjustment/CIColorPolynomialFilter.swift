//
//  CIColorPolynomialFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIColorPolynomialFilter {
    
    public var blueCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4)
    public var image: CIImage
    public var greenCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4)
    public var alphaCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4)
    public var redCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4)
    
    public init(blueCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4), image: CIImage, greenCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4), alphaCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4), redCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4)){
        self.blueCoefficients = blueCoefficients
        self.image = image
        self.greenCoefficients = greenCoefficients
        self.alphaCoefficients = alphaCoefficients
        self.redCoefficients = redCoefficients
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIColorPolynomial") else { return nil }
        filter.setValue(blueCoefficients, forKey: "inputBlueCoefficients")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(greenCoefficients, forKey: "inputGreenCoefficients")
        filter.setValue(alphaCoefficients, forKey: "inputAlphaCoefficients")
        filter.setValue(redCoefficients, forKey: "inputRedCoefficients")
        return filter
    }
    
}

extension CIImage {
    
    public func colorPolynomialFilter(blueCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4), greenCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4), alphaCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4), redCoefficients: CIVector = CIVector(values: [0.0, 1.0, 0.0, 0.0], count: 4)) -> CIImage? {
        guard let filter = CIFilter(name: "CIColorPolynomial") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(blueCoefficients, forKey: "inputBlueCoefficients")
        filter.setValue(greenCoefficients, forKey: "inputGreenCoefficients")
        filter.setValue(alphaCoefficients, forKey: "inputAlphaCoefficients")
        filter.setValue(redCoefficients, forKey: "inputRedCoefficients")
        return filter.outputImage
    }
    
}

