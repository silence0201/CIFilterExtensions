//
//  CIPhotoEffectChromeFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIPhotoEffectChromeFilter {
    
    public var image: CIImage
    
    public init(image: CIImage){
        self.image = image
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIPhotoEffectChrome") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        return filter
    }
    
}

extension CIImage {
    
    public func photoEffectChromeFilter() -> CIImage? {
        guard let filter = CIFilter(name: "CIPhotoEffectChrome") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        return filter.outputImage
    }
    
}

