Pod::Spec.new do |s|
  s.name     = 'BZObjectStore'
  s.version  = '1.3.15'
  s.license  = 'MIT'
  s.summary  = 'ORM library wrapped FMDB'
  s.homepage = 'https://github.com/expensivegasprices/BZObjectStore'
  s.author   = { "BONZOO LLC" => "expensivegasprices@gmail.com" }
  s.source   = { :git => 'https://github.com/expensivegasprices/BZObjectStore.git', :tag => s.version.to_s }
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency 'FMDB'
    cs.dependency 'BZRuntime'
    cs.dependency 'AutoCoding'
    cs.source_files = 'BZObjectStore/Core/**/*.{h,m}'
  end

  s.subspec 'CoreLocation' do |ps|
    ps.dependency 'BZObjectStore/Core'
    ps.framework    = 'CoreLocation'
    ps.source_files = 'BZObjectStore/CoreLocation/*.{h,m}'
  end

  s.subspec 'ActiveRecord' do |ps|
    ps.dependency 'BZObjectStore/Core'
    ps.source_files = 'BZObjectStore/ActiveRecord/*.{h,m}'
  end

end
