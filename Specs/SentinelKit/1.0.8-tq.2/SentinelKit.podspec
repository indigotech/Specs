#
# Be sure to run `pod lib lint SentinelKit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SentinelKit"
  s.version          = "1.0.8-tq.2"
  s.summary          = "A wrapper for the Sentinel Multi-factor Authenticator."
  s.description      = <<-DESC
                       A wrapper for the Sentinel Multi-factor Authenticator (www.sentinalapp.com.br)
                       DESC
  s.homepage         = "https://www.sentinelapp.com.br"
  s.license          = 'MIT'
  s.author           = { "left" => "left@tempest.com.br" }
  s.source           = { :git => "https://github.com/indigotech/br-multiplus-external-sentinel-ios-sdk.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/*.{h,m}'
  s.subspec 'Managers' do |m|
    m.source_files   = 'Pod/Classes/Managers/*.{h,m}'
  end

  s.subspec 'Thunder' do |t|
    t.source_files   = 'Pod/Classes/Thunder/*.{h,m}'
    t.subspec 'Synchronizer' do |sync|
      sync.source_files   = 'Pod/Classes/Thunder/Synchronizer/*.{h,m}'
    end
  end

  s.subspec 'WS' do |ws|
    ws.source_files   = 'Pod/Classes/WS/*.{h,m}'
    ws.subspec 'BaseController' do |bc|
      bc.source_files = 'Pod/Classes/WS/BaseController/*.{h,m}'
    end
    ws.subspec 'UsersController' do |uc|
      uc.source_files = 'Pod/Classes/WS/UsersController/*.{h,m}'
    end
  end

  s.subspec 'iOS-NTP' do |nt|
    nt.source_files   = 'Pod/External/iOS-NTP/*.{h,m}'
  end

  s.subspec 'GTMBase64' do |gt|
    gt.source_files   = 'Pod/External/GTMBase64/*.{h,m}'
    gt.requires_arc   = false
  end

  s.resource_bundles = {
    'SentinelKit' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'AeroGear-OTP', '1.0.1'
  s.dependency 'AFNetworking', '~> 2.5.0'
  s.dependency 'Base32', '~> 1.0'
  s.dependency 'CocoaAsyncSocket', '~> 7.3.0'
  s.dependency 'FMDB', '~> 2.4'
  s.dependency 'GSKeychain', '1.0.0-tq'
  s.dependency 'Reachability', '~> 3.1'
  s.dependency 'RNCryptor', '~> 2.2'
  s.dependency 'ZXingObjC', '~> 3.1.0'
end