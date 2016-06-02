#
#  Be sure to run `pod spec lint MixfaderSDKCocoa.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


Pod::Spec.new do |s|
s.name         = "MixfaderSDKCocoa"
s.version      = "2.0.1"
s.summary      = "The mixfader SDK"
s.description  = <<-DESC
The mixfader SDK, more info on themixfader.com/dev
DESC
s.homepage     = "http://themixfader.com"
s.license      = "Apache 2.0"
s.authors            = { "Jean-Baptise Fabre" => "jean-baptiste.fabre@djit.fr" }
s.ios.deployment_target = "8.0"
s.osx.deployment_target = "10.8"
s.source       = { :git => "https://github.com/Mixfader/MixfaderSDKCocoa.git", :tag => "2.0.1" }
s.source_files  = "**/*.{h,m}"


s.osx.vendored_frameworks = "MixfaderSDK_OSX.framework"
s.ios.vendored_frameworks = "MixfaderSDK_iOS.framework"

s.requires_arc = true
s.frameworks = "CoreMIDI", "CoreBluetooth"
end

