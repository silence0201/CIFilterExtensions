Pod::Spec.new do |s|
  s.name         = "CIFilterExtensions"
  s.version      = "0.1.4"
  s.summary      = "CIFilterExtensions."
  s.description  = <<-DESC
  						Easy Use CIFilter
                   DESC

  s.homepage     = "https://github.com/silence0201/CIFilterExtensions"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Silence" => "374619540@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/silence0201/CIFilterExtensions.git", :tag => "#{s.version}" }
  s.requires_arc = true

  s.subspec 'Blur' do |ss|
    ss.source_files = "Blur", "CIFilterExtensions/{Blur,Common}/*.swift"
  end

  s.subspec 'ColorAdjustment' do |ss|
    ss.source_files = "ColorAdjustment", "CIFilterExtensions/{ColorAdjustment,Common}/*.swift"
  end

  s.subspec 'ColorEffect' do |ss|
    ss.source_files = "ColorEffect", "CIFilterExtensions/{ColorEffect,Common}/*.swift"
  end

  s.subspec 'CompositeOperation' do |ss|
    ss.source_files = "CompositeOperation", "CIFilterExtensions/{CompositeOperation,Common}/*.swift"
  end  

  s.subspec 'DistortionEffect' do |ss|
    ss.source_files = "DistortionEffect", "CIFilterExtensions/{DistortionEffect,Common}/*.swift"
  end

  s.subspec 'Generator' do |ss|
    ss.source_files = "Generator", "CIFilterExtensions/{Generator,Common}/*.swift"
  end

  s.subspec 'GeometryAdjustment' do |ss|
    ss.source_files = "GeometryAdjustment", "CIFilterExtensions/{GeometryAdjustment,Common}/*.swift"
  end

  s.subspec 'Gradient' do |ss|
    ss.source_files = "Gradient", "CIFilterExtensions/{Gradient,Common}/*.swift"
  end

  s.subspec 'HalftoneEffect' do |ss|
    ss.source_files = "HalftoneEffect", "CIFilterExtensions/{HalftoneEffect,Common}/*.swift"
  end

  s.subspec 'Reduction' do |ss|
    ss.source_files = "Reduction", "CIFilterExtensions/{Reduction,Common}/*.swift"
  end

  s.subspec 'Sharpen' do |ss|
    ss.source_files = "Sharpen", "CIFilterExtensions/{Sharpen,Common}/*.swift"
  end

  s.subspec 'Stylize' do |ss|
    ss.source_files = "Stylize", "CIFilterExtensions/{Stylize,Common}/*.swift"
  end

  s.subspec 'TileEffect' do |ss|
    ss.source_files = "TileEffect", "CIFilterExtensions/{TileEffect,Common}/*.swift"
  end

  s.subspec 'Transition' do |ss|
    ss.source_files = "Transition", "CIFilterExtensions/{Transition,Common}/*.swift"
  end


end
