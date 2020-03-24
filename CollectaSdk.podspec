Pod::Spec.new do |s|
    s.name         = "CollectaSdk"
    s.version      = "0.0.2"
    s.summary      = "Coronavirus disease (COVID-19) Self Assessment"
    s.description      = 'The self-assessment uses the latest advice and will help you better understand the risks and precautions you need to take based on your personal circumstances.

We do not ask that you provide any personally identifiable information. We do not collect or store any personal information.'

    s.homepage     = "http://medrics.us/"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright © 2020 Medrics. All rights reserved.
                  LICENSE
                }
    s.author           = { 'Medrics – Patient Experience Solutions' => 'muhammed.kh@medrics.net' }
    s.source           = { :git => 'https://github.com/medricsCO/CollectaSdk.git', :tag => s.version.to_s }
    
    s.public_header_files = "CollectaSdk.framework/Headers/*.h"
    s.source_files = "CollectaSdk.framework/Headers/*.h"
    s.vendored_frameworks = "CollectaSdk.framework"

    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target = '10.0'
end