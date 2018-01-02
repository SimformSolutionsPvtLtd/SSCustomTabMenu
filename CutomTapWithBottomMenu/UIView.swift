//
//  UIViewExtension.swift
//  real-pyng-app
//
//  Created by Adrian Grassi on 10/12/16.
//  Copyright © 2016 Adrian Grassi. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var rounded:Bool {
        get {
            return true
        }
        
        set {
            if rounded {
                self.roundView()
            }
        }
    }
    
    func roundView() {
        self.layer.cornerRadius = self.frame.size.width/2
        self.clipsToBounds = true
    }
    
    @IBInspectable var borderWidth: CGFloat {
        
        get {
            
            return layer.borderWidth
            
        }
        
        set {
            
            layer.borderWidth = newValue
            
        }
        
    }
    
    @IBInspectable var borderColor: UIColor {
        
        get {
            
            return UIColor(cgColor: layer.borderColor!)
            
        }
        
        set {
            
            layer.borderColor = newValue.cgColor
            
        }
        
    }
    
}
