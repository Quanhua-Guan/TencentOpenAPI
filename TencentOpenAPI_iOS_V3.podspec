Pod::Spec.new do |s|
  s.name             = 'TencentOpenAPI_iOS_V3'
  s.version          = '3.5.5'
  s.summary          = 'TencentOpenAPI, why not pod'

  s.homepage         = 'https://github.com/fengyang0329/TencentOpenAPI'
  s.license          = 'MIT'
  s.author           = { 'longzh' => '599086054@qq.com' }
  s.source           = { :git => 'https://github.com/fengyang0329/TencentOpenAPI.git', :tag => s.version.to_s }

  s.frameworks             = 'Security', 'CoreFoundation','MobileCoreServices','QuartzCore','SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  s.libraries              = 'iconv', 'sqlite3', 'stdc++', 'z','z.1.1.3'

  s.ios.deployment_target  = '7.0'
  s.resources = '*.bundle'
  s.public_header_files  =  '*.framework/Headers/*.h'
  s.source_files = '*.framework/Headers/*.{h}'
  s.vendored_frameworks  =  '*.framework'
  s.pod_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.requires_arc           = true

end
