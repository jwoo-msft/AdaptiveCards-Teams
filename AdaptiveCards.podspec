  
Pod::Spec.new do |spec|
  spec.name             = 'AdaptiveCards'

  spec.version          = '0.0.14'
  
  spec.license          = { :type => 'Adaptive Cards Binary EULA', :file => 'AdaptiveCards/source/EULA-Non-Windows.txt' }
  
  spec.homepage         = 'https://adaptivecards.io'
  
  spec.authors          = { 'AdaptiveCards' => 'Joseph.Woo@microsoft.com' }
  
  spec.summary          = 'Adaptive Cards are a new way for developers to exchange card content in a common and consistent way'
  
  spec.source       = { :git => 'https://github.com/janusbal/AdaptiveCards-Teams.git', :tag => '0.0.14' }

  spec.source_files           = 'AdaptiveCards/source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/**/*.{h,m,mm}'

  spec.subspec 'ObjectModel' do | sspec |
    sspec.source_files = 'AdaptiveCards/source/shared/cpp/ObjectModel/**/*.{h,cpp}', 'AdaptiveCards/source/shared/cpp/ObjectModel/json/**/*.{h}'
    sspec.header_mappings_dir = 'AdaptiveCards/source/shared/cpp/ObjectModel/'
    sspec.project_header_files = 'AdaptiveCards/source/shared/cpp/ObjectModel/**/*.{h}'
    sspec.xcconfig = {
         'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
         'CLANG_CXX_LIBRARY' => 'libc++'
    }
  end

  spec.platform         = :ios, '14'

  spec.frameworks = 'AVFoundation', 'AVKit', 'CoreGraphics', 'QuartzCore', 'UIKit'

  spec.public_header_files = 'AdaptiveCards/source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/*.h','AdaptiveCards/source/shared/cpp/ObjectModel/**/*.h'

  spec.project_header_files = 'AdaptiveCards/source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/PrivateHeaders/*.h'

  spec.resource_bundles = {'AdaptiveCards' => ['AdaptiveCards/source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/Resources/**/*']}

  spec.exclude_files = 'AdaptiveCards/source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/include/**/*'
end
