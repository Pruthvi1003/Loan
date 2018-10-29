//
//  MainTabBarController.swift
//  Loan
//
//  Created by Pruthvi  on 29/10/18.
//  Copyright © 2018 Fanruan. All rights reserved.
//

import UIKit


class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.isTranslucent = false
        self.navigationBar.barTintColor = UIColor.init(red: 231/255, green: 78/255, blue: 70/255, alpha: 1.0)
        let textAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
        self.navigationBar.titleTextAttributes = textAttributes
        self.view.backgroundColor = UIColor.white
        self.navigationBar.shadowImage = UIImage()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        let backItem = UIBarButtonItem()
        backItem.title = ""
        viewController.navigationItem.backBarButtonItem = backItem
        super.pushViewController(viewController, animated: animated)
    }
    
}



class MainTabBarController: UITabBarController,UITabBarControllerDelegate {

    var lastViewController = UIViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUpAllViewControllers()

        self.delegate = self
        lastViewController = self.childViewControllers.first!
        self.view.backgroundColor = UIColor.white
        self.tabBar.isTranslucent = false
        //去除tabbar顶部的黑线
        self.tabBar.shadowImage = UIImage()
//        self.tabBar.backgroundImage = initWithImage(color:RGBA(r: 246, g: 246, b: 246, a: 0.8))
    }
    
    func initWithImage(color:UIColor)->UIImage{
        let rect = CGRect(x: 0,y: 0,width: 1,height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    func setUpAllViewControllers(){
        
        let home = HomeViewController()
        let homeNav = NavigationController(rootViewController: home)
        self.addChildViewController(homeNav)
        homeNav.tabBarItem.image = UIImage(named: "Home")?.withRenderingMode(.alwaysOriginal)
        homeNav.tabBarItem.selectedImage = UIImage(named: "Home")?.withRenderingMode(.alwaysOriginal)
        homeNav.title = "首页"
        
        let prod = ProductViewController()
        let prodNav = NavigationController(rootViewController: prod)
        self.addChildViewController(prodNav)
        prodNav.tabBarItem.image = UIImage(named: "Product")?.withRenderingMode(.alwaysOriginal)
        prodNav.tabBarItem.selectedImage = UIImage(named: "Product")?.withRenderingMode(.alwaysOriginal)
        prodNav.title = "产品"
        
        
        let prof = ProfileViewController()
        let profNav = NavigationController(rootViewController: prof)
        self.addChildViewController(profNav)
        profNav.tabBarItem.image = UIImage(named: "Profile")?.withRenderingMode(.alwaysOriginal)
        profNav.tabBarItem.selectedImage = UIImage(named: "Profile")?.withRenderingMode(.alwaysOriginal)
        profNav.title = "我的"
        
        
        
    }
}
