#
#  Be sure to run `pod spec lint MixfaderSDKCocoa.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


Pod::Spec.new do |s|
s.name         = "MixfaderSDKCocoa"
s.version      = "2.0"
s.summary      = "The mixfader SDK"
s.description  = <<-DESC
The mixfader SDK, more info on themixfader.com/dev
DESC
s.homepage     = "http://themixfader.com"
s.license      = { :type => 'All rights reserved', :text => <<-LICENSE
DJiT 2015 - All rights reserved
LICENSE
}
s.authors            = { "Jean-Baptise Fabre" => "jean-baptiste.fabre@djit.fr" }
s.ios.deployment_target = "8.0"
s.osx.deployment_target = "10.8"
s.source       = { :git => "git@github.com:Mixfader/MixfaderSDKCocoa.git", :tag => "2.0" }
s.source_files  = "**/*.{h,m}"

s.osx.source_files  =  "MixfaderSDKOSX/*.*.{h,m}", "MixfaderSDKOSX/include/*.h"
s.osx.vendored_library = "MixfaderSDKOSX/libMXFSDK_osx.a"
s.osx.public_header_files = "MixfaderSDKiOS/include/*.h"

s.ios.source_files  = "MixfaderSDKiOS/*.*.{h,m}", "MixfaderSDKiOS/include/*.h"
s.ios.vendored_library = "MixfaderSDKiOS/libMXFSDK_ios.a"
s.ios.public_header_files = "MixfaderSDKOSX/include/*.h"

s.requires_arc = true
s.frameworks = "CoreMIDI", "CoreBluetooth"
end

