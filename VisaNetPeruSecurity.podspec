#
# Be sure to run `pod lib lint VisaNetPeruSecurity.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VisaNetPeruSecurity'
  s.version          = '0.1.0'
  s.summary          = 'Security frameworks for VisaNetSDKiOS'
  s.description      = 'Security frameworks for VisaNetSDKiOS: CardinalMobile, TMX*'
  s.homepage         = 'https://github.com/942v/VisaNetPeruSecurity'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Guillermo Sáenz' => 'g42v@me.com' }
  s.source           = { :git => 'https://github.com/942v/VisaNetPeruSecurity.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
      ss.dependency 'VisaNetSDKiOS'
      ss.vendored_frameworks = [ 'VisaNetPeruSecurity/Frameworks/*.framework' ]
  end
end
