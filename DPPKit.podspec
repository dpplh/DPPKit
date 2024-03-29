#
# Be sure to run `pod lib lint DPPKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DPPKit'
  s.version          = '0.0.3'
  s.summary          = 'DPP的代码库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.homepage         = 'https://github.com/DPP-iOSer/DPPKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DPP-iOSer' => 'lh5@meitu.com' }
  s.source           = { :git => 'https://github.com/DPP-iOSer/DPPKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.source_files = 'DPPKit/Classes/*.{h,m}', 'DPPKit/Classes/3rdLibraries/*.{h}'
  s.vendored_libraries = 'DPPKit/Classes/3rdLibraries/*.{a}'
  s.frameworks = 'SystemConfiguration','CoreGraphics','CoreTelephony','Security','CoreLocation','JavaScriptCore'
  s.libraries = 'iconv','sqlite3','stdc++','z'
  
  # s.resource_bundles = {
  #   'DPPKit' => ['DPPKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 2.3'
  
  s.subspec 'DPPSub' do |cs|
      cs.source_files = 'DPPKit/Classes/DPPSub/*.{h,m}'
  end
end
