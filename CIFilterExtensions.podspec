Pod::Spec.new do |s|
  s.name         = "CIFilterExtensions"
  s.version      = "0.1.2"
  s.summary      = "CIFilterExtensions."
  s.description  = <<-DESC
  						Easy Use CIFilter
                   DESC

  s.homepage     = "https://github.com/silence0201/CIFilterExtensions"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Silence" => "374619540@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/silence0201/CIFilterExtensions.git", :tag => "#{s.version}" }
  s.source_files  = "CIFilterExtensions", "CIFilterExtensions/CIImageExtension.swift"
  s.exclude_files = "CIFilterExtensions/Exclude"
  s.requires_arc = true

  s.subspec 'Blur' do |ss|
    ss.source_files = "Blur", "CIFilterExtensions/Blur/*.swift"
  end

  s.subspec 'Blur' do |ss|
    ss.source_files = "ColorAdjustment", "CIFilterExtensions/ColorAdjustment/*.swift"
  end

  s.subspec 'ColorEffect' do |ss|
    ss.source_files = "ColorEffect", "CIFilterExtensions/ColorEffect/*.swift"
  end

  s.subspec 'CompositeOperation' do |ss|
    ss.source_files = "CompositeOperation", "CIFilterExtensions/CompositeOperation/*.swift"
  end  

  s.subspec 'DistortionEffect' do |ss|
    ss.source_files = "DistortionEffect", "CIFilterExtensions/DistortionEffect/*.swift"
  end

  s.subspec 'Generator' do |ss|
    ss.source_files = "Generator", "CIFilterExtensions/Generator/*.swift"
  end

  s.subspec 'GeometryAdjustment' do |ss|
    ss.source_files = "GeometryAdjustment", "CIFilterExtensions/GeometryAdjustment/*.swift"
  end

  s.subspec 'Gradient' do |ss|
    ss.source_files = "Gradient", "CIFilterExtensions/Gradient/*.swift"
  end

  s.subspec 'HalftoneEffect' do |ss|
    ss.source_files = "HalftoneEffect", "CIFilterExtensions/HalftoneEffect/*.swift"
  end

  s.subspec 'Reduction' do |ss|
    ss.source_files = "Reduction", "CIFilterExtensions/Reduction/*.swift"
  end

  s.subspec 'Sharpen' do |ss|
    ss.source_files = "Sharpen", "CIFilterExtensions/Sharpen/*.swift"
  end

  s.subspec 'Stylize' do |ss|
    ss.source_files = "Stylize", "CIFilterExtensions/Stylize/*.swift"
  end

  s.subspec 'TileEffect' do |ss|
    ss.source_files = "TileEffect", "CIFilterExtensions/TileEffect/*.swift"
  end

  s.subspec 'Transition' do |ss|
    ss.source_files = "Transition", "CIFilterExtensions/Transition/*.swift"
  end


end
