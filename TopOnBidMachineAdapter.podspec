Pod::Spec.new do |s|
  s.name         = 'TopOnBidMachineAdapter'
  s.version      = '1.0.0'
  s.summary      = 'Custom TopOn BidMachine adapter for iOS.'
  s.description  = <<-DESC
  Custom TopOn BidMachine adapter packaged as a CocoaPods binary dependency.
  DESC

  s.homepage     = 'https://github.com/WindsSunShine/TopOnBidMachineAdapter'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'WindsSunShine' => 'zhangjianjunapple@gmail.com' }

  s.platform     = :ios, '12.0'
  s.source       = {
    :git => 'https://github.com/WindsSunShine/TopOnBidMachineAdapter.git',
    :tag => s.version.to_s
  }

  s.static_framework = true

  # TopOn 下载出来的 BidMachine Adapter
  s.vendored_frameworks = 'Frameworks/AnyThinkBidMachineAdapter.xcframework'

  # TopOn 主 SDK，版本要和下载这个 Adapter 时选择的 TopOn SDK 版本一致
  s.dependency 'AnyThinkiOS', '= 6.5.45'

  # BidMachine 官方 SDK。不要把 BidMachine.xcframework / OMSDK / StackModules 重复打包进来
  s.dependency 'BidMachine/Static', '= 3.6.1'

  s.frameworks = [
    'UIKit',
    'Foundation',
    'AdSupport',
    'AppTrackingTransparency',
    'AVFoundation',
    'CoreGraphics',
    'CoreImage',
    'CoreLocation',
    'CoreTelephony',
    'QuartzCore',
    'StoreKit',
    'SystemConfiguration',
    'WebKit'
  ]
  
  s.libraries = ['z', 'sqlite3', 'c++', 'xml2']
end
