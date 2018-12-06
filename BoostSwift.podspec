Pod::Spec.new do |s|
  s.name             = 'BoostSwift'
  s.version          = '0.1.0'
  s.summary          = 'Useful Swift Classes and Extensions to Boost Your Productivity.'
  s.description      = <<-DESC
  BoostSwift is a handy collection of Swift classes and extensions to boost your productivity.
                       DESC

  s.homepage         = 'https://github.com/BoostSwift/BoostSwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Xinus Wang' => 'xinus.wang@gmail.com' }
  s.source           = { :git => 'https://github.com/BoostSwift/BoostSwift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.swift_version = '4.2'
  s.requires_arc = true
  s.source_files = 'BoostSwift/Sources/*.swift'
  
  # s.resource_bundles = {
  #   'BoostSwift' => ['BoostSwift/Assets/*.png']
  # }

  # Swift Core Libraries Extensions
  s.subspec 'CoreLibs' do |ss|
    ss.source_files  = 'BoostSwift/Sources/Extensions/CoreLibs/*.swift'
  end

  # Foundation Extensions
  s.subspec 'Foundation' do |ss|
    ss.source_files  = 'BoostSwift/Sources/Extensions/Foundation/*.swift'
  end

  # UIKit Extensions
  s.subspec 'UIKit' do |ss|
    ss.source_files  = 'BoostSwift/Sources/Extensions/UIKit/*.swift'
  end

end
