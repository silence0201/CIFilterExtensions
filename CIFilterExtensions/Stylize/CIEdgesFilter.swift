//
//  CIEdges.swift
//  Demo
//
//  Created by Silence on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIEdgesFilter {
    
    public var intensity: NSNumber = 1
    public var image: CIImage
    
    public init(intensity: NSNumber = 1, image: CIImage){
        self.intensity = intensity
        self.image = image
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIEdges") else { return nil }
        filter.setValue(intensity, forKey: "inputIntensity")
        filter.setValue(image, forKey: "inputImage")
        return filter
    }
    
}

extension CIImage {
    
    public func edgesFilter(intensity: NSNumber = 1) -> CIImage? {
        guard let filter = CIFilter(name: "CIEdges") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(intensity, forKey: "inputIntensity")
        return filter.outputImage
    }
    
}

