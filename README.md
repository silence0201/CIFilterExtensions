# CIFilterExtensions

![Language](https://img.shields.io/badge/language-swift-orange.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)  
Core Image中滤镜进行简单链式封装

### 导入
将项目中`CIFilterExtensions`文件夹拖到项目里   

或者使用`Pod`安装

	pod 'CIFilterExtensions', '~> 0.1.0'
	
### 使用
1. 导入头文件

	```swift
	import CIFilterExtensions
	```
	
2. 快速创建滤镜

	```swift
	let blur = CIGaussianBlurFilter.init(image: ciimage, radius: 5)
   _ = blur.filter()
	```
	
3. 链式应用滤镜

	```swift
   let ciimage = CIImage.init(cgImage: cgimage)
   let ot = ciimage.gaussianBlurFilter(radius: 5)?.colorInvertFilter()
	```
	
4. 快速转换图片表现形式

	```swift
   ot?.convertToUIImageCompletion({ (image) in
       if let image = image {
             self.imageView.image = image
          }
     })
	```
	

## CIFilterExtensions
CIFilterExtensions is available under the MIT license. See the LICENSE file for more info.
	