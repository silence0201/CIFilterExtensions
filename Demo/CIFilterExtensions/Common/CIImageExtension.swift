//
//  CIImageExtension.swift
//  Demo
//
//  Created by Silence on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

extension CIImage {
    public func asyncConvertToCGImageCompletion(_ completion: ((CGImage?)->Void)?) {
        DispatchQueue.global().async {
//            let ciContext = CIContext.init(options: [kCIContextUseSoftwareRenderer:kCFBooleanFalse])
            let ciContext = CIContext.init(options:nil)
            let resultCGImage = ciContext.createCGImage(self, from: self.extent)
            DispatchQueue.main.async {
                if let block = completion {
                    block(resultCGImage)
                }
            }
        }
    }
    
    public func asyncConvertToUIImageCompletion(orientation: UIImageOrientation = .up, _ completion: ((UIImage?)->Void)?) {
        self.asyncConvertToCGImageCompletion { (cgimage) in
            if let block = completion,
                let image = cgimage {
                let uiimage = UIImage.init(cgImage: image, scale: UIScreen.main.scale, orientation: orientation)
                block(uiimage)
            }
        }
    }
    
    public func convertToCGImageCompletion(_ completion: ((CGImage?)->Void)?) {
        let ciContext = CIContext.init(options:nil)
        let resultCGImage = ciContext.createCGImage(self, from: self.extent)
        if let block = completion {
            block(resultCGImage)
        }
    }
    
    
    public func convertToUIImageCompletion(orientation: UIImageOrientation = .up, _ completion: ((UIImage?)->Void)?) {
        self.convertToCGImageCompletion { (cgimage) in
            if let block = completion,
                let image = cgimage {
                let uiimage = UIImage.init(cgImage: image, scale: UIScreen.main.scale, orientation: orientation)
                block(uiimage)
            }
        }
    }

}
