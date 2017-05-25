//
//  CIBarsSwipeTransitionFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIBarsSwipeTransitionFilter {
    
    public var width: NSNumber = 30
    public var targetImage: CIImage
    public var barOffset: NSNumber = 10
    public var angle: NSNumber = 3.141592653589793
    public var image: CIImage
    public var time: NSNumber = 0
    
    public init(width: NSNumber = 30, targetImage: CIImage, barOffset: NSNumber = 10, angle: NSNumber = 3.141592653589793, image: CIImage, time: NSNumber = 0){
        self.width = width
        self.targetImage = targetImage
        self.barOffset = barOffset
        self.angle = angle
        self.image = image
        self.time = time
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIBarsSwipeTransition") else { return nil }
        filter.setValue(width, forKey: "inputWidth")
        filter.setValue(targetImage, forKey: "inputTargetImage")
        filter.setValue(barOffset, forKey: "inputBarOffset")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(time, forKey: "inputTime")
        return filter
    }
    
}

extension CIImage {
    
    public func barsSwipeTransitionFilter(width: NSNumber = 30, targetImage: CIImage, barOffset: NSNumber = 10, angle: NSNumber = 3.141592653589793, time: NSNumber = 0) -> CIImage? {
        guard let filter = CIFilter(name: "CIBarsSwipeTransition") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(width, forKey: "inputWidth")
        filter.setValue(targetImage, forKey: "inputTargetImage")
        filter.setValue(barOffset, forKey: "inputBarOffset")
        filter.setValue(angle, forKey: "inputAngle")
        filter.setValue(time, forKey: "inputTime")
        return filter.outputImage
    }
    
}

