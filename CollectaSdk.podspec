Pod::Spec.new do |s|
    s.name         = "CollectaSdk"
    s.version      = "0.0.3"
    s.summary      = "Coronavirus disease (COVID-19) Self Assessment"
    s.description      = 'Solution to help support and supplement current tracing efforts of Covid-19 infected individual's location history and digitally gathering inquiries of potential infected individuals.'

    s.homepage     = "http://medrics.us/"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright © 2020 Medrics. All rights reserved.
                  LICENSE
                }
    s.author           = { 'Medrics' => 'muhammed.kh@medrics.net' }
    s.source           = { :git => 'https://github.com/medricsCO/CollectaSdk.git', :tag => s.version.to_s }
    
    s.public_header_files = "CollectaSdk.framework/Headers/*.h"
    s.source_files = "CollectaSdk.framework/Headers/*.h"
    s.vendored_frameworks = "CollectaSdk.framework"

    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target = '10.0'
end