//
//  MenuPopupView.swift
//  Exported from Kite Compositor for Mac 1.5
//
//  Created on 24/08/17, 4:56 PM.
//


import UIKit

class MenuPopupView: UIButton
{

    // MARK: - Initialization

    init()
    {
        super.init(frame: CGRect(x: 0, y: 0, width: 90, height: 90))//SS.. 375, height: 667
        self.setupLayers()
    }

    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        self.setupLayers()
    }

    // MARK: - Setup Layers

    private func setupLayers()
    {
        // Images
        //
       

        guard let pngImage = UIImage(named: "3.png") else {
            fatalError("Warning: Unable to locate image named '3.png'")
        }

        // Colors
        //
        let backgroundcolor = UIColor(red: 0.314844, green: 0.062, blue: 0.62, alpha: 0)
        let bordercolor = UIColor(red: 0.416406, green: 0.082, blue: 0.82, alpha: 0)
        let fillcolor = UIColor(red: 0.995509, green: 0.99563, blue: 0.995442, alpha: 1)
        let strokecolor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        let color = UIColor(red: 1, green: 0.384314, blue: 0.152941, alpha: 0.361514)
        let color1 = UIColor(red: 0.086275, green: 0.94902, blue: 0.062745, alpha: 0.36)
        let fillcolor1 = UIColor(red: 1, green: 1, blue: 1, alpha: 0.15)
        let color2 = UIColor(red: 1, green: 0.384314, blue: 0.152941, alpha: 1)
        let color3 = UIColor(red: 0.086275, green: 0.94902, blue: 0.062745, alpha: 1)
        let fillcolor2 = UIColor.white
        let color4 = UIColor(red: 0.223529, green: 0.913725, blue: 0.913725, alpha: 0.361514)
        let color5 = UIColor(red: 0.223529, green: 0.913725, blue: 0.913725, alpha: 1)
        let color6 = UIColor(red: 0.988235, green: 0.864045, blue: 0.004564, alpha: 0.36)
        let color7 = UIColor(red: 1, green: 0.870588, blue: 0, alpha: 1)
        let fillcolor3 = UIColor(red: 0, green: 0.854902, blue: 1, alpha: 1)

        // Paths
        //
        let fillPath = CGMutablePath()
        fillPath.move(to: CGPoint(x: 9.14, y: 1.592))
        fillPath.addCurve(to: CGPoint(x: 1.568, y: 1.592), control1: CGPoint(x: 7.051, y: -0.53), control2: CGPoint(x: 3.659, y: -0.53))
        fillPath.addCurve(to: CGPoint(x: 1.568, y: 9.273), control1: CGPoint(x: -0.523, y: 3.713), control2: CGPoint(x: -0.523, y: 7.152))
        fillPath.addCurve(to: CGPoint(x: 3.495, y: 10.497), control1: CGPoint(x: 2.129, y: 9.844), control2: CGPoint(x: 2.796, y: 10.234))
        fillPath.addLine(to: CGPoint(x: 10.342, y: 3.549))
        fillPath.addCurve(to: CGPoint(x: 9.14, y: 1.592), control1: CGPoint(x: 10.086, y: 2.836), control2: CGPoint(x: 9.697, y: 2.162))

        let fillPath1 = CGMutablePath()
        fillPath1.move(to: CGPoint(x: 9.398, y: 4.509))
        fillPath1.addLine(to: CGPoint(x: 6.122, y: 0))
        fillPath1.addLine(to: CGPoint(x: 3.798, y: 2.361))
        fillPath1.addLine(to: CGPoint(x: 0, y: 6.219))
        fillPath1.addLine(to: CGPoint(x: 5.561, y: 10.38))
        fillPath1.addLine(to: CGPoint(x: 5.788, y: 10.55))
        fillPath1.addLine(to: CGPoint(x: 5.788, y: 27.978001))
        fillPath1.addLine(to: CGPoint(x: 8.565, y: 27.978001))
        fillPath1.addLine(to: CGPoint(x: 8.565, y: 12.63))
        fillPath1.addLine(to: CGPoint(x: 14.764, y: 17.268))
        fillPath1.addLine(to: CGPoint(x: 15.294, y: 16.73))
        fillPath1.addLine(to: CGPoint(x: 17.011, y: 14.987))
        fillPath1.addLine(to: CGPoint(x: 9.398, y: 4.509))
        fillPath1.closeSubpath()
        fillPath1.move(to: CGPoint(x: 9.398, y: 4.509))

        let leftLightShadowPath = CGMutablePath()
        leftLightShadowPath.move(to: CGPoint(x: 27.507999, y: 17.559999))
        leftLightShadowPath.addLine(to: CGPoint(x: 27.179001, y: 17.319))
        leftLightShadowPath.addLine(to: CGPoint(x: 19.077999, y: 11.386))
        leftLightShadowPath.addLine(to: CGPoint(x: 12.457, y: 6.537))
        leftLightShadowPath.addLine(to: CGPoint(x: 3.535, y: 0))
        leftLightShadowPath.addLine(to: CGPoint(x: 0, y: 3.536))
        leftLightShadowPath.addLine(to: CGPoint(x: 10.117, y: 16.181999))
        leftLightShadowPath.addLine(to: CGPoint(x: 11.419, y: 17.809))
        leftLightShadowPath.addLine(to: CGPoint(x: 35.201, y: 47.534))
        leftLightShadowPath.addCurve(to: CGPoint(x: 36.308998, y: 47.282001), control1: CGPoint(x: 35.573002, y: 47.451), control2: CGPoint(x: 35.945999, y: 47.369999))
        leftLightShadowPath.addCurve(to: CGPoint(x: 38.174999, y: 46.807999), control1: CGPoint(x: 36.941002, y: 47.130001), control2: CGPoint(x: 37.568001, y: 46.974998))
        leftLightShadowPath.addCurve(to: CGPoint(x: 42.466, y: 42.525002), control1: CGPoint(x: 40.261002, y: 46.235001), control2: CGPoint(x: 41.891998, y: 44.606998))
        leftLightShadowPath.addCurve(to: CGPoint(x: 44.624001, y: 30.097), control1: CGPoint(x: 43.493999, y: 38.793999), control2: CGPoint(x: 44.231998, y: 34.592999))
        leftLightShadowPath.addLine(to: CGPoint(x: 27.507999, y: 17.559999))
        leftLightShadowPath.closeSubpath()
        leftLightShadowPath.move(to: CGPoint(x: 27.507999, y: 17.559999))

        let leftLightPath = CGMutablePath()
        leftLightPath.move(to: CGPoint(x: 2.5, y: 4.991))
        leftLightPath.addCurve(to: CGPoint(x: 5, y: 2.496), control1: CGPoint(x: 3.881, y: 4.991), control2: CGPoint(x: 5, y: 3.874))
        leftLightPath.addCurve(to: CGPoint(x: 2.5, y: 0), control1: CGPoint(x: 5, y: 1.117), control2: CGPoint(x: 3.881, y: 0))
        leftLightPath.addCurve(to: CGPoint(x: 0, y: 2.496), control1: CGPoint(x: 1.12, y: 0), control2: CGPoint(x: 0, y: 1.117))
        leftLightPath.addCurve(to: CGPoint(x: 2.5, y: 4.991), control1: CGPoint(x: 0, y: 3.874), control2: CGPoint(x: 1.12, y: 4.991))

        let rightLightShadowPath = CGMutablePath()
        rightLightShadowPath.move(to: CGPoint(x: 40.198002, y: 0))
        rightLightShadowPath.addLine(to: CGPoint(x: 31.750999, y: 7.126))
        rightLightShadowPath.addLine(to: CGPoint(x: 26.475, y: 11.575))
        rightLightShadowPath.addLine(to: CGPoint(x: 18.834999, y: 18.021))
        rightLightShadowPath.addLine(to: CGPoint(x: 16.709999, y: 19.812))
        rightLightShadowPath.addLine(to: CGPoint(x: 0, y: 33.908001))
        rightLightShadowPath.addCurve(to: CGPoint(x: 1.796, y: 42.785999), control1: CGPoint(x: 0.431, y: 37.071999), control2: CGPoint(x: 1.036, y: 40.056999))
        rightLightShadowPath.addCurve(to: CGPoint(x: 6.099, y: 47.056999), control1: CGPoint(x: 2.375, y: 44.866001), control2: CGPoint(x: 4.011, y: 46.488998))
        rightLightShadowPath.addCurve(to: CGPoint(x: 9.968, y: 47.962002), control1: CGPoint(x: 7.337, y: 47.393002), control2: CGPoint(x: 8.634, y: 47.691002))
        rightLightShadowPath.addCurve(to: CGPoint(x: 14.318, y: 48.702), control1: CGPoint(x: 11.37, y: 48.248001), control2: CGPoint(x: 12.823, y: 48.493999))
        rightLightShadowPath.addLine(to: CGPoint(x: 25.280001, y: 31.823999))
        rightLightShadowPath.addLine(to: CGPoint(x: 29.1, y: 25.941999))
        rightLightShadowPath.addLine(to: CGPoint(x: 34.592999, y: 17.485001))
        rightLightShadowPath.addLine(to: CGPoint(x: 34.769001, y: 17.212999))
        rightLightShadowPath.addLine(to: CGPoint(x: 43.853001, y: 3.228))
        rightLightShadowPath.addLine(to: CGPoint(x: 40.198002, y: 0))
        rightLightShadowPath.closeSubpath()
        rightLightShadowPath.move(to: CGPoint(x: 40.198002, y: 0))

        let rightLightPath = CGMutablePath()
        rightLightPath.move(to: CGPoint(x: 2.5, y: 4.991))
        rightLightPath.addCurve(to: CGPoint(x: 5, y: 2.496), control1: CGPoint(x: 3.88, y: 4.991), control2: CGPoint(x: 5, y: 3.874))
        rightLightPath.addCurve(to: CGPoint(x: 2.5, y: 0), control1: CGPoint(x: 5, y: 1.117), control2: CGPoint(x: 3.88, y: 0))
        rightLightPath.addCurve(to: CGPoint(x: 0, y: 2.496), control1: CGPoint(x: 1.12, y: 0), control2: CGPoint(x: 0, y: 1.117))
        rightLightPath.addCurve(to: CGPoint(x: 2.5, y: 4.991), control1: CGPoint(x: 0, y: 3.874), control2: CGPoint(x: 1.12, y: 4.991))

        let centerLightShadowPath = CGMutablePath()
        centerLightShadowPath.move(to: CGPoint(x: 25.042, y: 21.256001))
        centerLightShadowPath.addLine(to: CGPoint(x: 24.712999, y: 21.014999))
        centerLightShadowPath.addLine(to: CGPoint(x: 24.889999, y: 20.743))
        centerLightShadowPath.addLine(to: CGPoint(x: 21.9, y: 10.648))
        centerLightShadowPath.addLine(to: CGPoint(x: 18.747999, y: 0.001))
        centerLightShadowPath.addCurve(to: CGPoint(x: 18.729, y: 0), control1: CGPoint(x: 18.742001, y: 0.001), control2: CGPoint(x: 18.735001, y: 0))
        centerLightShadowPath.addCurve(to: CGPoint(x: 15.609, y: 3.072), control1: CGPoint(x: 18.704, y: 1.701), control2: CGPoint(x: 17.319, y: 3.072))
        centerLightShadowPath.addCurve(to: CGPoint(x: 12.492, y: 0.029), control1: CGPoint(x: 13.91, y: 3.072), control2: CGPoint(x: 12.534, y: 1.716))
        centerLightShadowPath.addCurve(to: CGPoint(x: 12.466, y: 0.03), control1: CGPoint(x: 12.483, y: 0.029), control2: CGPoint(x: 12.475, y: 0.03))
        centerLightShadowPath.addLine(to: CGPoint(x: 9.991, y: 10.233))
        centerLightShadowPath.addLine(to: CGPoint(x: 7.651, y: 19.878))
        centerLightShadowPath.addLine(to: CGPoint(x: 6.824, y: 23.290001))
        centerLightShadowPath.addLine(to: CGPoint(x: 0, y: 51.421001))
        centerLightShadowPath.addCurve(to: CGPoint(x: 4.349, y: 52.173), control1: CGPoint(x: 1.401, y: 51.709999), control2: CGPoint(x: 2.854, y: 51.960999))
        centerLightShadowPath.addCurve(to: CGPoint(x: 12.923, y: 52.924999), control1: CGPoint(x: 7.08, y: 52.562), control2: CGPoint(x: 9.948, y: 52.820999))
        centerLightShadowPath.addLine(to: CGPoint(x: 15.586, y: 52.924999))
        centerLightShadowPath.addLine(to: CGPoint(x: 18.363001, y: 52.924999))
        centerLightShadowPath.addLine(to: CGPoint(x: 18.92, y: 52.924999))
        centerLightShadowPath.addCurve(to: CGPoint(x: 32.735001, y: 51.23), control1: CGPoint(x: 23.872999, y: 52.752998), control2: CGPoint(x: 28.537001, y: 52.157001))
        centerLightShadowPath.addCurve(to: CGPoint(x: 33.842999, y: 50.978001), control1: CGPoint(x: 33.106998, y: 51.146999), control2: CGPoint(x: 33.48, y: 51.066002))
        centerLightShadowPath.addLine(to: CGPoint(x: 25.042, y: 21.256001))
        centerLightShadowPath.closeSubpath()
        centerLightShadowPath.move(to: CGPoint(x: 25.042, y: 21.256001))

        let centerLightPath = CGMutablePath()
        centerLightPath.move(to: CGPoint(x: 0, y: 0.076))
        centerLightPath.addCurve(to: CGPoint(x: 3.117, y: 3.119), control1: CGPoint(x: 0.042, y: 1.763), control2: CGPoint(x: 1.417, y: 3.119))
        centerLightPath.addCurve(to: CGPoint(x: 6.237, y: 0.047), control1: CGPoint(x: 4.827, y: 3.119), control2: CGPoint(x: 6.211, y: 1.748))
        centerLightPath.addCurve(to: CGPoint(x: 3.43, y: 0), control1: CGPoint(x: 5.31, y: 0.016), control2: CGPoint(x: 4.375, y: 0))
        centerLightPath.addCurve(to: CGPoint(x: 0, y: 0.076), control1: CGPoint(x: 2.271, y: 0), control2: CGPoint(x: 1.131, y: 0.031))

        let ovalPath = CGMutablePath()
        ovalPath.move(to: CGPoint(x: 9, y: 18))
        ovalPath.addCurve(to: CGPoint(x: 18, y: 9), control1: CGPoint(x: 13.971, y: 18), control2: CGPoint(x: 18, y: 13.971))
        ovalPath.addCurve(to: CGPoint(x: 9, y: 0), control1: CGPoint(x: 18, y: 4.029), control2: CGPoint(x: 13.971, y: 0))
        ovalPath.addCurve(to: CGPoint(x: 0, y: 9), control1: CGPoint(x: 4.029, y: 0), control2: CGPoint(x: 0, y: 4.029))
        ovalPath.addCurve(to: CGPoint(x: 9, y: 18), control1: CGPoint(x: 0, y: 13.971), control2: CGPoint(x: 4.029, y: 18))
        ovalPath.closeSubpath()
        ovalPath.move(to: CGPoint(x: 9, y: 18))

        // menu popup
        //
        let menuPopupLayer = CALayer()
        menuPopupLayer.name = "menu popup"
        menuPopupLayer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)//SS.. 375, height: 667
        menuPopupLayer.position = CGPoint(x: 0, y: -0)
        menuPopupLayer.anchorPoint = CGPoint(x: 0, y: 0)
        menuPopupLayer.contentsGravity = kCAGravityCenter
        menuPopupLayer.masksToBounds = true

            // menu popup Sublayers
            //

            // Bottom-icons
            //
            let bottomIconsLayer = CALayer()
            bottomIconsLayer.name = "Bottom-icons"
            bottomIconsLayer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)//SS  321, height: 229
            bottomIconsLayer.position = CGPoint(x: 0, y: 0)//SS.. x: 33, y: 334
            bottomIconsLayer.anchorPoint = CGPoint(x: 0, y: 0)
            bottomIconsLayer.contentsGravity = kCAGravityCenter

                // Bottom-icons Sublayers
                //

                // Row-2
                //
                let rowLayer = CALayer()
                rowLayer.name = "Row-2"
                rowLayer.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)//SS..WIDTH 320
                rowLayer.position = CGPoint(x: 1, y: 2)//SS..
                rowLayer.anchorPoint = CGPoint(x: 0, y: 0)
                rowLayer.contentsGravity = kCAGravityCenter
                rowLayer.backgroundColor = backgroundcolor.cgColor
                rowLayer.borderColor = bordercolor.cgColor
                rowLayer.shadowOffset = CGSize(width: 0, height: 1)
                rowLayer.fillMode = kCAFillModeForwards

                    // Row-2 Sublayers
                    //

                    // Events
                    //
                    let eventsLayer = CALayer()
                    eventsLayer.name = "Events"
                    eventsLayer.bounds = CGRect(x: 0, y: 0, width: 64, height: 21)
                    eventsLayer.position = CGPoint(x: 0, y: 79)
                    eventsLayer.anchorPoint = CGPoint(x: 0, y: 0)
                   //SS.. eventsLayer.contents = eventsPngImage.cgImage
                    eventsLayer.contentsGravity = kCAGravityCenter
                    eventsLayer.magnificationFilter = kCAFilterNearest
                    eventsLayer.minificationFilter = kCAFilterNearest

                    //SS.. rowLayer.addSublayer(eventsLayer)

                    // Event-icon
                    //
                    let eventIconLayer = CALayer()
                    eventIconLayer.name = "Event-icon"
                    eventIconLayer.bounds = CGRect(x: 0, y: 0, width: 53, height: 53)
                    eventIconLayer.position = CGPoint(x: 5+10, y: 12+5)
                    eventIconLayer.anchorPoint = CGPoint(x: 0, y: 0)
                    eventIconLayer.contentsGravity = kCAGravityCenter

                        // Event-icon Sublayers
                        //

                        // Fill 12
                        //
                        let fillLayer = CAShapeLayer()
                        fillLayer.name = "Fill 12"
                        fillLayer.bounds = CGRect(x: 0, y: 0, width: 10.34225, height: 10.4965)
                        fillLayer.position = CGPoint(x: 14.88665+10, y: 19.963)
                        fillLayer.anchorPoint = CGPoint(x: 0, y: 0)
                        fillLayer.contentsGravity = kCAGravityCenter
                        fillLayer.path = fillPath
                        fillLayer.fillColor = fillcolor.cgColor
                        fillLayer.strokeColor = strokecolor.cgColor
                        fillLayer.fillRule = kCAFillRuleEvenOdd
                        fillLayer.lineWidth = 0

                        eventIconLayer.addSublayer(fillLayer)

                        // Fill 42
                        //
                        let fillLayer1 = CAShapeLayer()
                        fillLayer1.name = "Fill 42"
                        fillLayer1.bounds = CGRect(x: 0, y: 0, width: 17.011, height: 27.978)
                        fillLayer1.position = CGPoint(x: 19.6977+10, y: 24.9938)
                        fillLayer1.anchorPoint = CGPoint(x: 0, y: 0)
                        fillLayer1.contentsGravity = kCAGravityCenter
                        fillLayer1.path = fillPath1
                        fillLayer1.fillColor = fillcolor.cgColor
                        fillLayer1.strokeColor = strokecolor.cgColor
                        fillLayer1.fillRule = kCAFillRuleEvenOdd
                        fillLayer1.lineWidth = 0

                        eventIconLayer.addSublayer(fillLayer1)

                        // Left-light-shadow
                        //
                        let leftLightShadowLayer = CAShapeLayer()
                        leftLightShadowLayer.name = "Left-light-shadow"
                        leftLightShadowLayer.bounds = CGRect(x: 0, y: 0, width: 44.624, height: 47.534)
                        leftLightShadowLayer.position = CGPoint(x: 7.4339+10, y: 3.7426+5)//SS
                        leftLightShadowLayer.anchorPoint = CGPoint(x: 0, y: 0)
                        leftLightShadowLayer.contentsGravity = kCAGravityCenter
                        leftLightShadowLayer.opacity = 0.44

                            // Left-light-shadow Animations
                            //

                            // fillColor
                            //
                            let fillcolorAnimation = CABasicAnimation()
                            fillcolorAnimation.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.151613
                            fillcolorAnimation.duration = 0.3
                            fillcolorAnimation.autoreverses = true
                            fillcolorAnimation.fillMode = kCAFillModeForwards
                            fillcolorAnimation.isRemovedOnCompletion = false
                            fillcolorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                            fillcolorAnimation.keyPath = "fillColor"
                            fillcolorAnimation.toValue = color.cgColor
                            fillcolorAnimation.repeatCount = .infinity
                            leftLightShadowLayer.add(fillcolorAnimation, forKey: "fillcolorAnimation")

                            // fillColor
                            //
                            let fillcolorAnimation1 = CABasicAnimation()
                            fillcolorAnimation1.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.301613
                            fillcolorAnimation1.duration = 0.3
                            fillcolorAnimation1.autoreverses = true
                            fillcolorAnimation1.fillMode = kCAFillModeForwards
                            fillcolorAnimation1.isRemovedOnCompletion = false
                            fillcolorAnimation1.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                            fillcolorAnimation1.keyPath = "fillColor"
                            fillcolorAnimation1.toValue = color1.cgColor
                            fillcolorAnimation1.repeatCount = .infinity

                            leftLightShadowLayer.add(fillcolorAnimation1, forKey: "fillcolorAnimation1")
                        leftLightShadowLayer.path = leftLightShadowPath
                        leftLightShadowLayer.fillColor = fillcolor1.cgColor
                        leftLightShadowLayer.strokeColor = strokecolor.cgColor
                        leftLightShadowLayer.fillRule = kCAFillRuleEvenOdd
                        leftLightShadowLayer.lineWidth = 0
                        leftLightShadowLayer.repeatCount = .infinity
                        eventIconLayer.addSublayer(leftLightShadowLayer)

                        // Left-light
                        //
                        let leftLightLayer = CAShapeLayer()
                        leftLightLayer.name = "Left-light"
                        leftLightLayer.bounds = CGRect(x: 0, y: 0, width: 5, height: 4.991)
                        leftLightLayer.position = CGPoint(x: 6.7612+10, y: 3.1192+5)
                        leftLightLayer.anchorPoint = CGPoint(x: 0, y: 0)
                        leftLightLayer.contentsGravity = kCAGravityCenter
                        leftLightLayer.repeatCount = .infinity
                            // Left-light Animations
                            //

                            // fillColor
                            //
                            let fillcolorAnimation2 = CABasicAnimation()
                            fillcolorAnimation2.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.001613
                            fillcolorAnimation2.duration = 0.3
                            fillcolorAnimation2.autoreverses = true
                            fillcolorAnimation2.fillMode = kCAFillModeForwards
                            fillcolorAnimation2.isRemovedOnCompletion = false
                            fillcolorAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                            fillcolorAnimation2.keyPath = "fillColor"
                            fillcolorAnimation2.toValue = color2.cgColor
                            fillcolorAnimation2.repeatCount = .infinity
                            leftLightLayer.add(fillcolorAnimation2, forKey: "fillcolorAnimation2")

                            // fillColor
                            //
                            let fillcolorAnimation3 = CABasicAnimation()
                            fillcolorAnimation3.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.151613
                            fillcolorAnimation3.duration = 0.3
                            fillcolorAnimation3.autoreverses = true
                            fillcolorAnimation3.fillMode = kCAFillModeForwards
                            fillcolorAnimation3.isRemovedOnCompletion = false
                            fillcolorAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                            fillcolorAnimation3.keyPath = "fillColor"
                            fillcolorAnimation3.toValue = color3.cgColor
                            fillcolorAnimation3.repeatCount = .infinity
                            leftLightLayer.add(fillcolorAnimation3, forKey: "fillcolorAnimation3")
                        leftLightLayer.path = leftLightPath
                        leftLightLayer.fillColor = fillcolor2.cgColor
                        leftLightLayer.strokeColor = strokecolor.cgColor
                        leftLightLayer.fillRule = kCAFillRuleEvenOdd
                        leftLightLayer.lineWidth = 0
                        leftLightLayer.repeatCount = .infinity
                        eventIconLayer.addSublayer(leftLightLayer)

                        // Right-light-shadow
                        //
                        let rightLightShadowLayer = CAShapeLayer()
                        rightLightShadowLayer.name = "Right-light-shadow"
                        rightLightShadowLayer.bounds = CGRect(x: 0, y: 0, width: 43.853, height: 48.702)
                        rightLightShadowLayer.position = CGPoint(x: 0.0003+10, y: 3.5399+5)
                        rightLightShadowLayer.anchorPoint = CGPoint(x: 0, y: 0)
                        rightLightShadowLayer.contentsGravity = kCAGravityCenter
                        rightLightShadowLayer.opacity = 0.440806
        
                            // Right-light-shadow Animations
                            //

                            // fillColor
                            //
                            let fillcolorAnimation4 = CABasicAnimation()
                            fillcolorAnimation4.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.151613
                            fillcolorAnimation4.duration = 0.3
                            fillcolorAnimation4.autoreverses = true
                            fillcolorAnimation4.fillMode = kCAFillModeForwards
                            fillcolorAnimation4.isRemovedOnCompletion = false
                            fillcolorAnimation4.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                            fillcolorAnimation4.keyPath = "fillColor"
                            fillcolorAnimation4.toValue = color4.cgColor
                             fillcolorAnimation4.repeatCount = .infinity
                            rightLightShadowLayer.add(fillcolorAnimation4, forKey: "fillcolorAnimation4")
                        rightLightShadowLayer.path = rightLightShadowPath
                        rightLightShadowLayer.fillColor = fillcolor1.cgColor
                        rightLightShadowLayer.strokeColor = strokecolor.cgColor
                        rightLightShadowLayer.fillRule = kCAFillRuleEvenOdd
                        rightLightShadowLayer.lineWidth = 0

                        eventIconLayer.addSublayer(rightLightShadowLayer)

                        // Right-light
                        //
                        let rightLightLayer = CAShapeLayer()
                        rightLightLayer.name = "Right-light"
                        rightLightLayer.bounds = CGRect(x: 0, y: 0, width: 5, height: 4.991)
                        rightLightLayer.position = CGPoint(x: 39.2569+10, y: 3.1192+5)
                        rightLightLayer.anchorPoint = CGPoint(x: 0, y: 0)
                        rightLightLayer.contentsGravity = kCAGravityCenter

                            // Right-light Animations
                            //

                            // fillColor
                            //
                            let fillcolorAnimation5 = CABasicAnimation()
                            fillcolorAnimation5.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.151613
                            fillcolorAnimation5.duration = 0.3
                            fillcolorAnimation5.autoreverses = true
                            fillcolorAnimation5.fillMode = kCAFillModeForwards
                            fillcolorAnimation5.isRemovedOnCompletion = false
                            fillcolorAnimation5.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                            fillcolorAnimation5.keyPath = "fillColor"
                            fillcolorAnimation5.toValue = color5.cgColor
                            fillcolorAnimation5.repeatCount = .infinity
                            rightLightLayer.add(fillcolorAnimation5, forKey: "fillcolorAnimation5")
                        rightLightLayer.path = rightLightPath
                        rightLightLayer.fillColor = fillcolor2.cgColor
                        rightLightLayer.strokeColor = strokecolor.cgColor
                        rightLightLayer.fillRule = kCAFillRuleEvenOdd
                        rightLightLayer.lineWidth = 0

                        eventIconLayer.addSublayer(rightLightLayer)

                        // Center-light-shadow
                        //
                        let centerLightShadowLayer = CAShapeLayer()
                        centerLightShadowLayer.name = "Center-light-shadow"
                        centerLightShadowLayer.bounds = CGRect(x: 0, y: 0, width: 33.843, height: 52.925)
                        centerLightShadowLayer.position = CGPoint(x: 9.8999+10, y: 0.0466+5)
                        centerLightShadowLayer.anchorPoint = CGPoint(x: 0, y: 0)
                        centerLightShadowLayer.contentsGravity = kCAGravityCenter
                        centerLightShadowLayer.opacity = 0.44

                            // Center-light-shadow Animations
                            //

                            // fillColor
                            //
                            let fillcolorAnimation6 = CABasicAnimation()
                            fillcolorAnimation6.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.001613
                            fillcolorAnimation6.duration = 0.3
                            fillcolorAnimation6.autoreverses = true
                            fillcolorAnimation6.fillMode = kCAFillModeForwards
                            fillcolorAnimation6.isRemovedOnCompletion = false
                            fillcolorAnimation6.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                            fillcolorAnimation6.keyPath = "fillColor"
                            fillcolorAnimation6.toValue = color6.cgColor
                            fillcolorAnimation6.repeatCount = .infinity
                            centerLightShadowLayer.add(fillcolorAnimation6, forKey: "fillcolorAnimation6")
                        centerLightShadowLayer.path = centerLightShadowPath
                        centerLightShadowLayer.fillColor = fillcolor1.cgColor
                        centerLightShadowLayer.strokeColor = strokecolor.cgColor
                        centerLightShadowLayer.fillRule = kCAFillRuleEvenOdd
                        centerLightShadowLayer.lineWidth = 0

                        eventIconLayer.addSublayer(centerLightShadowLayer)

                        // Center-Light
                        //
                        let centerLightLayer = CAShapeLayer()
                        centerLightLayer.name = "Center-Light"
                        centerLightLayer.bounds = CGRect(x: 0, y: 0, width: 6.237, height: 3.119)
                        centerLightLayer.position = CGPoint(x: 22.3921+10, y: 0+5)
                        centerLightLayer.anchorPoint = CGPoint(x: 0, y: 0)
                        centerLightLayer.contentsGravity = kCAGravityCenter

                            // Center-Light Animations
                            //

                            // fillColor
                            //
                            let fillcolorAnimation7 = CABasicAnimation()
                            fillcolorAnimation7.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.001613
                            fillcolorAnimation7.duration = 0.3
                            fillcolorAnimation7.autoreverses = true
                            fillcolorAnimation7.fillMode = kCAFillModeForwards
                            fillcolorAnimation7.isRemovedOnCompletion = false
                            fillcolorAnimation7.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
                            fillcolorAnimation7.keyPath = "fillColor"
                            fillcolorAnimation7.toValue = color7.cgColor
                            fillcolorAnimation7.repeatCount = .infinity
                            centerLightLayer.add(fillcolorAnimation7, forKey: "fillcolorAnimation7")
                        centerLightLayer.path = centerLightPath
                        centerLightLayer.fillColor = fillcolor2.cgColor
                        centerLightLayer.strokeColor = strokecolor.cgColor
                        centerLightLayer.fillRule = kCAFillRuleEvenOdd
                        centerLightLayer.lineWidth = 0

                        eventIconLayer.addSublayer(centerLightLayer)

                    rowLayer.addSublayer(eventIconLayer)

                    // Notification
                    //
                    let notificationLayer = CALayer()
                    notificationLayer.name = "Notification"
                    notificationLayer.bounds = CGRect(x: 0, y: 0, width: 18, height: 18)
                    notificationLayer.position = CGPoint(x: 59, y: 15)
                    notificationLayer.contentsGravity = kCAGravityCenter

                        // Notification Animations
                        //

                        // transform.scale
                        //
                        let transformScaleAnimation = CASpringAnimation()
                        transformScaleAnimation.beginTime = self.layer.convertTime(CACurrentMediaTime(), from: nil) + 0.158614
                        transformScaleAnimation.duration = 1.175479
                        transformScaleAnimation.fillMode = kCAFillModeBoth
                        transformScaleAnimation.isRemovedOnCompletion = false
                        transformScaleAnimation.keyPath = "transform.scale"
                        transformScaleAnimation.fromValue = 0
                        transformScaleAnimation.stiffness = 100
                        transformScaleAnimation.damping = 6
                        transformScaleAnimation.mass = 0.5
                        transformScaleAnimation.initialVelocity = 8

                        notificationLayer.add(transformScaleAnimation, forKey: "transformScaleAnimation")

                        // Notification Sublayers
                        //

                        // Oval
                        //
                        let ovalLayer = CAShapeLayer()
                        ovalLayer.name = "Oval"
                        ovalLayer.bounds = CGRect(x: 0, y: 0, width: 18, height: 18)
                        ovalLayer.position = CGPoint(x: 0+10, y: 0+5)
                        ovalLayer.anchorPoint = CGPoint(x: 0, y: 0)
                        ovalLayer.contentsGravity = kCAGravityCenter
                        ovalLayer.path = ovalPath
                        ovalLayer.fillColor = fillcolor3.cgColor
                        ovalLayer.strokeColor = strokecolor.cgColor
                        ovalLayer.fillRule = kCAFillRuleEvenOdd
                        ovalLayer.lineWidth = 0

                        notificationLayer.addSublayer(ovalLayer)

                        // 3
                        //
                        let unnamedLayer = CALayer()
                        unnamedLayer.name = "3"
                        unnamedLayer.bounds = CGRect(x: 0, y: 0, width: 8, height: 10)
                        unnamedLayer.position = CGPoint(x: 5+10, y: 4+5)
                        unnamedLayer.anchorPoint = CGPoint(x: 0, y: 0)
                        unnamedLayer.contents = pngImage.cgImage
                        unnamedLayer.contentsGravity = kCAGravityCenter
                        unnamedLayer.opacity = 0.7
                        unnamedLayer.magnificationFilter = kCAFilterNearest
                        unnamedLayer.minificationFilter = kCAFilterNearest

                        notificationLayer.addSublayer(unnamedLayer)

                    rowLayer.addSublayer(notificationLayer)

                bottomIconsLayer.addSublayer(rowLayer)

            menuPopupLayer.addSublayer(bottomIconsLayer)

        self.layer.addSublayer(menuPopupLayer)

    }

    
    // MARK: - Responder

//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
//    {
//        guard let location = touches.first?.location(in: self.superview),
//              let hitLayer = self.layer.presentation()?.hitTest(location) else { return }
//       
//        print("Layer \(hitLayer.name ?? String(describing: hitLayer)) was tapped.")
//    }
}
