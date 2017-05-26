//
//  ViewController.swift
//  Demo
//
//  Created by Silence on 2017/5/25.
//  Copyright © 2017年 Silence. All rights reserved.
//

import UIKit
import CIFilterExtensions

class ViewController: UIViewController {

    var imageView  = UIImageView.init(frame: UIScreen.main.bounds)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        
        if let image = UIImage.init(named: "Demo"),
            let cgimage = image.cgImage{
            imageView.contentMode = .scaleAspectFill
            let ciimage = CIImage.init(cgImage: cgimage)
            let ot = ciimage.gaussianBlurFilter(radius: 5)
            ot?.convertToUIImageCompletion({ (image) in
                if let image = image {
                    self.imageView.image = image
                }
            })
            
            // self.imageView.image = UIImage.init(ciImage: ot!)
        }

        
    }


}

