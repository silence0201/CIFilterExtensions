//
//  CIColorCubeWithColorSpaceFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIColorCubeWithColorSpaceFilter {
    
    public var cubeDimension: NSNumber = 2
    public var image: CIImage
    public var cubeData: Data
    public var colorSpace: CGColorSpace
    
    public init(cubeDimension: NSNumber = 2, image: CIImage, cubeData: Data, colorSpace: CGColorSpace){
        self.cubeDimension = cubeDimension
        self.image = image
        self.cubeData = cubeData
        self.colorSpace = colorSpace
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIColorCubeWithColorSpace") else { return nil }
        filter.setValue(cubeDimension, forKey: "inputCubeDimension")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(cubeData, forKey: "inputCubeData")
        filter.setValue(colorSpace, forKey: "inputColorSpace")
        return filter
    }
    
}

extension CIImage {
    
    public func colorCubeWithColorSpaceFilter(cubeDimension: NSNumber = 2, cubeData: Data, colorSpace: CGColorSpace) -> CIImage? {
        guard let filter = CIFilter(name: "CIColorCubeWithColorSpace") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(cubeDimension, forKey: "inputCubeDimension")
        filter.setValue(cubeData, forKey: "inputCubeData")
        filter.setValue(colorSpace, forKey: "inputColorSpace")
        return filter.outputImage
    }
    
}

