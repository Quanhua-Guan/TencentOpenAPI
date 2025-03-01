Pod::Spec.new do |s|
  
  s.name = 'TencentOpenAPI'
  s.version = '3.5.14'
  s.summary = 'TencentOpenAPI, why not pod'

  s.homepage = 'https://github.com/Quanhua-Guan/TencentOpenAPI'
  s.license = 'MIT'
  s.author = { '宇园' => 'xinmuheart@gmail.com' }
  s.source = { :git => 'https://github.com/Quanhua-Guan/TencentOpenAPI.git', :tag => s.version.to_s }

  s.frameworks = 'Security', 'CoreFoundation','MobileCoreServices','QuartzCore','SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'WebKit'
  s.libraries = 'iconv', 'sqlite3', 'stdc++', 'z','z.1.1.3'

  s.ios.deployment_target = '7.0'
  s.resources = '*.bundle'
  s.public_header_files = 'TencentOpenAPI.framework/Headers/*.h'
  s.vendored_frameworks = 'TencentOpenAPI.framework'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'HEADER_SEARCH_PATHS' => '"${SRCROOT}/TencentOpenAPI.framework/Headers"'
  }
  s.requires_arc = true

end
