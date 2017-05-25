//
//  CIExposureAdjustFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIExposureAdjustFilter {
    
    public var eV: NSNumber = 0
    public var image: CIImage
    
    public init(eV: NSNumber = 0, image: CIImage){
        self.eV = eV
        self.image = image
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIExposureAdjust") else { return nil }
        filter.setValue(eV, forKey: "inputEV")
        filter.setValue(image, forKey: "inputImage")
        return filter
    }
    
}

extension CIImage {
    
    public func exposureAdjustFilter(eV: NSNumber = 0) -> CIImage? {
        guard let filter = CIFilter(name: "CIExposureAdjust") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(eV, forKey: "inputEV")
        return filter.outputImage
    }
    
}
