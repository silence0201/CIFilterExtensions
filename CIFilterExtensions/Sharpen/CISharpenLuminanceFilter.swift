//
//  CISharpenLuminanceFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

 class CISharpenLuminanceFilter {
    
     var image: CIImage
     var sharpness: NSNumber = 0.4
    
    public init(image: CIImage, sharpness: NSNumber = 0.4){
        self.image = image
        self.sharpness = sharpness
    }
    
     func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CISharpenLuminance") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(sharpness, forKey: "inputSharpness")
        return filter
    }
    
}

extension CIImage {
    
    public func sharpenLuminanceFilter(sharpness: NSNumber = 0.4) -> CIImage? {
        guard let filter = CIFilter(name: "CISharpenLuminance") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(sharpness, forKey: "inputSharpness")
        return filter.outputImage
    }
    
}

