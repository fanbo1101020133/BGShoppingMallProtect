//
//  AppDelegate.swift
//  ShoppingMallProtect
//
//  Created by 慧流 on 16/11/14.
//  Copyright © 2016年 范博. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let TabBarId = "BoGeTabBarViewController"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)        
        guard let navigationController = self.initialViewController() else {
            fatalError("初始 VC 错误")
        }
        
        if navigationController is UITabBarController{
            
            let  HomeVc = BoGeStoryboard.shareSB[.BoGeMain].instantiateViewController(withIdentifier: "homeVc")
            HomeVc.tabBarItem.image=UIImage.reSizeImage(image: UIImage(named:"聚焦化学-首页、新闻等640-1136-39")!, reSize: CGSize(width: 60, height:80))
            
            let HomeVc1 = BoGeStoryboard.shareSB[.BoGeMain].instantiateViewController(withIdentifier: "newsVc")
            HomeVc1.tabBarItem.image=UIImage.reSizeImage(image: UIImage(named:"聚焦化学-首页、新闻等640-1136-39")!, reSize: CGSize(width: 60, height:80))
            
            let HomeVc2 = BoGeStoryboard.shareSB[.BoGeMain].instantiateViewController(withIdentifier: "jujiaoVc")
            HomeVc2.tabBarItem.image=UIImage.reSizeImage(image: UIImage(named:"聚焦化学-首页、新闻等640-1136-39")!, reSize: CGSize(width: 60, height:80))
            
            let HomeVc3 = BoGeStoryboard.shareSB[.BoGeMain].instantiateViewController(withIdentifier: "mineVc")
            HomeVc3.tabBarItem.image=UIImage.reSizeImage(image: UIImage(named:"聚焦化学-首页、新闻等640-1136-39")!, reSize: CGSize(width: 60, height:80))
            


        }
        
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

extension AppDelegate {
    
    func initialViewController() -> UIViewController? {
            return BoGeStoryboard.shareSB[.BoGeMain].instantiateInitialViewController()

    }
}
