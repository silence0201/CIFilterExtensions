//
//  CIOverlayBlendModeFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIOverlayBlendModeFilter {
    
    public var image: CIImage
    public var backgroundImage: CIImage
    
    public init(image: CIImage, backgroundImage: CIImage){
        self.image = image
        self.backgroundImage = backgroundImage
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIOverlayBlendMode") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(backgroundImage, forKey: "inputBackgroundImage")
        return filter
    }
    
}

extension CIImage {
    
    public func overlayBlendModeFilter(backgroundImage: CIImage) -> CIImage? {
        guard let filter = CIFilter(name: "CIOverlayBlendMode") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(backgroundImage, forKey: "inputBackgroundImage")
        return filter.outputImage
    }
    
}

