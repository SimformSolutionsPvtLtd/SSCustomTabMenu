# SSCustomTabMenu
> Simple customizable iOS bottom menu works like Tabbar, in Swift.

[![Swift Version][swift-image]][swift-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]
[![CocoaPods Compatible][cocoa-image]][cocoa-url]
[![Platform][platform-image]][platform-url]
[![PRs Welcome][PR-image]][PR-url]

![Alt text](https://raw.githubusercontent.com/simformsolutions/SSCustomTabMenu/master/customTab.gif?raw=true)
## Features

- [x]  Simple and customizable iOS Tab Menu items, in Swift.

## Requirements

- iOS 9.0+
- Xcode 9.0

## Installation

#### CocoaPods
You can use [CocoaPods](https://cocoapods.org/) to install `SSCustomTabMenu` by adding it to your `Podfile`:

```ruby
platform :ios, '9.0'
use_frameworks!
pod 'SSCustomTabMenu'
```

To get the full benefits import `YourLibrary` wherever you import UIKit

``` swift
import UIKit
import SSCustomTabMenu
```

#### Manually
1. Download and drop ```CustomTabMenu```  in your project.
2. Congratulations!

## Usage example
### Into your Appdelegate
``` swift
import SSCustomTabMenu
```
### and add below two lines
``` swift
let MyDelegate = UIApplication.shared.delegate as! AppDelegate
var navController:UINavigationController!
```
#### Add below code into didFinishLaunchingWithOptions

#### Initiate your controller
``` swift
let homeVC        = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "HomeVC")
let musicVC       = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "MusicVC")
let profileVC     = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "ProfileVC")
let eventsVC      = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "EventsVC")
let artistsVC     = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "ArtistsVC")
let fanFinderVC   = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "FanFinderVC")
```
#### Initiate TabMenuVC
``` swift
let tabController = UIStoryboard.TabMenuStoryboard.instantiateViewController(withIdentifier: "TabMenuVC") as! TabMenuVC
```
#### Set Menu Items with Title and image name
``` swift
tabController.arrMenuItems[1] = MenuItem(viewControllerforMenu:Krewes, imageName: "Home",          menuItemTitle: "HOME")
tabController.arrMenuItems[2] = MenuItem(viewControllerforMenu:Krewes, imageName: "Krews",         menuItemTitle: "KREWS")
tabController.arrMenuItems[3] = MenuItem(viewControllerforMenu:Krewes, imageName: "Profile",       menuItemTitle: "PROFILE")
tabController.arrMenuItems[4] = MenuItem(viewControllerforMenu:Krewes, imageName: "Events",        menuItemTitle: "EVENTS")
tabController.arrMenuItems[5] = MenuItem(viewControllerforMenu:Krewes, imageName: "Artists",       menuItemTitle: "ARTISTS")
tabController.arrMenuItems[6] = MenuItem(viewControllerforMenu:Krewes, imageName: "Fan Finder",    menuItemTitle: "FAN FINDER")
```
#### Add Center and Right TabBarItem
``` swift
tabController.centerTab = plusVC
tabController.RightTab  = musicVC
```
#### Add tabController as rootViewController
``` swift
self.window!.rootViewController = tabController
```

## Contribute

We would love you for the contribution to SSCustomTabMenu, check the LICENSE file for more info.

## Meta

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/simformsolutions/SSCustomTabMenu](https://github.com/simformsolutions)

[swift-image]:https://img.shields.io/badge/swift-3.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[codebeat-image]: https://codebeat.co/assets/svg/badges/C-ffb83f-7198e9a1b7ad7f73977b0c9a5c7c3fffbfa25f262510e5681fd8f5a3188216b0.svg
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
[platform-image]:https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat
[platform-url]:http://cocoapods.org/pods/LFAlertController
[cocoa-image]:https://img.shields.io/cocoapods/v/EZSwiftExtensions.svg
[cocoa-url]:https://img.shields.io/cocoapods/v/LFAlertController.svg
[PR-image]:https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square
[PR-url]:http://makeapullrequest.com
