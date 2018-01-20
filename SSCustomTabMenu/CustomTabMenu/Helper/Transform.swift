//
//  Transform.swift
//  SSCustomTabMenu
//
//  Created by Simform Solutions on 11/08/17.
//  Copyright © 2017 Simform Solutions. All rights reserved.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//

import UIKit

protocol BasicAnimation {
    
    func ScaleAnimation(_ toItem: UIView, duration: Double)
    func OpacityAnimation(_ toItem: UIView, duration: Double)
    func ReverseScaleAnimation(_ toItem: UIView, duration: Double)
    func ReverseOpacityAnimation(_ toItem: UIView, duration: Double)
    func positionYAnimation(_ toItem: UIView, duration: Double,fromValue:Any)
}

extension BasicAnimation {
    
    
    func ScaleAnimation(_ toItem: UIView, duration: Double){
       
        let toValue = CATransform3D( m11: 1, m12: 0, m13: 0, m14: 0, m21: 0, m22: 1, m23: 0, m24: 0.0008, m31: 0, m32: 0, m33: 1, m34: 0, m41: 0, m42: 0, m43: 0, m44: 1 )
        
        let Scale  = commanAnimation(0.296, CATransform3DIdentity, to: toValue, key: "transform", duration: duration, kCAMediaTimingFunctionEaseInEaseOut)
        Scale.beginTime = toItem.layer.convertTime(CACurrentMediaTime(), from: nil)
        
        toItem.layer.add(Scale, forKey: nil)            
    }
    
    
    func OpacityAnimation(_ toItem: UIView, duration: Double){
        //toItem.layer.backgroundColor = UIColor.black.cgColor
        let Opacity  = commanAnimation(0.299, 1, to: 0.6, key: "opacity", duration: duration, kCAMediaTimingFunctionEaseInEaseOut)
        Opacity.beginTime = toItem.layer.convertTime(CACurrentMediaTime(), from: nil)
        toItem.layer.add(Opacity, forKey: nil)
    }
    
    func ReverseScaleAnimation(_ toItem: UIView, duration: Double){
        
        let fromValue = CATransform3D( m11: 1, m12: 0, m13: 0, m14: 0, m21: 0, m22: 1, m23: 0, m24: 0.0008, m31: 0, m32: 0, m33: 1, m34: 0, m41: 0, m42: 0, m43: 0, m44: 1 )
        
        let Scale  = commanAnimation(0.785625, fromValue, to: CATransform3DIdentity, key: "transform", duration: duration, kCAMediaTimingFunctionEaseInEaseOut)
        Scale.beginTime = toItem.layer.convertTime(CACurrentMediaTime(), from: nil)
        toItem.layer.add(Scale, forKey: nil)
    }

    func ReverseOpacityAnimation(_ toItem: UIView, duration: Double){
        let Opacity  = commanAnimation(0.299, 0.6, to: 1, key: "opacity", duration: duration, kCAMediaTimingFunctionEaseInEaseOut)
        Opacity.beginTime = toItem.layer.convertTime(CACurrentMediaTime(), from: nil)
        toItem.layer.add(Opacity, forKey: nil)
    }
    
    
    func positionYAnimation(_ toItem: UIView, duration: Double,fromValue:Any){
        let positionY  = commanAnimation(0.299, fromValue, to: screenSize.size.height*2, key: "position.y", duration: duration, kCAMediaTimingFunctionEaseInEaseOut)
        positionY.beginTime = toItem.layer.convertTime(CACurrentMediaTime(), from: nil)
        toItem.layer.add(positionY, forKey: nil)
    }
    
    fileprivate func commanAnimation(_ beginTime:Double,_ from: Any, to: Any, key: String, duration: Double,_ timingFunction:String) -> CABasicAnimation {
        
        return Init(CABasicAnimation(keyPath: key)) {
            $0.beginTime           = beginTime
            $0.duration            = duration
            $0.fromValue           = from
            $0.toValue             = to
            $0.fillMode            = kCAFillModeForwards
            $0.isRemovedOnCompletion = false
            $0.timingFunction = CAMediaTimingFunction(name: timingFunction)
        }
    }
}


internal func Init<Type>(_ value : Type, block: (_ object: Type) -> Void) -> Type
{
    block(value)
    return value
}

