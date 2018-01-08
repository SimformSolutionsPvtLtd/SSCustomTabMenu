Pod::Spec.new do |s|
  s.name             = 'SSCustomTabMenu'
  s.version          = '0.1.6'
  s.summary          = 'Custom tab menu controller for iOS.'
 
  s.description      = 'This CustomTabMenu will add custom menu at bottom!'        
 
  s.homepage         = 'https://github.com/simformsolutions/SSCustomTabMenu'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'simformsolutions' => 'reg@simform.in' }
  s.source           = { :git => 'https://github.com/simformsolutions/SSCustomTabMenu.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
 
  s.subspec 'CustomTabMenu' do |ss|
 
    ss.subspec 'Helper' do |h|
      h.source_files = 'SSCustomTabMenu/CustomTabMenu/Helper/*.swift'
    end

    ss.subspec 'SSTabStoryBoard' do |story|
      story.resource_bundles = {
        'SSCustomTabMenu' => ['SSCustomTabMenu/CustomTabMenu/SSTabStoryBoard/*.storyboard']
      }
    end

    ss.subspec 'image' do |img|
    img.source_files = 'SSCustomTabMenu/CustomTabMenu/image/*.png'
    end

  end 
end