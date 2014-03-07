Pod::Spec.new do |s|
  s.name         = "MZRLocalizer"
  s.version      = "0.0.1"
  s.summary      = "It is Localization helper for iOS. You can gether NSLocalizedString in one place with this library."
  s.description  = <<-DESC
                   The localization process is very messy. The NSLocalizedString are scattered everywhere. It's not confortable. This library was created to solve this problem.
                   DESC
  s.homepage     = "http://github.com/morizotter/MZRLocalizer"
  s.license      = 'MIT'
  s.author       = { "Naoki Morita" => "author" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "git@github.com:morizotter/MZRLocalizer.git", :tag => "0.0.1" }
#   s.source       = { :git => ".git", :tag => "0.0.1" }
  s.source_files  = 'Classes/**/*.{h,m}'
  s.requires_arc = true
end
