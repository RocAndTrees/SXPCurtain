//
//  AppDelegate.swift
//  SXPForum
//
//  Created by pxl on 2018/1/11.
//  Copyright © 2018年 lin. All rights reserved.
//

import UIKit
import LeanCloud
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //1. LeanCloud
        registerLeanCloud()
        
        return true
    }
}

