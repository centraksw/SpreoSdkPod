Pod::Spec.new do |s|
  s.name             = "SpreoSdkPod"
  s.version          = "6.11.4"
  s.summary          = "Indoor navigation SDK - SpreoSdkPod"
 
  s.description      = "A longer description of SpreoSdkPod in Markdown format."
 
  s.homepage         = "https://github.com/centraksw/SpreoSdkPod"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "alozovoy" => "alozovoy@centrak.com" }
  s.source           = { :git => "https://github.com/centraksw/SpreoSdkPod.git", :tag => s.version.to_s }
 
  s.platform     = :ios, '9.0'
  
  s.vendored_frameworks = "Classes/IndoorKit.framework"

  s.exclude_files = "Classes/IndoorKit.bundle/Info.plist"

  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.resource_bundles = {
    'IndoorKit' => ['Classes/IndoorKit.bundle/**']
  }

  s.dependency 'GoogleMaps', '3.8.0'
  s.requires_arc          = true
  
end
