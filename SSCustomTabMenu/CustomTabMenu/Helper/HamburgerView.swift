//
//  HamburgerView.swift
//  Exported from Kite Compositor for Mac 1.7.6
//
//  Created on 27/12/17, 3:06 PM.
//


import UIKit

public class HamburgerView: UIButton
{
    // MARK: - Properties

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
        // Images
        //
        guard let combinedShapePngImage = UIImage(named: "Combined-Shape.png") else {
            fatalError("Warning: Unable to locate image named 'Combined-Shape.png'")
        }

        guard let combinedShapePngImage1 = UIImage(named: "Combined-Shape-1.png") else {
            fatalError("Warning: Unable to locate image named 'Combined-Shape-1.png'")
        }

        guard let combinedShapePngImage2 = UIImage(named: "Combined-Shape-2.png") else {
            fatalError("Warning: Unable to locate image named 'Combined-Shape-2.png'")
        }

        // Colors
        //
        let shadowcolor = UIColor(red: 0.047059, green: 0.105882, blue: 0.137255, alpha: 1)
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        let color1 = UIColor.white
        let fillcolor = UIColor(red: 0.178306, green: 0.178306, blue: 0.178306, alpha: 1)
        let strokecolor = UIColor(red: 0.806946, green: 0.806946, blue: 0.806946, alpha: 1)
        let strokecolor1 = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        let color2 = UIColor(red: 0.009054, green: 0.830696, blue: 0.972815, alpha: 1)
        let color3 = UIColor(red: 0.007843, green: 0.831373, blue: 0.972549, alpha: 1)
        let color4 = UIColor.white
        let color5 = UIColor(red: 0.0096, green: 0.855215, blue: 0.999935, alpha: 1)

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
                strokecolorAnimation.duration = 0.25
                strokecolorAnimation.fillMode = kCAFillModeForwards
                strokecolorAnimation.isRemovedOnCompletion = false
                strokecolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                strokecolorAnimation.keyPath = "strokeColor"
                strokecolorAnimation.toValue = color.cgColor


                // Reverse-strokeColor
                //
                let reverseStrokecolorAnimation = CABasicAnimation()
                reverseStrokecolorAnimation.beginTime = 0.791001
                reverseStrokecolorAnimation.duration = 0.25
                reverseStrokecolorAnimation.fillMode = kCAFillModeForwards
                reverseStrokecolorAnimation.isRemovedOnCompletion = false
                reverseStrokecolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                reverseStrokecolorAnimation.keyPath = "strokeColor"
                reverseStrokecolorAnimation.toValue = color1.cgColor
                reverseStrokecolorAnimation.fromValue = color.cgColor

            ovalLayer.path = ovalPath
            ovalLayer.fillColor = fillcolor.cgColor
            ovalLayer.strokeColor = strokecolor.cgColor
            ovalLayer.fillRule = kCAFillRuleEvenOdd
            ovalLayer.lineWidth = 2

            hamburgerLayer.addSublayer(ovalLayer)

            // Combined Shape
            //
            let combinedShapeLayer = CAShapeLayer()
            combinedShapeLayer.name = "Combined Shape"
            combinedShapeLayer.bounds = CGRect(x: 0, y: 0, width: 22, height: 17)
            combinedShapeLayer.position = CGPoint(x: 14, y: 17)
            combinedShapeLayer.anchorPoint = CGPoint(x: 0, y: 0)
            combinedShapeLayer.contents = combinedShapePngImage.cgImage
            combinedShapeLayer.contentsGravity = kCAGravityCenter
            combinedShapeLayer.isHidden = true
            combinedShapeLayer.fillColor = color1.cgColor
            combinedShapeLayer.strokeColor = strokecolor1.cgColor
            combinedShapeLayer.lineWidth = 0

            hamburgerLayer.addSublayer(combinedShapeLayer)

            // noun_345386_cc
            //
            let nounCcLayer = CALayer()
            nounCcLayer.name = "noun_345386_cc"
            nounCcLayer.bounds = CGRect(x: 0, y: 0, width: 21, height: 18)
            nounCcLayer.position = CGPoint(x: 15, y: 16)
            nounCcLayer.anchorPoint = CGPoint(x: 0, y: 0)
            nounCcLayer.contentsGravity = kCAGravityCenter

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
                    transformRotationZAnimation.duration = 0.25
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
                    positionYAnimation.duration = 0.25
                    positionYAnimation.fillMode = kCAFillModeForwards
                    positionYAnimation.isRemovedOnCompletion = false
                    positionYAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    positionYAnimation.keyPath = "position.y"
                    positionYAnimation.toValue = 2


                    // position.x
                    //
                    let positionXAnimation = CABasicAnimation()
                    positionXAnimation.beginTime = 0.304374
                    positionXAnimation.duration = 0.25
                    positionXAnimation.fillMode = kCAFillModeForwards
                    positionXAnimation.isRemovedOnCompletion = false
                    positionXAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    positionXAnimation.keyPath = "position.x"
                    positionXAnimation.toValue = 4


                    // fillColor
                    //
                    let fillcolorAnimation = CABasicAnimation()
                    fillcolorAnimation.beginTime = 0.304374
                    fillcolorAnimation.duration = 0.25
                    fillcolorAnimation.fillMode = kCAFillModeForwards
                    fillcolorAnimation.isRemovedOnCompletion = false
                    fillcolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    fillcolorAnimation.keyPath = "fillColor"
                    fillcolorAnimation.toValue = color2.cgColor


                    // Reverse-transform.rotation.z
                    //
                    let reverseTransformRotationZAnimation = CAKeyframeAnimation()
                    reverseTransformRotationZAnimation.beginTime = 0.793627
                    reverseTransformRotationZAnimation.duration = 0.25
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
                    reversePositionYAnimation.duration = 0.25
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
                    reversePositionXAnimation.duration = 0.25
                    reversePositionXAnimation.fillMode = kCAFillModeForwards
                    reversePositionXAnimation.isRemovedOnCompletion = false
                    reversePositionXAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    reversePositionXAnimation.keyPath = "position.x"
                    reversePositionXAnimation.toValue = 0


                    // Reverse-fillColor
                    //
                    let reverseFillcolorAnimation = CABasicAnimation()
                    reverseFillcolorAnimation.beginTime = 0.791001
                    reverseFillcolorAnimation.duration = 0.25
                    reverseFillcolorAnimation.fillMode = kCAFillModeForwards
                    reverseFillcolorAnimation.isRemovedOnCompletion = false
                    reverseFillcolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                    reverseFillcolorAnimation.keyPath = "fillColor"
                    reverseFillcolorAnimation.toValue = color1.cgColor
                    reverseFillcolorAnimation.fromValue = color3.cgColor

                shapeLayer.path = shapePath
                shapeLayer.fillColor = color1.cgColor
                shapeLayer.strokeColor = strokecolor1.cgColor
                shapeLayer.fillRule = kCAFillRuleEvenOdd
                shapeLayer.lineWidth = 0

                nounCcLayer.addSublayer(shapeLayer)

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
                    opacityAnimation.duration = 0.25
                    opacityAnimation.fillMode = kCAFillModeForwards
                    opacityAnimation.isRemovedOnCompletion = false
                    opacityAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    opacityAnimation.keyPath = "opacity"
                    opacityAnimation.toValue = 0


                    // Reverse-opacity
                    //
                    let reverseOpacityAnimation = CABasicAnimation()
                    reverseOpacityAnimation.beginTime = 0.791001
                    reverseOpacityAnimation.duration = 0.25
                    reverseOpacityAnimation.fillMode = kCAFillModeForwards
                    reverseOpacityAnimation.isRemovedOnCompletion = false
                    reverseOpacityAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
                    reverseOpacityAnimation.keyPath = "opacity"
                    reverseOpacityAnimation.toValue = 1
                    reverseOpacityAnimation.fromValue = 0

                shapeLayer1.path = shapePath1
                shapeLayer1.fillColor = color1.cgColor
                shapeLayer1.strokeColor = strokecolor1.cgColor
                shapeLayer1.fillRule = kCAFillRuleEvenOdd
                shapeLayer1.lineWidth = 0

                nounCcLayer.addSublayer(shapeLayer1)

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
                    fillcolorAnimation1.toValue = color2.cgColor


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
                    reverseFillcolorAnimation1.toValue = color4.cgColor
                    reverseFillcolorAnimation1.fromValue = color5.cgColor

                shapeLayer2.path = shapePath2
                shapeLayer2.fillColor = color1.cgColor
                shapeLayer2.strokeColor = strokecolor1.cgColor
                shapeLayer2.fillRule = kCAFillRuleEvenOdd
                shapeLayer2.lineWidth = 0

                nounCcLayer.addSublayer(shapeLayer2)

            hamburgerLayer.addSublayer(nounCcLayer)

            // Combined Shape
            //
            let combinedShapeLayer1 = CAShapeLayer()
            combinedShapeLayer1.name = "Combined Shape"
            combinedShapeLayer1.bounds = CGRect(x: 0, y: 0, width: 22, height: 16)
            combinedShapeLayer1.position = CGPoint(x: 14, y: 17)
            combinedShapeLayer1.anchorPoint = CGPoint(x: 0, y: 0)
            combinedShapeLayer1.contents = combinedShapePngImage1.cgImage
            combinedShapeLayer1.contentsGravity = kCAGravityCenter
            combinedShapeLayer1.isHidden = true
            combinedShapeLayer1.fillColor = color1.cgColor
            combinedShapeLayer1.strokeColor = strokecolor1.cgColor
            combinedShapeLayer1.fillRule = kCAFillRuleEvenOdd
            combinedShapeLayer1.lineWidth = 0

            hamburgerLayer.addSublayer(combinedShapeLayer1)

            // 1481058617_th-menu
            //
            let thMenuLayer = CALayer()
            thMenuLayer.name = "1481058617_th-menu"
            thMenuLayer.bounds = CGRect(x: 0, y: 0, width: 18, height: 18)
            thMenuLayer.position = CGPoint(x: 16, y: 16)
            thMenuLayer.anchorPoint = CGPoint(x: 0, y: 0)
            thMenuLayer.contentsGravity = kCAGravityCenter
            thMenuLayer.isHidden = true

                // 1481058617_th-menu Sublayers
                //

                // Combined Shape
                //
                let combinedShapeLayer2 = CAShapeLayer()
                combinedShapeLayer2.name = "Combined Shape"
                combinedShapeLayer2.bounds = CGRect(x: 0, y: 0, width: 18, height: 18)
                combinedShapeLayer2.position = CGPoint(x: 0, y: 0)
                combinedShapeLayer2.anchorPoint = CGPoint(x: 0, y: 0)
                combinedShapeLayer2.contents = combinedShapePngImage2.cgImage
                combinedShapeLayer2.contentsGravity = kCAGravityCenter
                combinedShapeLayer2.fillColor = color1.cgColor
                combinedShapeLayer2.strokeColor = strokecolor1.cgColor
                combinedShapeLayer2.fillRule = kCAFillRuleEvenOdd
                combinedShapeLayer2.lineWidth = 0

                thMenuLayer.addSublayer(combinedShapeLayer2)

            hamburgerLayer.addSublayer(thMenuLayer)

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

    // MARK: - Responder

//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
//    {
//        guard let location = touches.first?.location(in: self.superview),
//              let hitLayer = self.layer.presentation()?.hitTest(location) else { return }
//
//        print("Layer \(hitLayer.name ?? String(describing: hitLayer)) was tapped.")
//
//        // Call action methods
//        //
//        //self.clickoneAction(self)
//       // self.clicktwoAction(self)
//    }

    // MARK: - Actions

   

    func clicktwoAction()
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
    
    func clickoneAction()
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
