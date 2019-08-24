#
# Be sure to run `pod lib lint SRGFontIcons.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SRGFontIcons'
  s.version          = '0.1.0'
  s.summary          = 'Using fonts glyphs'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This pods is heavily inspired by `react-native-vector-icons`.
  This will allow you to use font glyphs easily, you can just use `name` instead of the unicode
                       DESC

  s.homepage         = 'https://github.com/sergioutama/SRGFontIcons'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sergio Utama' => 'sergio.utama@gmail.com' }
  s.source           = { :git => 'https://github.com/sergioutama/SRGFontIcons.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/<sergioutama>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SRGFontIcons/Classes/**/*'
  
  s.resource_bundles = {
      'SRGFontIcons' => ['SRGFontIcons/Assets/Fonts/*.ttf']
  }

end
