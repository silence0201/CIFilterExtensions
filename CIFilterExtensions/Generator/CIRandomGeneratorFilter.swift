//
//  CIRandomGeneratorFilter.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

public class CIRandomGeneratorFilter {
    
    public func filter() -> CIFilter? {
        guard let filter = CIFilter(name: "CIRandomGenerator") else { return nil }
        return filter
    }
    
}

