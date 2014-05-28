Pod::Spec.new do |s|
  s.name     = 'ESEntitySync'
  s.version  = '0.1.2'
  s.platform = :ios
  s.license  = 'Apache License, Version 2.0'
  s.summary  = 'ESEntitySync provides entity models sync between iOS devices and Server.'
  s.homepage = 'https://github.com/indigotech/ESEntitySync'
  s.author   = { 'Massaki' => 'marcio.massaki@i.ndigo.com.br' }
	
  s.source   = { :git => 'git://github.com/indigotech/ESEntitySync.git', :tag => 'v0.1.2' }

  s.source_files = 'Source/*.{h,m}', 'Source/Categories/*.{h,m}'
  s.clean_paths  = 'Sample'
  s.framework    = 'CoreData'
	
  s.dependency 'JSONKit', '~>1.4'
	s.dependency 'UIDeviceAddition', '~>1.0'
	
	def s.post_install(target)
    prefix_header = config.project_pods_root + target.prefix_header_filename
    prefix_header.open('a') do |file|
      file.puts(%{#ifdef __OBJC__\n#import "CoreData+ESEntitySync.h"\n#endif})
    end
  end
end
