//
//  CIConstantColorGeneratorFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIConstantColorGeneratorFilter {
    
    public var color: CIColor = CIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
    
    public init(color: CIColor = CIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)){
        self.color = color
    }
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIConstantColorGenerator") else { return nil }
        filter.setValue(color, forKey: "inputColor")
        return filter
    }
    
}

