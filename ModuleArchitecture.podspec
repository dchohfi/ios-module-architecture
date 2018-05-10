Pod::Spec.new do |s|
  s.name             = 'ModuleArchitecture'
  s.version          = '0.12.0'
  s.summary          = 'iOS Architecture'
  s.description      = <<-DESC
  Protocols that define a module based iOS Architecture
                       DESC

  s.homepage         = 'https://github.com/dchohfi/ios-module-architecture'
  s.license          = { :type => 'Private', :text => "Code is private" }
  s.author           = { 'dchohfi' => 'dchohfi@gmail.com', 'viniciusaro' => 'vinicius.a.ro@gmail.com', 'rdgborges' => 'rborges.soares@gmail.com' }
  s.source           = { :git => 'https://github.com/dchohfi/ios-module-architecture.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.1'
  s.source_files = 'ModuleArchitecture/Classes/**/*'
end
