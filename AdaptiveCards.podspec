  
Pod::Spec.new do |spec|
  spec.name             = 'AdaptiveCards'

  spec.version          = '0.0.6'
  
  spec.license          = { :type => 'Adaptive Cards Binary EULA', :file => 'source/EULA-Non-Windows.txt' }
  
  spec.homepage         = 'https://adaptivecards.io'
  
  spec.authors          = { 'AdaptiveCards' => 'Joseph.Woo@microsoft.com' }
  
  spec.summary          = 'Adaptive Cards are a new way for developers to exchange card content in a common and consistent way'
  
  spec.source       = { :git => 'https://github.com/janusbal/AdaptiveCards-Teams.git', :tag => '0.0.6' }

  spec.source_files           = 'AdaptiveCards/**/*.{h,m,mm}'

  spec.subspec 'ObjectModel' do | sspec |
    sspec.source_files = 'shared/cpp/ObjectModel/**/*.{h,cpp}', 'shared/cpp/ObjectModel/json/**/*.{h}'
    sspec.header_mappings_dir = 'shared/cpp/ObjectModel/'
    sspec.private_header_files = 'shared/cpp/ObjectModel/**/*.{h}'
    sspec.xcconfig = {
         'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
         'CLANG_CXX_LIBRARY' => 'libc++'
    }
  end

  spec.platform         = :ios, '12'

  spec.frameworks = 'AVFoundation', 'AVKit', 'CoreGraphics', 'QuartzCore', 'UIKit'

  spec.public_header_files = 'AdaptiveCards/*.h'

  spec.private_header_files = 'AdaptiveCards/PrivateHeaders/*.h'

  spec.resource_bundles = {'AdaptiveCards' => ['AdaptiveCards/Resources/**/*']}

  spec.exclude_files = 'AdaptiveCards/include/**/*'

  spec.dependency 'MicrosoftFluentUI/Tooltip_ios', '~> 0.1.16'
end
