//
//  Custombutton.swift
//  SSCustomTabMenu
//
//  Created by Satish Rajpurohit on 25/11/17.
//  Copyright © 2017 Satish Rajpurohit. All rights reserved.
//

import Foundation
import UIKit


public class CenteredButton: UIButton
{
    override public func titleRect(forContentRect contentRect: CGRect) -> CGRect {
        let rect = super.titleRect(forContentRect: contentRect)
        let imageRect = super.imageRect(forContentRect: contentRect)
        
        return CGRect(x: 0, y: imageRect.maxY-5,
                      width: contentRect.width, height: rect.height)//imageRect.maxY + 10
    }
    
    override public func imageRect(forContentRect contentRect: CGRect) -> CGRect {
        let rect = super.imageRect(forContentRect: contentRect)
        let titleRect = self.titleRect(forContentRect: contentRect)
        
        return CGRect(x: contentRect.width/2.0 - rect.width/2.0,
                      y: (contentRect.height - titleRect.height)/2.0 - rect.height/2.0,
                      width: rect.width, height: rect.height)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        centerTitleLabel()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        centerTitleLabel()
    }
    
    private func centerTitleLabel() {
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.adjustsFontSizeToFitWidth = true
    }
}
