//
//  CIImageExtension.swift
//  Demo
//
//  Created by 杨晴贺 on 2017/5/26.
//  Copyright © 2017年 Silence. All rights reserved.
//

import CoreImage

extension CIImage {
    public func convertToCGImageCompletion(_ completion: ((CGImage?)->Void)?) {
        DispatchQueue.global().async {
            let ciContext = CIContext.init(options: [kCIContextUseSoftwareRenderer:kCFBooleanFalse])
            let resultCGImage = ciContext.createCGImage(self, from: self.extent)
            DispatchQueue.main.async {
                if let block = completion {
                    block(resultCGImage)
                }
            }
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
