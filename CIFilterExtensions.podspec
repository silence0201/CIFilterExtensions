Pod::Spec.new do |s|
  s.name         = "CIFilterExtensions"
  s.version      = "0.1.1"
  s.summary      = "CIFilterExtensions."
  s.description  = <<-DESC
  						Easy Use CIFilter
                   DESC

  s.homepage     = "https://github.com/silence0201/CIFilterExtensions"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Silence" => "374619540@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/silence0201/CIFilterExtensions.git", :tag => "#{s.version}" }
  s.source_files  = "CIFilterExtensions", "CIFilterExtensions/**/*.swift"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
end
