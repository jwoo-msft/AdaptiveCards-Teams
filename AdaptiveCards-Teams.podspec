Pod::Spec.new do |s|

  s.name = "AdaptiveCards-Teams"
  s.summary = "This module contains sub-features in the conversation."
  s.requires_arc = true
  s.version = "0.0.1"
  s.license = { :type => "Copyright (c) Microsoft", :file => "LICENSE" }
  s.author = { "Microsoft Teams" => "teams@microsoft.com" }
  s.homepage = "https://github.com/janusbal/AdaptiveCards-Teams.git"
  s.source = { :git => 'https://github.com/janusbal/AdaptiveCards-Teams.git' }
  s.pod_target_xcconfig = { 'ENABLE_TESTABILITY' => 'NO' }

  s.platform = :ios
  s.ios.deployment_target = '12.0'
  s.source_files = "AdaptiveCards/**/*.{m,h,swift,yml}"
  s.public_header_files = 'AdaptiveCards/**/*.h'
  s.exclude_files = 'AdaptiveCards/include/**/*.{h,m,swift}'
  
  s.resources = [
      "AdaptiveCards/Resources/**/*"
  ]


  s.prefix_header_contents = '#import "ACOAdaptiveCard.h"'

  s.framework = "UIKit"
  s.framework = "AVKit"
  s.framework = "CoreGraphics"
  s.framework = "QuartzCore"
  s.dependency 'MicrosoftFluentUI/Tooltip_ios', '~> 0.1.16'


end
