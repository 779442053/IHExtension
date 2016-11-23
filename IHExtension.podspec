Pod::Spec.new do |s|
  s.name     = 'IHExtension' 
  s.version  = '0.0.5'
  s.license  = 'MIT'
  s.summary  = 'This My IHExtension'  
  s.homepage = 'https://github.com/asiosldh/IHExtension' 
  s.author   = { 'asiosldh' => 'asiosldh@163.com' } 
  s.source   = { :git => 'https://github.com/asiosldh/IHExtension.git', :tag => s.version } 
  s.platform = :ios 
  s.source_files = 'IHExtensionDemo/IHExtension/**/*.{h,m}'
  s.framework = 'UIKit'
  s.requires_arc = true
  s.dependency "BlocksKit", "~> 2.2.5"
end
