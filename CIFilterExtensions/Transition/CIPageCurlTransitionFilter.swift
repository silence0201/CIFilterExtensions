//
//  CIPageCurlTransitionFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIPageCurlTransitionFilter {
    
    public var targetImage: CIImage
    public var angle: NSNumber = 0
    public var radius: NSNumber = 100
    public var time: NSNumber = 0
    public var extent: CIVector = CIVector(values: [0.0, 0.0, 300.0, 300.0], count: 4)
    public var backsideImage: CIImage
    public var image: CIImage
    public var shadingImage: CIImage
    
    public init(targetImage: CIImage, angle: NSNumber = 0, radius: NSNumber = 100, time: NSNumber = 0, extent: CIVector = CIVector(values: [0.0, 0.0, 300.0, 300.0], count: 4), backsideImage: CIImage, image: CIImage, shadingImage: CIImage){
        self.targetImage = targetImage
        self.angle = angle
        self.radius = radius
        self.time = time
        self.extent = extent
        self.backsideImage = backsideImage
        self.image = image
        self.shadingImage = shadingImage
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIPageCurlTransition") else { return nil }
        filter.setValue(targetImage, forKey: "inputTargetImage")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(radius, forKey: "inputRadius")
        filter.setValue(time, forKey: "inputTime")
        filter.setValue(extent, forKey: "inputExtent")
        filter.setValue(backsideImage, forKey: "inputBacksideImage")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(shadingImage, forKey: "inputShadingImage")
        return filter
    }
    
}

extension CIImage {
    
    public func pageCurlTransitionFilter(targetImage: CIImage, angle: NSNumber = 0, radius: NSNumber = 100, time: NSNumber = 0, extent: CIVector = CIVector(values: [0.0, 0.0, 300.0, 300.0], count: 4), backsideImage: CIImage, shadingImage: CIImage) -> CIImage? {
        guard let filter = CIFilter(name: "CIPageCurlTransition") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(targetImage, forKey: "inputTargetImage")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(radius, forKey: "inputRadius")
        filter.setValue(time, forKey: "inputTime")
        filter.setValue(extent, forKey: "inputExtent")
        filter.setValue(backsideImage, forKey: "inputBacksideImage")
        filter.setValue(shadingImage, forKey: "inputShadingImage")
        return filter.outputImage
    }
    
}

