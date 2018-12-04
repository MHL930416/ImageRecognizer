#
#  Be sure to run `pod spec lint ImageRecognizer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ImageRecognizer"
  s.version      = "1.1.0"
  s.summary      = "ImageRecognizer."
  s.description  = <<-DESC 
                    一个测试打包的cocoapods项目
                   DESC

  s.homepage     = "https://github.com/MHL930416/ImageRecognizer"


  s.license      = "MIT"

  s.author             = { "MHL930416" => "472765617@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/MHL930416/ImageRecognizer.git", :tag => "#{s.version}" }

  s.source_files  = "MBProgressHUD/*.{h,m}"

  s.frameworks  = "UIKit","AVFoundation","Foundation"
  
end
