//
//  CIColorPosterizeFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIColorPosterizeFilter {
    
    public var image: CIImage
    public var levels: NSNumber = 6
    
    public init(image: CIImage, levels: NSNumber = 6){
        self.image = image
        self.levels = levels
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIColorPosterize") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(levels, forKey: "inputLevels")
        return filter
    }
    
}

extension CIImage {
    
    public func colorPosterizeFilter(levels: NSNumber = 6) -> CIImage? {
        guard let filter = CIFilter(name: "CIColorPosterize") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(levels, forKey: "inputLevels")
        return filter.outputImage
    }
    
}

