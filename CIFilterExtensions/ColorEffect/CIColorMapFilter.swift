//
//  CIColorMapFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIColorMapFilter {
    
    public var image: CIImage
    public var gradientImage: CIImage
    
    public init(image: CIImage, gradientImage: CIImage){
        self.image = image
        self.gradientImage = gradientImage
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIColorMap") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(gradientImage, forKey: "inputGradientImage")
        return filter
    }
    
}

extension CIImage {
    
    public func colorMapFilter(gradientImage: CIImage) -> CIImage? {
        guard let filter = CIFilter(name: "CIColorMap") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(gradientImage, forKey: "inputGradientImage")
        return filter.outputImage
    }
    
}

