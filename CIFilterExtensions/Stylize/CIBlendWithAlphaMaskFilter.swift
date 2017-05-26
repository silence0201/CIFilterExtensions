//
//  CIBlendWithAlphaMaskFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIBlendWithAlphaMaskFilter {
    
    public var image: CIImage
    public var maskImage: CIImage
    public var backgroundImage: CIImage
    
    public init(image: CIImage, maskImage: CIImage, backgroundImage: CIImage){
        self.image = image
        self.maskImage = maskImage
        self.backgroundImage = backgroundImage
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIBlendWithAlphaMask") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(maskImage, forKey: "inputMaskImage")
        filter.setValue(backgroundImage, forKey: "inputBackgroundImage")
        return filter
    }
    
}

extension CIImage {
    
    public func blendWithAlphaMaskFilter(maskImage: CIImage, backgroundImage: CIImage) -> CIImage? {
        guard let filter = CIFilter(name: "CIBlendWithAlphaMask") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(maskImage, forKey: "inputMaskImage")
        filter.setValue(backgroundImage, forKey: "inputBackgroundImage")
        return filter.outputImage
    }
    
}

