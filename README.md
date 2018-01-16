# SSCustomTabMenu
> Simple customizable iOS bottom menu works like Tabbar, in Swift.

[![Swift Version][swift-image]][swift-url]
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
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
let HOME = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "PlusVC")
let KREWS = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "MusicVC")
let PROFILE = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "PlusVC")
let EVENTS = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "MusicVC")
let ARTISTS = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "PlusVC")
let FANFINDER = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "MusicVC")
```
#### Initiate TabMenuVC
``` swift
let tabController = storyBoard.TabMenuStoryboard?.instantiateViewController(withIdentifier: "TabMenuVC") as! TabMenuVC
```
#### Set Menu Items with Title and image name
``` swift
tabController.arrMenuItems[1] = MenuItem(viewControllerforMenu:HOME!,  imageName: "Home", menuItemTitle: "HOME")

tabController.arrMenuItems[2] = MenuItem(viewControllerforMenu:KREWS!, imageName: "Krews", menuItemTitle: "KREWS")

tabController.arrMenuItems[3] = MenuItem(viewControllerforMenu:PROFILE!, imageName: "Profile", menuItemTitle: "PROFILE")

tabController.arrMenuItems[4] = MenuItem(viewControllerforMenu:EVENTS!, imageName: "Events", menuItemTitle: "EVENTS")

tabController.arrMenuItems[5] = MenuItem(viewControllerforMenu:ARTISTS!, imageName: "Artists", menuItemTitle: "ARTISTS")

tabController.arrMenuItems[6] = MenuItem(viewControllerforMenu:FANFINDER!, imageName: "FF", menuItemTitle: "FAN FINDER")

```
#### Add Center and Right TabBarItem
``` swift
tabController.centerTab = PROFILE
tabController.RightTab = ARTISTS
```
#### Add tabController as rootViewController
``` swift
MyDelegate.window!.rootViewController = tabController
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
[codebeat-image]: https://codebeat.co/assets/svg/badges/C-ffb83f-7198e9a1b7ad7f73977b0c9a5c7c3fffbfa25f262510e5681fd8f5a3188216b0.svg 
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
