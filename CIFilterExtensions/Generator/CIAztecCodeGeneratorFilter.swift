//
//  CIAztecCodeGeneratorFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIAztecCodeGeneratorFilter {
    
    public var message: Data
    public var compactStyle: NSNumber
    public var layers: NSNumber
    public var correctionLevel: NSNumber = 23
    
    public init(message: Data, compactStyle: NSNumber, layers: NSNumber, correctionLevel: NSNumber = 23){
        self.message = message
        self.compactStyle = compactStyle
        self.layers = layers
        self.correctionLevel = correctionLevel
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIAztecCodeGenerator") else { return nil }
        filter.setValue(message, forKey: "inputMessage")
        filter.setValue(compactStyle, forKey: "inputCompactStyle")
        filter.setValue(layers, forKey: "inputLayers")
        filter.setValue(correctionLevel, forKey: "inputCorrectionLevel")
        return filter
    }
    
}

