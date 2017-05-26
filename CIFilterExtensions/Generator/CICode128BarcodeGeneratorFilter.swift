//
//  CICode128BarcodeGeneratorFilter.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CICode128BarcodeGeneratorFilter {
    
    public var message: Data
    public var quietSpace: NSNumber = 7
    
    public init(message: Data, quietSpace: NSNumber = 7){
        self.message = message
        self.quietSpace = quietSpace
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CICode128BarcodeGenerator") else { return nil }
        filter.setValue(message, forKey: "inputMessage")
        filter.setValue(quietSpace, forKey: "inputQuietSpace")
        return filter
    }
    
}

