//
//  CIAffineTileFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIAffineTileFilter {
    
    public var image: CIImage
    public var transform: NSValue = NSValue(cgAffineTransform: CGAffineTransform(a: 1.0, b: 0.0, c: 0.0, d: 1.0, tx: 0.0, ty: 0.0) )
    
    public init(image: CIImage, transform: NSValue = NSValue(cgAffineTransform: CGAffineTransform(a: 1.0, b: 0.0, c: 0.0, d: 1.0, tx: 0.0, ty: 0.0) )){
        self.image = image
        self.transform = transform
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIAffineTile") else { return nil }
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(transform, forKey: "inputTransform")
        return filter
    }
    
}

extension CIImage {
    
    public func affineTileFilter(transform: NSValue = NSValue(cgAffineTransform: CGAffineTransform(a: 1.0, b: 0.0, c: 0.0, d: 1.0, tx: 0.0, ty: 0.0) )) -> CIImage? {
        guard let filter = CIFilter(name: "CIAffineTile") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(transform, forKey: "inputTransform")
        return filter.outputImage
    }
    
}

