//
//  AppDelegate.swift
//  SSCustomTabMenu
//
//  Created by Satish Rajpurohit on 11/08/17.
//  Copyright © 2017 Satish Rajpurohit. All rights reserved.
//

import UIKit

let MyDelegate = UIApplication.shared.delegate as! AppDelegate
var navController:UINavigationController!

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.setUpTabBar()
        
        return true
    }
 
    func setUpTabBar(){
       
        //Tab Controllers
        
        let plus = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "PlusVC")
       // let navigationController1 = UINavigationController(rootViewController: plus!)
        //navigationController1.navigationBar.setNavigationBarColor(navigationController: navigationController1, color: UIColor.clear,textColor: UIColor(white:0.55, alpha:1.0))
        
        let music = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "MusicVC")
     
        let Krewes:PlusVC? = storyBoard.MainStoryboard?.instantiateViewController(withIdentifier: "PlusVC") as! PlusVC?

        let navigationControllerKrewes = UINavigationController(rootViewController: Krewes!)
        navigationControllerKrewes.navigationBar.setNavigationBarColor(navigationController: navigationControllerKrewes, color: UIColor.black,textColor: UIColor(white:0.55, alpha:1.0))
        
        let tabController = storyBoard.TabMenuStoryboard?.instantiateViewController(withIdentifier: "TabMenuVC") as! TabMenuVC
        tabController.arrMenuItems[1] = MenuItem(viewControllerforMenu:Krewes!,  imageName: "Home", menuItemTitle: "HOME")
        tabController.arrMenuItems[2] = MenuItem(viewControllerforMenu:Krewes!, imageName: "Krews", menuItemTitle: "KREWS")
        tabController.arrMenuItems[3] = MenuItem(viewControllerforMenu:Krewes!, imageName: "Profile", menuItemTitle: "PROFILE")
        tabController.arrMenuItems[4] = MenuItem(viewControllerforMenu:Krewes!, imageName: "Events", menuItemTitle: "EVENTS")
        tabController.arrMenuItems[5] = MenuItem(viewControllerforMenu:Krewes!, imageName: "Artists", menuItemTitle: "ARTISTS")
        tabController.arrMenuItems[6] = MenuItem(viewControllerforMenu:Krewes!, imageName: "FF", menuItemTitle: "FAN FINDER")
        
        tabController.centerTab = plus
        tabController.RightTab = music
        

        MyDelegate.window!.rootViewController = tabController
    }
    
   
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

