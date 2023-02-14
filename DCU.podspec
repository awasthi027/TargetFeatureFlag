Pod::Spec.new do |s|

#1

s.platform = :ios
s.ios.deployment_target = '16.0'

s.name = "DCU"

s.summary = "DCU"

s.requires_arc = true

s.default_subspec = 'Base'

# 2
s.version = "1.0.0"

s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
 }
 s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Ashish Awasthi" => "myemail.awasthi@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/awasthi027/TargetFeatureFlag"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/awasthi027/TargetFeatureFlag.git", 
             :tag => "#{s.version}" }

# 7
#s.framework = "UIKit"
#s.dependency = "Foundation"


# 8
s.subspec "Base" do |cs|
     cs.source_files = ['DCU/**/*.{swift}']
     cs.exclude_files = ['DCU/DCU2.0/*.{swift}']
end

s.subspec "DCU2.0" do |cs|
     cs.source_files = ['DCU/**/*.{swift}']
     cs.exclude_files = ['DCU/DCU1.0/*.{swift}']
end

# 10
s.swift_version = "5.5"

end
