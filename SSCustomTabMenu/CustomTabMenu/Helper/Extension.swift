//
//  CTView.swift
//  SSCustomTabMenu
//
//  Created by Satish Rajpurohit on 11/08/17.
//  Copyright © 2017 Satish Rajpurohit. All rights reserved.
//

import UIKit


extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    func takeSnapshot(_ frame: CGRect) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0.0)
        
        let context = UIGraphicsGetCurrentContext();
        context?.translateBy(x: frame.origin.x * -1, y: frame.origin.y * -1)
        
        guard let currentContext = UIGraphicsGetCurrentContext() else {
            return nil
        }
        
        self.layer.render(in: currentContext)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
}

extension UINavigationBar {
    func setNavigationBarColor(navigationController : UINavigationController?,
                               color : UIColor,textColor:UIColor) {
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar .setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = color
        navigationController?.navigationBar.backgroundColor =  color
    }
}

