//
//  CIVignetteEffectFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIVignetteEffectFilter {
    
    public var intensity: NSNumber = 1
    public var image: CIImage
    public var center: CIVector = CIVector(values: [150.0, 150.0], count: 2)
    public var radius: NSNumber = 150
    public var falloff: NSNumber = 0.5
    
    public init(intensity: NSNumber = 1, image: CIImage, center: CIVector = CIVector(values: [150.0, 150.0], count: 2), radius: NSNumber = 150, falloff: NSNumber = 0.5){
        self.intensity = intensity
        self.image = image
        self.center = center
        self.radius = radius
        self.falloff = falloff
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIVignetteEffect") else { return nil }
        filter.setValue(intensity, forKey: "inputIntensity")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(center, forKey: "inputCenter")
        filter.setValue(radius, forKey: "inputRadius")
        filter.setValue(falloff, forKey: "inputFalloff")
        return filter
    }
    
}

extension CIImage {
    
    public func vignetteEffectFilter(intensity: NSNumber = 1, center: CIVector = CIVector(values: [150.0, 150.0], count: 2), radius: NSNumber = 150, falloff: NSNumber = 0.5) -> CIImage? {
        guard let filter = CIFilter(name: "CIVignetteEffect") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(intensity, forKey: "inputIntensity")
        filter.setValue(center, forKey: "inputCenter")
        filter.setValue(radius, forKey: "inputRadius")
        filter.setValue(falloff, forKey: "inputFalloff")
        return filter.outputImage
    }
    
}

