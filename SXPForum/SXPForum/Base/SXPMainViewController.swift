//
//  SXPMainViewController.swift
//  SXPForum
//
//  Created by pxl on 2018/1/24.
//  Copyright © 2018年 lin. All rights reserved.
//

import UIKit
import AudioToolbox
import ChameleonFramework

class SXPMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewController(childVC: UIViewController(), title: "首页", image: "tabbar_icon0", selectedImage: "tabbar_icon0_s")
        addChildViewController(childVC: UIViewController(), title: "发现", image: "tabbar_icon1", selectedImage: "tabbar_icon1_s")
        addChildViewController(childVC: UIViewController(), title: "话题", image: "tabbar_icon2", selectedImage: "tabbar_icon2_s")
        addChildViewController(childVC: UIViewController(), title: "消息", image: "tabbar_icon3", selectedImage: "tabbar_icon3_s")
    }
    
    func addChildViewController(childVC: UIViewController, title: String, image: String, selectedImage: String) {
        childVC.title = title
        childVC.tabBarItem.image = UIImage.init(named: image)
        childVC.tabBarItem.selectedImage = UIImage.init(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        //naviViewController
        let nav :UINavigationController = UINavigationController.init(rootViewController: childVC)
        nav.tabBarItem = UITabBarItem.init(title: title, image: UIImage.init(named: image), selectedImage: UIImage.init(named: selectedImage)?.withRenderingMode(.alwaysOriginal))
        //font color
//
        
        //未选中的颜色
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor:SXPColorTool.color(136, 134, 135, alpha: 1), NSAttributedStringKey.font:UIFont.systemFont(ofSize: 10)], for: .normal)
        //选中的颜色
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: HexColor("00DA8C")!, NSAttributedStringKey.font:UIFont.systemFont(ofSize: 10)], for: .selected)
        
        nav.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -2);
        
        self.addChildViewController(nav)
    }
    
    func playSoud() {
        if let path = Bundle.main.path(forResource: "like", ofType: "caf"){
            let soundURL = NSURL.fileURL(withPath: path)
            var soundID: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &soundID)
            AudioServicesPlaySystemSound(soundID);
        }
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        let index = self.tabBar.items?.index(of: item)
        playSoud()
        animation(index!)
    }
    
    func animation(_ index: NSInteger) {

        
    }
    
}
