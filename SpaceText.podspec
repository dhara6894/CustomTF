#
# Be sure to run `pod lib lint SpaceText.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SpaceText'
  s.version          = '0.1.0'
  s.summary          = 'You can add space between characters in textfield '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Using this pod user can add space between your text. User need to set value of spaecAfterText from IB.
                       DESC

  s.homepage         = 'https://github.com/dhara6894/CustomTF'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dhara6894' => 'dhara.patel@solutionanalysts.com' }
  s.source           = { :git => 'https://github.com/dhara6894/CustomTF.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SpaceText/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SpaceText' => ['SpaceText/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
