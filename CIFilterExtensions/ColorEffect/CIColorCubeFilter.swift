//
//  CIColorCubeFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIColorCubeFilter {
    
    public var cubeDimension: NSNumber = 2
    public var image: CIImage
    public var cubeData: Data
    
    public init(cubeDimension: NSNumber = 2, image: CIImage, cubeData: Data){
        self.cubeDimension = cubeDimension
        self.image = image
        self.cubeData = cubeData
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIColorCube") else { return nil }
        filter.setValue(cubeDimension, forKey: "inputCubeDimension")
        filter.setValue(image, forKey: "inputImage")
        filter.setValue(cubeData, forKey: "inputCubeData")
        return filter
    }
    
}

extension CIImage {
    
    public func colorCubeFilter(cubeDimension: NSNumber = 2, cubeData: Data) -> CIImage? {
        guard let filter = CIFilter(name: "CIColorCube") else { return nil }
        filter.setValue(self, forKey: "inputImage")
        filter.setValue(cubeDimension, forKey: "inputCubeDimension")
        filter.setValue(cubeData, forKey: "inputCubeData")
        return filter.outputImage
    }
    
}

