//
//  CIQRCodeGeneratorFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class QRCodeGenerator {
    
    public var message: Data
    public var correctionLevel: NSString = "M"
    
    public init(message: Data, correctionLevel: NSString = "M"){
        self.message = message
        self.correctionLevel = correctionLevel
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIQRCodeGenerator") else { return nil }
        filter.setValue(message, forKey: "inputMessage")
        filter.setValue(correctionLevel, forKey: "inputCorrectionLevel")
        return filter
    }
    
}

