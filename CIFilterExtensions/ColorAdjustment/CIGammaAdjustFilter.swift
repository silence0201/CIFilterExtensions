//
//  CIGammaAdjustFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIGammaAdjustFilter {
    
    public var power: NSNumber = 1
    public var image: CIImage
    
    public init(power: NSNumber = 1, image: CIImage){
        self.power = power
        self.image = image
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIGammaAdjust") else { return nil }
        filter.setValue(power, forKey: "inputPower")
        filter.setValue(image, forKey: "inputImage")
        return filter
    }
    
}

extension CIImage {
    
    public func gammaAdjustFilter(power: NSNumber = 1) -> CIImage? {
        guard let filter = CIFilter(name: "CIGammaAdjust") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(power, forKey: "inputPower")
        return filter.outputImage
    }
    
}

