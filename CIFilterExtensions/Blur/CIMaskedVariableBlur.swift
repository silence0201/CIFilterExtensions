//
//  CIMaskedVariableBlur.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIMaskedVariableBlur {
    
    public var image: CIImage
    public var mask: CIImage
    public var radius: NSNumber = 5
    
    public init(image: CIImage, mask: CIImage, radius: NSNumber = 5){
        self.image = image
        self.mask = mask
        self.radius = radius
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIMaskedVariableBlur") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(mask, forKey: "inputMask")
        filter.setValue(radius, forKey: "inputRadius")
        return filter
    }
    
}

extension CIImage {
    
    public func maskedVariableBlurFilter(mask: CIImage, radius: NSNumber = 5) -> CIImage? {
        guard let filter = CIFilter(name: "CIMaskedVariableBlur") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(mask, forKey: "inputMask")
        filter.setValue(radius, forKey: "inputRadius")
        return filter.outputImage
    }
    
}

