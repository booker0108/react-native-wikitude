
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNWikitude"
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = "https://sc.com"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = "Nathan Chan"
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/booker0108/react-native-wikitude.git", :tag => "master" }
  s.vendored_frameworks = 'ios/lib/WikitudeSDK.framework'
  s.source_files  = "ios/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  