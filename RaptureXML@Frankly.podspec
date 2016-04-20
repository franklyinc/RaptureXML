Pod::Spec.new do |s|
  s.name          = 'RaptureXML@Frankly'
  s.version       = '1.0.3'
  s.license       = 'MIT'
  s.summary       = 'A simple, sensible, block-based XML API for iOS and Mac development.'
  s.homepage      = 'https://github.com/tictocplanet/RaptureXML'
  s.author        = { 'Justin Hill' => 'justin@franklyinc.com' }
  s.source        = { :git => 'https://github.com/tictocplanet/RaptureXML.git', :tag => s.version.to_s }
  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.source_files  = 'RaptureXML/*'

  s.libraries     = 'z', 'xml2'
  s.xcconfig      = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.requires_arc  = true
  s.module_map = 'module_support/RaptureXML.modulemap'

  s.prepare_command = <<-CMD
      cd module_support
      ./generate_module_map.sh
  CMD
end
