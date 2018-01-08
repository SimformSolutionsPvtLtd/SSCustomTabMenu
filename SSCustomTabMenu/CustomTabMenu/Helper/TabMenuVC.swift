//
//  TabMenuVC.swift
//  SSCustomTabMenu
//
//  Created by Satish Rajpurohit on 11/08/17.
//  Copyright © 2017 Satish Rajpurohit. All rights reserved.
//

import UIKit

let animationTime = 0.3
let tabBarHeight:CGFloat = 58.0
let menuIndex = 0
enum TypeofSelection {
    case menu
    case tab
}

enum OnOpenCloseAnimType {
    case openMenu
    case normalClose
    case yPositionClose
    case none
}

public class TabMenuVC: UIViewController,BasicAnimation{
    
    // MARK: -
    // MARK: - Variable Declaration
    
    public var centerTab:UIViewController!
    public var RightTab:UIViewController!
    public var tabControllers: [UIViewController]!
    
    public var totalTabMenuHeight:CGFloat = 296
    fileprivate var backImageView: UIImageView?
    public var arrMenuItems = [Int: MenuItem]()
    let tapRec = UITapGestureRecognizer()
    
    // MARK: -
    // MARK: - Outlets
    
    @IBOutlet var gridMenu: UICollectionView!
    @IBOutlet var viewMenu: UIView!
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var CMenuTabHeight: NSLayoutConstraint!
    @IBOutlet var CContainerBottom: NSLayoutConstraint!
    
    
    // MARK: -
    // MARK: - Outlets Collections
    @IBOutlet var tabButton: [UIButton]!
    @IBOutlet var tabMenu: HamburgerView!
    
    // MARK: -
    // MARK: - ViewController Methods
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        tabControllers = [centerTab,RightTab]
        self.Setup()
        // Do any additional setup after loading the view.
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override public func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.containerView.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
        self.containerView.layer.position = CGPoint(x: self.view.frame.width/2, y:0)
    }
    
    // MARK: -
    // MARK: - Button Action Methods
    
    @IBAction func didPressTab(_ sender: UIButton){
        self.tabAndMenuSelected(index: sender.tag,previousType: selectedType,currentType: TypeofSelection.tab)
    }
    
    @IBAction func didPressMenuItem(_ sender: UIButton) {
        self.tabAndMenuSelected(index: sender.tag,previousType: selectedType,currentType: TypeofSelection.menu)
    }
    
    
}

extension TabMenuVC : UICollectionViewDelegate,UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return menuController.count
        return arrMenuItems.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellMenu = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuItemsCell", for: indexPath) as! MenuItemsCell
        cellMenu.imgMenuIcon.image = UIImage(named: (arrMenuItems[indexPath.row+1]?.imageName)!)
        cellMenu.lblMenuTitle.text = arrMenuItems[indexPath.row+1]?.menuItemTitle
        return cellMenu
        
    }
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.tabAndMenuSelected(index: indexPath.row,previousType: selectedType,currentType: TypeofSelection.menu)
    }
}

extension TabMenuVC{
    
    func Setup(){
        
        self.viewMenu.backgroundColor = UIColor.clear
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        //always fill the view
        blurEffectView.frame = self.viewMenu.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.viewMenu.insertSubview(blurEffectView, at: 0) //if you have more UIViews, use an insertSubview API to place it where needed
        
        CMenuTabHeight.constant = tabBarHeight
        self.view.layoutIfNeeded()
        tabButton[selectedIndex].isSelected = false
        tabAndMenuSelected(index: 0,previousType: selectedType,currentType: TypeofSelection.tab)
        
        if(arrMenuItems.count <= 3){
            totalTabMenuHeight = totalTabMenuHeight - 133
        }else{
            totalTabMenuHeight = totalTabMenuHeight - 0
        }
        
        
        tapRec.addTarget(self, action:#selector(TabMenuVC.tappedView))
        tapRec.numberOfTouchesRequired = 1
        tapRec.numberOfTapsRequired = 1
        self.containerView!.addGestureRecognizer(tapRec)
        
    }
    
    func tappedView(){
        if(CMenuTabHeight.constant != tabBarHeight){
            self.OpenMenuClose(status: .normalClose)
        }
    }
    
    func OpenMenuClose(status:OnOpenCloseAnimType){
        
        if(CMenuTabHeight.constant == tabBarHeight){
            tabButton[menuIndex].isSelected = true
            tabButton[menuIndex].borderColor = UIColor.clear
            
            ScaleAnimation(self.containerView, duration: animationTime)
            ScaleAnimation(self.containerView, duration: animationTime)
            OpacityAnimation(self.containerView, duration: animationTime)
            
            CMenuTabHeight.constant = totalTabMenuHeight + tabBarHeight
            CContainerBottom.constant = -totalTabMenuHeight + tabBarHeight
            
            self.tabMenu.clickoneAction()
        }
        else{
            tabButton[menuIndex].borderColor = UIColor.white
            tabButton[menuIndex].isSelected = false
            if(status != OnOpenCloseAnimType.openMenu){
                self.positionYAnimation(self.backImageView!, duration: 1,fromValue: self.totalTabMenuHeight+64)
            }
            
            ReverseScaleAnimation(self.containerView, duration: animationTime)
            ReverseOpacityAnimation(self.containerView, duration: animationTime)
            
            CMenuTabHeight.constant = tabBarHeight
            CContainerBottom.constant = 0
            self.tabMenu.clicktwoAction()
        }
        
        
        UIView.animate(withDuration: animationTime, animations: {
            self.view.layoutIfNeeded()
        }) { (finished: Bool) in
            
        }
    }
    
    func tabAndMenuSelected(index:Int,previousType:TypeofSelection,currentType:TypeofSelection){
        if(index == 999){
            tabButton[menuIndex].borderColor = UIColor.clear
            tabButton[menuIndex].isSelected = false
            self.OpenMenuClose(status: .openMenu)
        }
        else{
            let previousIndex = selectedIndex
            // tabButton[previousIndex].isSelected = false
            selectedIndex = index
            
            var previousVC:UIViewController
            var vc:UIViewController
            if(previousType == TypeofSelection.tab){
                previousVC = tabControllers[previousIndex]
                
            }
            else{
                previousVC = arrMenuItems[previousIndex+1]!.viewControllerforMenu
                //previousVC = menuController[previousIndex]
            }
            
            
            let ScreenShot:UIImage =  previousVC.view.takeSnapshot(CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))!//SS
            self.backImageView = self.addImageToView(self.containerView, image: ScreenShot)//SS
            
            previousVC.willMove(toParentViewController: nil)
            previousVC.view.removeFromSuperview()
            previousVC.removeFromParentViewController()
            
            //sender.isSelected = true
            if(currentType == TypeofSelection.tab){
                vc = tabControllers[selectedIndex]
                
            }
            else{
                //vc = menuController[selectedIndex]
                vc = arrMenuItems[selectedIndex+1]!.viewControllerforMenu
            }
            
            addChildViewController(vc)
            vc.view.frame = containerView.bounds
            containerView.addSubview(vc.view)
            vc.didMove(toParentViewController: self)
            
            if(currentType == TypeofSelection.menu){
                if(previousType == TypeofSelection.menu){
                    vc.view.addSubview(self.backImageView!)
                    self.OpenMenuClose(status: .yPositionClose)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.backImageView!.removeFromSuperview()
                    }
                    // self.OpenMenuClose(status: .openMenu)
                }
                else{
                    
                    vc.view.addSubview(self.backImageView!)
                    self.OpenMenuClose(status: .yPositionClose)
                    
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.backImageView!.removeFromSuperview()
                    }
                }
            }
            else{
                // self.OpenMenuClose(status: .normalClose)
            }
            
            
            selectedType = currentType
            
        }
        
    }
    
    fileprivate func addImageToView(_ view: UIView, image: UIImage?) -> UIImageView? {
        guard let image = image else { return nil }
        
        let imageView = Init(UIImageView(image: image)) {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.alpha = 1
        }
        return imageView
    }
    
    
}

//Global Variables For Tab
//var menuController: [UIViewController]!

public var selectedIndex: Int = 0
var selectedType = TypeofSelection.tab

public struct MenuItem {
    var viewControllerforMenu: UIViewController
    var imageName: String
    var menuItemTitle: String
}

