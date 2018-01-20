//
//  UIStoryBoardHelper.swift
//  SSCustomTabMenu
//
//  Created by Tejas Ardeshna on 20/01/18.
//  Copyright © 2018 Satish Rajpurohit. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {

    //MARK : - storyboard declaration -
    static var MainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    static var TabMenuStoryboard: UIStoryboard {
        return UIStoryboard(name: "TabMenu", bundle: Bundle.main)
    }
}
