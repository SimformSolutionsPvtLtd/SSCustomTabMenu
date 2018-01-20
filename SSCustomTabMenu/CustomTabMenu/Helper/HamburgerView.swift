//
//  HamburgerView.swift
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

public class HamburgerView: UIButton
{
    // MARK: - Properties
    private var animationDuration = 0.25
    private var ovalLayer: CAShapeLayer?
    private var shapeLayer2: CAShapeLayer?
    private var shapeLayer1: CAShapeLayer?
    private var shapeLayer: CAShapeLayer?

    private var strokecolorAnimation: CABasicAnimation?
    private var reverseStrokecolorAnimation: CABasicAnimation?
    private var transformRotationZAnimation: CAKeyframeAnimation?
    private var positionYAnimation: CABasicAnimation?
    private var positionXAnimation: CABasicAnimation?
    private var fillcolorAnimation: CABasicAnimation?
    private var reverseTransformRotationZAnimation: CAKeyframeAnimation?
    private var reversePositionYAnimation: CABasicAnimation?
    private var reversePositionXAnimation: CABasicAnimation?
    private var reverseFillcolorAnimation: CABasicAnimation?
    private var opacityAnimation: CABasicAnimation?
    private var reverseOpacityAnimation: CABasicAnimation?
    private var transformRotationZAnimation1: CAKeyframeAnimation?
    private var positionYAnimation1: CABasicAnimation?
    private var positionXAnimation1: CABasicAnimation?
    private var fillcolorAnimation1: CABasicAnimation?
    private var reverseTransformRotationZAnimation1: CAKeyframeAnimation?
    private var reversePositionYAnimation1: CABasicAnimation?
    private var reversePositionXAnimation1: CABasicAnimation?
    private var reverseFillcolorAnimation1: CABasicAnimation?

    // MARK: - Initialization

    init()
    {
        super.init(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        self.setupLayers()
    }

    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.setupLayers()
    }

    // MARK: - Setup Layers

    private func setupLayers()
    {
        // Colors
        //
        let shadowcolor     = UIColor(red: 0.047059, green: 0.105882, blue: 0.137255, alpha: 1)
        let clearColor      = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        let whiteColor      = UIColor.white
        let fillcolor       = UIColor(red: 0.178306, green: 0.178306, blue: 0.178306, alpha: 1)
        let strokecolor     = UIColor(red: 0.806946, green: 0.806946, blue: 0.806946, alpha: 1)
        let lightBlueColor  = UIColor(red: 0.009054, green: 0.830696, blue: 0.972815, alpha: 1)

        // Paths
        //
        let ovalPath = CGMutablePath()
        ovalPath.move(to: CGPoint(x: 25, y: 50))
        ovalPath.addCurve(to: CGPoint(x: 50, y: 25), control1: CGPoint(x: 38.806999, y: 50), control2: CGPoint(x: 50, y: 38.806999))
        ovalPath.addCurve(to: CGPoint(x: 25, y: 0), control1: CGPoint(x: 50, y: 11.193), control2: CGPoint(x: 38.806999, y: 0))
        ovalPath.addCurve(to: CGPoint(x: 0, y: 25), control1: CGPoint(x: 11.193, y: 0), control2: CGPoint(x: 0, y: 11.193))
        ovalPath.addCurve(to: CGPoint(x: 25, y: 50), control1: CGPoint(x: 0, y: 38.806999), control2: CGPoint(x: 11.193, y: 50))
        ovalPath.closeSubpath()
        ovalPath.move(to: CGPoint(x: 25, y: 50))

        let shapePath = CGMutablePath()
        shapePath.move(to: CGPoint(x: 19, y: 0))
        shapePath.addLine(to: CGPoint(x: 2, y: 0))
        shapePath.addCurve(to: CGPoint(x: 0, y: 2), control1: CGPoint(x: 0.831, y: 0), control2: CGPoint(x: 0, y: 0.907))
        shapePath.addCurve(to: CGPoint(x: 2, y: 4), control1: CGPoint(x: 0, y: 3.093), control2: CGPoint(x: 0.831, y: 4))
        shapePath.addLine(to: CGPoint(x: 19, y: 4))
        shapePath.addCurve(to: CGPoint(x: 21, y: 2), control1: CGPoint(x: 20.169001, y: 4), control2: CGPoint(x: 21, y: 3.093))
        shapePath.addCurve(to: CGPoint(x: 19, y: 0), control1: CGPoint(x: 21, y: 0.907), control2: CGPoint(x: 20.169001, y: 0))
        shapePath.closeSubpath()
        shapePath.move(to: CGPoint(x: 19, y: 0))

        let shapePath1 = CGMutablePath()
        shapePath1.move(to: CGPoint(x: 2, y: 4))
        shapePath1.addLine(to: CGPoint(x: 19, y: 4))
        shapePath1.addCurve(to: CGPoint(x: 21, y: 2), control1: CGPoint(x: 20.165001, y: 4), control2: CGPoint(x: 21, y: 3.093))
        shapePath1.addCurve(to: CGPoint(x: 19, y: 0), control1: CGPoint(x: 21, y: 0.907), control2: CGPoint(x: 20.165001, y: 0))
        shapePath1.addLine(to: CGPoint(x: 2, y: 0))
        shapePath1.addCurve(to: CGPoint(x: 0, y: 2), control1: CGPoint(x: 0.835, y: 0), control2: CGPoint(x: 0, y: 0.907))
        shapePath1.addCurve(to: CGPoint(x: 2, y: 4), control1: CGPoint(x: 0, y: 3.093), control2: CGPoint(x: 0.835, y: 4))
        shapePath1.closeSubpath()
        shapePath1.move(to: CGPoint(x: 2, y: 4))

        let shapePath2 = CGMutablePath()
        shapePath2.move(to: CGPoint(x: 19, y: 0))
        shapePath2.addLine(to: CGPoint(x: 2, y: 0))
        shapePath2.addCurve(to: CGPoint(x: 0, y: 2), control1: CGPoint(x: 0.819, y: 0), control2: CGPoint(x: 0, y: 0.907))
        shapePath2.addCurve(to: CGPoint(x: 2, y: 4), control1: CGPoint(x: 0, y: 3.093), control2: CGPoint(x: 0.819, y: 4))
        shapePath2.addLine(to: CGPoint(x: 19, y: 4))
        shapePath2.addCurve(to: CGPoint(x: 21, y: 2), control1: CGPoint(x: 20.181, y: 4), control2: CGPoint(x: 21, y: 3.093))
        shapePath2.addCurve(to: CGPoint(x: 19, y: 0), control1: CGPoint(x: 21, y: 0.907), control2: CGPoint(x: 20.181, y: 0))
        shapePath2.closeSubpath()
        shapePath2.move(to: CGPoint(x: 19, y: 0))

        // hamburger
        //
        let hamburgerLayer = CALayer()
        hamburgerLayer.name = "hamburger"
        hamburgerLayer.bounds = CGRect(x: 0, y: 0, width: 50, height: 50)
        hamburgerLayer.position = CGPoint(x: 0, y: 0)
        hamburgerLayer.anchorPoint = CGPoint(x: 0, y: 0)
        hamburgerLayer.contentsGravity = kCAGravityCenter

            // hamburger Sublayers
            //

            // Oval 3
            //
            let ovalLayer = CAShapeLayer()
            ovalLayer.name = "Oval 3"
            ovalLayer.bounds = CGRect(x: 0, y: 0, width: 50, height: 50)
            ovalLayer.position = CGPoint(x: 0, y: 0)
            ovalLayer.anchorPoint = CGPoint(x: 0, y: 0)
            ovalLayer.contentsGravity = kCAGravityCenter
            ovalLayer.shadowOpacity = 1
            ovalLayer.shadowOffset = CGSize(width: 1, height: 1)
            ovalLayer.shadowColor = shadowcolor.cgColor

                // Oval 3 Animations
                //

                // strokeColor
                //
                let strokecolorAnimation = CABasicAnimation()
                strokecolorAnimation.beginTime = 0.304
                strokecolorAnimation.duration = animationDuration
                strokecolorAnimation.fillMode = kCAFillModeForwards
                strokecolorAnimation.isRemovedOnCompletion = false
                strokecolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                strokecolorAnimation.keyPath = "strokeColor"
                strokecolorAnimation.toValue = clearColor.cgColor


                // Reverse-strokeColor
                //
                let reverseStrokecolorAnimation = CABasicAnimation()
                reverseStrokecolorAnimation.beginTime = 0.791001
                reverseStrokecolorAnimation.duration = animationDuration
                reverseStrokecolorAnimation.fillMode = kCAFillModeForwards
                reverseStrokecolorAnimation.isRemovedOnCompletion = false
                reverseStrokecolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                reverseStrokecolorAnimation.keyPath = "strokeColor"
                reverseStrokecolorAnimation.toValue = whiteColor.cgColor
                reverseStrokecolorAnimation.fromValue = clearColor.cgColor

            ovalLayer.path = ovalPath
            ovalLayer.fillColor = fillcolor.cgColor
            ovalLayer.strokeColor = strokecolor.cgColor
            ovalLayer.fillRule = kCAFillRuleEvenOdd
            ovalLayer.lineWidth = 2

            hamburgerLayer.addSublayer(ovalLayer)

            // crossLayer
            //
            let crossLayer = CALayer()
            crossLayer.name = "crossLayer"
            crossLayer.bounds = CGRect(x: 0, y: 0, width: 21, height: 18)
            crossLayer.position = CGPoint(x: 15, y: 16)
            crossLayer.anchorPoint = CGPoint(x: 0, y: 0)
            crossLayer.contentsGravity = kCAGravityCenter

                // noun_345386_cc Sublayers
                //

                // Shape-3
                //
                let shapeLayer = CAShapeLayer()
                shapeLayer.name = "Shape-3"
                shapeLayer.bounds = CGRect(x: 0, y: 0, width: 21, height: 4)
                shapeLayer.position = CGPoint(x: 0, y: 0)
                shapeLayer.anchorPoint = CGPoint(x: 0, y: 0)
                shapeLayer.contentsGravity = kCAGravityCenter

                    // Shape-3 Animations
                    //

                    // transform.rotation.z
                    //
                    let transformRotationZAnimation = CAKeyframeAnimation()
                    transformRotationZAnimation.beginTime = 0.307
                    transformRotationZAnimation.duration = animationDuration
                    transformRotationZAnimation.fillMode = kCAFillModeForwards
                    transformRotationZAnimation.isRemovedOnCompletion = false
                    transformRotationZAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    transformRotationZAnimation.keyPath = "transform.rotation.z"
                    transformRotationZAnimation.values = [ 0, 0.75 ]
                    transformRotationZAnimation.calculationMode = kCAAnimationLinear


                    // position.y
                    //
                    let positionYAnimation = CABasicAnimation()
                    positionYAnimation.beginTime = 0.304374
                    positionYAnimation.duration = animationDuration
                    positionYAnimation.fillMode = kCAFillModeForwards
                    positionYAnimation.isRemovedOnCompletion = false
                    positionYAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    positionYAnimation.keyPath = "position.y"
                    positionYAnimation.toValue = 2


                    // position.x
                    //
                    let positionXAnimation = CABasicAnimation()
                    positionXAnimation.beginTime = 0.304374
                    positionXAnimation.duration = animationDuration
                    positionXAnimation.fillMode = kCAFillModeForwards
                    positionXAnimation.isRemovedOnCompletion = false
                    positionXAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    positionXAnimation.keyPath = "position.x"
                    positionXAnimation.toValue = 4


                    // fillColor
                    //
                    let fillcolorAnimation = CABasicAnimation()
                    fillcolorAnimation.beginTime = 0.304374
                    fillcolorAnimation.duration = animationDuration
                    fillcolorAnimation.fillMode = kCAFillModeForwards
                    fillcolorAnimation.isRemovedOnCompletion = false
                    fillcolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    fillcolorAnimation.keyPath = "fillColor"
                    fillcolorAnimation.toValue = lightBlueColor.cgColor


                    // Reverse-transform.rotation.z
                    //
                    let reverseTransformRotationZAnimation = CAKeyframeAnimation()
                    reverseTransformRotationZAnimation.beginTime = 0.793627
                    reverseTransformRotationZAnimation.duration = animationDuration
                    reverseTransformRotationZAnimation.fillMode = kCAFillModeForwards
                    reverseTransformRotationZAnimation.isRemovedOnCompletion = false
                    reverseTransformRotationZAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    reverseTransformRotationZAnimation.keyPath = "transform.rotation.z"
                    reverseTransformRotationZAnimation.values = [ 0.75, 0 ]
                    reverseTransformRotationZAnimation.calculationMode = kCAAnimationLinear


                    // Reverse-position.y
                    //
                    let reversePositionYAnimation = CABasicAnimation()
                    reversePositionYAnimation.beginTime = 0.791001
                    reversePositionYAnimation.duration = animationDuration
                    reversePositionYAnimation.fillMode = kCAFillModeForwards
                    reversePositionYAnimation.isRemovedOnCompletion = false
                    reversePositionYAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    reversePositionYAnimation.keyPath = "position.y"
                    reversePositionYAnimation.toValue = 0
                    reversePositionYAnimation.fromValue = 2


                    // Reverse-position.x
                    //
                    let reversePositionXAnimation = CABasicAnimation()
                    reversePositionXAnimation.beginTime = 0.791001
                    reversePositionXAnimation.duration = animationDuration
                    reversePositionXAnimation.fillMode = kCAFillModeForwards
                    reversePositionXAnimation.isRemovedOnCompletion = false
                    reversePositionXAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    reversePositionXAnimation.keyPath = "position.x"
                    reversePositionXAnimation.toValue = 0


                    // Reverse-fillColor
                    //
                    let reverseFillcolorAnimation = CABasicAnimation()
                    reverseFillcolorAnimation.beginTime = 0.791001
                    reverseFillcolorAnimation.duration = animationDuration
                    reverseFillcolorAnimation.fillMode = kCAFillModeForwards
                    reverseFillcolorAnimation.isRemovedOnCompletion = false
                    reverseFillcolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    reverseFillcolorAnimation.keyPath = "fillColor"
                    reverseFillcolorAnimation.toValue = whiteColor.cgColor
                    reverseFillcolorAnimation.fromValue = lightBlueColor.cgColor

                shapeLayer.path = shapePath
                shapeLayer.fillColor = whiteColor.cgColor
                shapeLayer.strokeColor = clearColor.cgColor
                shapeLayer.fillRule = kCAFillRuleEvenOdd
                shapeLayer.lineWidth = 0

                crossLayer.addSublayer(shapeLayer)

                // Shape-2
                //
                let shapeLayer1 = CAShapeLayer()
                shapeLayer1.name = "Shape-2"
                shapeLayer1.bounds = CGRect(x: 0, y: 0, width: 21, height: 4)
                shapeLayer1.position = CGPoint(x: 0, y: 7)
                shapeLayer1.anchorPoint = CGPoint(x: 0, y: 0)
                shapeLayer1.contentsGravity = kCAGravityCenter

                    // Shape-2 Animations
                    //

                    // opacity
                    //
                    let opacityAnimation = CABasicAnimation()
                    opacityAnimation.beginTime = 0.299375
                    opacityAnimation.duration = animationDuration
                    opacityAnimation.fillMode = kCAFillModeForwards
                    opacityAnimation.isRemovedOnCompletion = false
                    opacityAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    opacityAnimation.keyPath = "opacity"
                    opacityAnimation.toValue = 0


                    // Reverse-opacity
                    //
                    let reverseOpacityAnimation = CABasicAnimation()
                    reverseOpacityAnimation.beginTime = 0.791001
                    reverseOpacityAnimation.duration = animationDuration
                    reverseOpacityAnimation.fillMode = kCAFillModeForwards
                    reverseOpacityAnimation.isRemovedOnCompletion = false
                    reverseOpacityAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    reverseOpacityAnimation.keyPath = "opacity"
                    reverseOpacityAnimation.toValue = 1
                    reverseOpacityAnimation.fromValue = 0

                shapeLayer1.path = shapePath1
                shapeLayer1.fillColor = whiteColor.cgColor
                shapeLayer1.strokeColor = clearColor.cgColor
                shapeLayer1.fillRule = kCAFillRuleEvenOdd
                shapeLayer1.lineWidth = 0

                crossLayer.addSublayer(shapeLayer1)

                // Shape-1
                //
                let shapeLayer2 = CAShapeLayer()
                shapeLayer2.name = "Shape-1"
                shapeLayer2.bounds = CGRect(x: 0, y: 0, width: 21, height: 4)
                shapeLayer2.position = CGPoint(x: 0, y: 14)
                shapeLayer2.anchorPoint = CGPoint(x: 0, y: 0)
                shapeLayer2.contentsGravity = kCAGravityCenter

                    // Shape-1 Animations
                    //

                    // transform.rotation.z
                    //
                    let transformRotationZAnimation1 = CAKeyframeAnimation()
                    transformRotationZAnimation1.beginTime = 0.299375
                    transformRotationZAnimation1.duration = animationTime
                    transformRotationZAnimation1.fillMode = kCAFillModeForwards
                    transformRotationZAnimation1.isRemovedOnCompletion = false
                    transformRotationZAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    transformRotationZAnimation1.keyPath = "transform.rotation.z"
                    transformRotationZAnimation1.values = [ 0, -0.75 ]
                    transformRotationZAnimation1.calculationMode = kCAAnimationLinear


                    // position.y
                    //
                    let positionYAnimation1 = CABasicAnimation()
                    positionYAnimation1.beginTime = 0.304374
                    positionYAnimation1.duration = animationTime
                    positionYAnimation1.fillMode = kCAFillModeForwards
                    positionYAnimation1.isRemovedOnCompletion = false
                    positionYAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    positionYAnimation1.keyPath = "position.y"
                    positionYAnimation1.toValue = 16


                    // position.x
                    //
                    let positionXAnimation1 = CABasicAnimation()
                    positionXAnimation1.beginTime = 0.304374
                    positionXAnimation1.duration = animationTime
                    positionXAnimation1.fillMode = kCAFillModeForwards
                    positionXAnimation1.isRemovedOnCompletion = false
                    positionXAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    positionXAnimation1.keyPath = "position.x"
                    positionXAnimation1.toValue = 1


                    // fillColor
                    //
                    let fillcolorAnimation1 = CABasicAnimation()
                    fillcolorAnimation1.beginTime = 0.304374
                    fillcolorAnimation1.duration = animationTime
                    fillcolorAnimation1.fillMode = kCAFillModeForwards
                    fillcolorAnimation1.isRemovedOnCompletion = false
                    fillcolorAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    fillcolorAnimation1.keyPath = "fillColor"
                    fillcolorAnimation1.toValue = lightBlueColor.cgColor


                    // Reverse-transform.rotation.z
                    //
                    let reverseTransformRotationZAnimation1 = CAKeyframeAnimation()
                    reverseTransformRotationZAnimation1.beginTime = 0.791001
                    reverseTransformRotationZAnimation1.duration = animationTime
                    reverseTransformRotationZAnimation1.fillMode = kCAFillModeForwards
                    reverseTransformRotationZAnimation1.isRemovedOnCompletion = false
                    reverseTransformRotationZAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    reverseTransformRotationZAnimation1.keyPath = "transform.rotation.z"
                    reverseTransformRotationZAnimation1.values = [ -0.75, 0 ]
                    reverseTransformRotationZAnimation1.calculationMode = kCAAnimationLinear


                    // Reverse-position.y
                    //
                    let reversePositionYAnimation1 = CABasicAnimation()
                    reversePositionYAnimation1.beginTime = 0.791001
                    reversePositionYAnimation1.duration = animationTime
                    reversePositionYAnimation1.fillMode = kCAFillModeForwards
                    reversePositionYAnimation1.isRemovedOnCompletion = false
                    reversePositionYAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    reversePositionYAnimation1.keyPath = "position.y"
                    reversePositionYAnimation1.fromValue = 16


                    // Reverse-position.x
                    //
                    let reversePositionXAnimation1 = CABasicAnimation()
                    reversePositionXAnimation1.beginTime = 0.791001
                    reversePositionXAnimation1.duration = animationTime
                    reversePositionXAnimation1.fillMode = kCAFillModeForwards
                    reversePositionXAnimation1.isRemovedOnCompletion = false
                    reversePositionXAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    reversePositionXAnimation1.keyPath = "position.x"
                    reversePositionXAnimation1.fromValue = 1


                    // Reverse-fillColor
                    //
                    let reverseFillcolorAnimation1 = CABasicAnimation()
                    reverseFillcolorAnimation1.beginTime = 0.791001
                    reverseFillcolorAnimation1.duration = animationTime
                    reverseFillcolorAnimation1.fillMode = kCAFillModeForwards
                    reverseFillcolorAnimation1.isRemovedOnCompletion = false
                    reverseFillcolorAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    reverseFillcolorAnimation1.keyPath = "fillColor"
                    reverseFillcolorAnimation1.toValue = whiteColor.cgColor
                    reverseFillcolorAnimation1.fromValue = lightBlueColor.cgColor

                shapeLayer2.path = shapePath2
                shapeLayer2.fillColor = whiteColor.cgColor
                shapeLayer2.strokeColor = clearColor.cgColor
                shapeLayer2.fillRule = kCAFillRuleEvenOdd
                shapeLayer2.lineWidth = 0

                crossLayer.addSublayer(shapeLayer2)

            hamburgerLayer.addSublayer(crossLayer)

            // theeLineLayer
            //
            let theeLineLayer = CALayer()
            theeLineLayer.name = "theeLineLayer"
            theeLineLayer.bounds = CGRect(x: 0, y: 0, width: 18, height: 18)
            theeLineLayer.position = CGPoint(x: 16, y: 16)
            theeLineLayer.anchorPoint = CGPoint(x: 0, y: 0)
            theeLineLayer.contentsGravity = kCAGravityCenter
            theeLineLayer.isHidden = true
            hamburgerLayer.addSublayer(theeLineLayer)

        self.layer.addSublayer(hamburgerLayer)

        // Layer Instance Assignments
        //
        self.ovalLayer = ovalLayer
        self.shapeLayer2 = shapeLayer2
        self.shapeLayer1 = shapeLayer1
        self.shapeLayer = shapeLayer

        // Animation Instance Assignments
        //
        self.strokecolorAnimation = strokecolorAnimation
        self.reverseStrokecolorAnimation = reverseStrokecolorAnimation
        self.transformRotationZAnimation = transformRotationZAnimation
        self.positionYAnimation = positionYAnimation
        self.positionXAnimation = positionXAnimation
        self.fillcolorAnimation = fillcolorAnimation
        self.reverseTransformRotationZAnimation = reverseTransformRotationZAnimation
        self.reversePositionYAnimation = reversePositionYAnimation
        self.reversePositionXAnimation = reversePositionXAnimation
        self.reverseFillcolorAnimation = reverseFillcolorAnimation
        self.opacityAnimation = opacityAnimation
        self.reverseOpacityAnimation = reverseOpacityAnimation
        self.transformRotationZAnimation1 = transformRotationZAnimation1
        self.positionYAnimation1 = positionYAnimation1
        self.positionXAnimation1 = positionXAnimation1
        self.fillcolorAnimation1 = fillcolorAnimation1
        self.reverseTransformRotationZAnimation1 = reverseTransformRotationZAnimation1
        self.reversePositionYAnimation1 = reversePositionYAnimation1
        self.reversePositionXAnimation1 = reversePositionXAnimation1
        self.reverseFillcolorAnimation1 = reverseFillcolorAnimation1
    }

    // MARK: - Actions
    func openBottomMenu()
    {
        self.reverseTransformRotationZAnimation1!.beginTime = self.shapeLayer2!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer2?.add(self.reverseTransformRotationZAnimation1!, forKey: "reverseTransformRotationZAnimation1")

        self.reversePositionYAnimation1!.beginTime = self.shapeLayer2!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer2?.add(self.reversePositionYAnimation1!, forKey: "reversePositionYAnimation1")

        self.reversePositionXAnimation1!.beginTime = self.shapeLayer2!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer2?.add(self.reversePositionXAnimation1!, forKey: "reversePositionXAnimation1")

        self.reverseFillcolorAnimation1!.beginTime = self.shapeLayer2!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer2?.add(self.reverseFillcolorAnimation1!, forKey: "reverseFillcolorAnimation1")

        self.reverseTransformRotationZAnimation!.beginTime = self.shapeLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer?.add(self.reverseTransformRotationZAnimation!, forKey: "reverseTransformRotationZAnimation")

        self.reversePositionYAnimation!.beginTime = self.shapeLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer?.add(self.reversePositionYAnimation!, forKey: "reversePositionYAnimation")

        self.reversePositionXAnimation!.beginTime = self.shapeLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer?.add(self.reversePositionXAnimation!, forKey: "reversePositionXAnimation")

        self.reverseFillcolorAnimation!.beginTime = self.shapeLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer?.add(self.reverseFillcolorAnimation!, forKey: "reverseFillcolorAnimation")

        self.reverseOpacityAnimation!.beginTime = self.shapeLayer1!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer1?.add(self.reverseOpacityAnimation!, forKey: "reverseOpacityAnimation")

        self.reverseStrokecolorAnimation!.beginTime = self.ovalLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.ovalLayer?.add(self.reverseStrokecolorAnimation!, forKey: "reverseStrokecolorAnimation")
    }
    
    func closeBottomMenu()
    {
        self.strokecolorAnimation!.beginTime = self.ovalLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.ovalLayer?.add(self.strokecolorAnimation!, forKey: "strokecolorAnimation")
        
        self.transformRotationZAnimation1!.beginTime = self.shapeLayer2!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer2?.add(self.transformRotationZAnimation1!, forKey: "transformRotationZAnimation1")
        
        self.positionYAnimation1!.beginTime = self.shapeLayer2!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer2?.add(self.positionYAnimation1!, forKey: "positionYAnimation1")
        
        self.positionXAnimation1!.beginTime = self.shapeLayer2!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer2?.add(self.positionXAnimation1!, forKey: "positionXAnimation1")
        
        self.fillcolorAnimation1!.beginTime = self.shapeLayer2!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer2?.add(self.fillcolorAnimation1!, forKey: "fillcolorAnimation1")
        
        self.opacityAnimation!.beginTime = self.shapeLayer1!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer1?.add(self.opacityAnimation!, forKey: "opacityAnimation")
        
        self.transformRotationZAnimation!.beginTime = self.shapeLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer?.add(self.transformRotationZAnimation!, forKey: "transformRotationZAnimation")
        
        self.fillcolorAnimation!.beginTime = self.shapeLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer?.add(self.fillcolorAnimation!, forKey: "fillcolorAnimation")
        
        self.positionXAnimation!.beginTime = self.shapeLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer?.add(self.positionXAnimation!, forKey: "positionXAnimation")
        
        self.positionYAnimation!.beginTime = self.shapeLayer!.convertTime(CACurrentMediaTime(), from: nil)
        self.shapeLayer?.add(self.positionYAnimation!, forKey: "positionYAnimation")
    }
    
}
