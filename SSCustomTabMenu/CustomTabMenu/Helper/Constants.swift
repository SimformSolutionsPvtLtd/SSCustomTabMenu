//
//  Constants.swift
//  SSCustomTabMenu
//
//  Created by Satish Rajpurohit on 11/08/17.
//  Copyright © 2017 Satish Rajpurohit. All rights reserved.
//

import UIKit


// Custom Gloabl Objects

public let storyBoard = Constants.Storyboard.storyBoard
public let appConst = Constants.appconstants

public let screenSize: CGRect = UIScreen.main.bounds


public class Constants: NSObject {
    
    //------------------------------------------
    class var appconstants: Constants {
        struct Singleton {
            static let instance = Constants()
        }
        return Singleton.instance
    }
    
       // MARK: Sub Class - Storyboard
    //********************************************************************************************//
    public class Storyboard: NSObject {
        
        //------------------------------------------
       public class var storyBoard: Storyboard {
            struct Singleton {
                static let instance = Storyboard()
            }
            return Singleton.instance
        }
        
        
        //------------------------------------------
       public var MainStoryboard: UIStoryboard? {
            get {
                return UIStoryboard(name: "Main", bundle: nil)
            }
        }
        
        
       public var TabMenuStoryboard: UIStoryboard? {
            get {
                return UIStoryboard(name: "TabMenu", bundle: nil)
            }
        }
        
    } // Class Ends: Storyboard
    
//    func changeRootViewController(newRootViewController:UIViewController)
//    {
//        if !(MyDelegate.window!.rootViewController != nil) {
//            MyDelegate.window!.rootViewController = newRootViewController
//            return
//        }
//        
//        let snapShot: UIView = MyDelegate.window!.snapshotView(afterScreenUpdates: true)!
//        newRootViewController.view.addSubview(snapShot)
//        
//        MyDelegate.window!.rootViewController = newRootViewController
//        
//        UIView.animate(withDuration: 1.0, animations: {
//            
//            snapShot.layer.opacity = 0
//            snapShot.layer.transform = CATransform3DMakeScale(1.5, 1.5, 1.5)
//            
//        }, completion: {(finished: Bool) in    snapShot.removeFromSuperview()
//            
//        })
//        
//    }
    
}
