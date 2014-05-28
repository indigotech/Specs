Pod::Spec.new do |s|
  s.name         = "TRGeotrigger"
  s.version      = "1.0.0"
  s.summary      = "Taqtile Retail - Geotrigger Library for iOS"
  s.homepage     = "https://github.com/shingle/taqtile-retail"
  s.author       = { "Taqtile" => "taqtile@taqtile.com" }
  s.source       = { :git => "https://github.com/shingle/taqtile-retail.git", :tag => "campaign-geotrigger-ios_v1.0.0" }
  s.license      = { :type => 'Copyright', :file => 'LICENSE' }
  s.platform     = :ios, '5.1'
  s.source_files = 'Source/*'
  s.requires_arc = true
  s.dependency 'Geoloqi-iPhone-SDK', '~> 12.296'
end
