//
//  File.swift
//  SSCustomTabMenu
//
//  Created by Satish Rajpurohit on 08/11/17.
//  Copyright © 2017 Satish Rajpurohit. All rights reserved.
//

import Foundation
import UIKit

//class GradientView: UIView {
//    override open class var layerClass: AnyClass {
//        return CAGradientLayer.classForCoder()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        let gradientLayer = self.layer as! CAGradientLayer
//        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
//    }
//}

@IBDesignable public class GradientView: UIView {
    @IBInspectable var topColor: UIColor = UIColor.white
    @IBInspectable var bottomColor: UIColor = UIColor.black
    
    override public class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    override public func layoutSubviews() {
        (layer as! CAGradientLayer).colors = [topColor.cgColor, bottomColor.cgColor]
    }
}
