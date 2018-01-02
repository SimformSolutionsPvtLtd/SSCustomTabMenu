//
//  MenuItemCollectionFlowLayout.swift
//  CutomTapWithBottomMenu
//
//  Created by Satish Rajpurohit on 11/11/17.
//  Copyright © 2017 Satish Rajpurohit. All rights reserved.
//

import UIKit

class MenuItemCollectionFlowLayout: UICollectionViewFlowLayout {
    
    @IBInspectable var numberOfColumns:CGFloat = 3 {
        didSet{
           
        }
    }
    
    override init() {
        super.init()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override var itemSize: CGSize {
        set {
        }
        get {
          //  let numberOfColumns: CGFloat = 3
            
            let itemWidth = (self.collectionView!.frame.width - numberOfColumns*10) / numberOfColumns
            return CGSize(width: itemWidth, height: 123)
        }
    }
}

