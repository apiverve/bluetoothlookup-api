Pod::Spec.new do |s|
  s.name             = 'APIVerveBluetoothCompanyLookup'
  s.version          = '1.2.3'
  s.summary          = 'Bluetooth Company Lookup allows you to identify Bluetooth device manufacturers by their Bluetooth SIG assigned company identifier.'
  s.description      = <<-'DESC'
Bluetooth Company Lookup allows you to identify Bluetooth device manufacturers by their Bluetooth SIG assigned company identifier. This helps identify the manufacturer of Bluetooth devices, beacons, and accessories.

This iOS/macOS SDK provides a convenient way to access the Bluetooth Company Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/bluetoothlookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/bluetoothlookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveBluetoothCompanyLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
