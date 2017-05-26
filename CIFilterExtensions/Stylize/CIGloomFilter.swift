//
//  CIGloomFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class Gloom {
    
    public var intensity: NSNumber = 1
    public var image: CIImage
    public var radius: NSNumber = 10
    
    public init(intensity: NSNumber = 1, image: CIImage, radius: NSNumber = 10){
        self.intensity = intensity
        self.image = image
        self.radius = radius
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIGloom") else { return nil }
        filter.setValue(intensity, forKey: "inputIntensity")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(radius, forKey: "inputRadius")
        return filter
    }
    
}

extension CIImage {
    
    public func gloomFilter(_ intensity: NSNumber = 1, radius: NSNumber = 10) -> CIImage? {
        guard let filter = CIFilter(name: "CIGloom") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(intensity, forKey: "inputIntensity")
        filter.setValue(radius, forKey: "inputRadius")
        return filter.outputImage
    }
    
}

