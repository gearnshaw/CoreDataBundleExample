#
# Be sure to run `pod lib lint CoreDataBundleExample.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CoreDataBundleExample'
  s.version          = '0.1.0'
  s.summary          = 'Testing issues with bundle dependencies.'
  s.swift_version    = '4.1'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A test project to isolate issues with bundle dependencies in CocoaPods
                       DESC

  s.homepage         = 'https://github.com/gearnshaw/CoreDataBundleExample'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gabrielle Earnshaw' => 'gabrielle.earnshaw@controlf1.co.uk' }
  s.source           = { :git => 'https://github.com/gearnshaw/CoreDataBundleExample.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'CoreDataBundleExample/Classes/**/*'
  
  s.resource_bundles = {
    'CoreDataBundleExample' => ['CoreDataBundleExample/Assets/*.xcdatamodeld']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'MagicalRecord', '~> 2.3'
end
