//
//  CICMYKHalftoneFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

open class CICMYKHalftoneFilter {
    
    open var width: NSNumber = 6
    open var center: CIVector = CIVector(values: [150.0, 150.0], count: 2)
    open var angle: NSNumber = 0
    open var uCR: NSNumber = 0.5
    open var sharpness: NSNumber = 0.7
    open var gCR: NSNumber = 1
    open var image: CIImage
    
    required public init(width: NSNumber = 6, center: CIVector = CIVector(values: [150.0, 150.0], count: 2), angle: NSNumber = 0, uCR: NSNumber = 0.5, sharpness: NSNumber = 0.7, gCR: NSNumber = 1, image: CIImage){
        self.width = width
        self.center = center
        self.angle = angle
        self.uCR = uCR
        self.sharpness = sharpness
        self.gCR = gCR
        self.image = image
    }
    
    open func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CICMYKHalftone") else { return nil }
        filter.setValue(width, forKey: "inputWidth")
        filter.setValue(center, forKey: "inputCenter")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(uCR, forKey: "inputUCR")
        filter.setValue(sharpness, forKey: "inputSharpness")
        filter.setValue(gCR, forKey: "inputGCR")
        filter.setValue(image, forKey: "inputImage")
        return filter
    }
    
}

extension CIImage {
    
    public func cMYKHalftoneFilter(_ width: NSNumber = 6, center: CIVector = CIVector(values: [150.0, 150.0], count: 2), angle: NSNumber = 0, uCR: NSNumber = 0.5, sharpness: NSNumber = 0.7, gCR: NSNumber = 1) -> CIImage? {
        guard let filter = CIFilter(name: "CICMYKHalftone") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(width, forKey: "inputWidth")
        filter.setValue(center, forKey: "inputCenter")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(uCR, forKey: "inputUCR")
        filter.setValue(sharpness, forKey: "inputSharpness")
        filter.setValue(gCR, forKey: "inputGCR")
        return filter.outputImage
    }
    
}

