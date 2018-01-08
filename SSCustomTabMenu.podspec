Pod::Spec.new do |s|
  s.name             = 'SSCustomTabMenu'
  s.version          = '0.1.3'
  s.summary          = 'Custom tab menu controller for iOS.'
 
  s.description      = 'This CustomTabMenu will add custom menu at bottom!'        
 
  s.homepage         = 'https://github.com/simformsolutions/SSCustomTabMenu'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'simformsolutions' => 'reg@simform.in' }
  s.source           = { :git => 'https://github.com/simformsolutions/SSCustomTabMenu.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
 

  s.subspec 'CustomTabMenu' do |ss|
  ss.subspec 'Helper' do |h|
  h.source_files = 'CustomTabMenu/Helper/*.swift'
 end

 s.subspec 'CustomTabMenu' do |story|
 story.resource_bundles = {
    'SSTabStoryBoard' => ['CustomTabMenu/SSTabStoryBoard/*.storyboard']
  }
  end 
  end
end