Pod::Spec.new do |s|
  s.name             = "AddWith"
  s.version          = "1.0.1"
  s.summary          = "Add subviews with its' subviews."
  s.homepage         = "https://github.com/KimDarren/AddWith"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "TAEJUN KIM" => "korean.darren@gmail.com" }
  s.source           = { :git => "https://github.com/KimDarren/AddWith.git",
                         :tag => s.version.to_s }
  s.source_files     = "Sources/AddWith/*.swift"
  s.requires_arc     = true

  s.ios.deployment_target = "8.0"
end