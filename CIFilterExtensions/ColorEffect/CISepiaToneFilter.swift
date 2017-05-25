//
//  CISepiaToneFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CISepiaToneFilter {
    
    public var intensity: NSNumber = 1
    public var image: CIImage
    
    public init(intensity: NSNumber = 1, image: CIImage){
        self.intensity = intensity
        self.image = image
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CISepiaTone") else { return nil }
        filter.setValue(intensity, forKey: "inputIntensity")
        filter.setValue(image, forKey: "inputImage")
        return filter
    }
    
}

extension CIImage {
    
    public func sepiaToneFilter(intensity: NSNumber = 1) -> CIImage? {
        guard let filter = CIFilter(name: "CISepiaTone") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(intensity, forKey: "inputIntensity")
        return filter.outputImage
    }
    
}

