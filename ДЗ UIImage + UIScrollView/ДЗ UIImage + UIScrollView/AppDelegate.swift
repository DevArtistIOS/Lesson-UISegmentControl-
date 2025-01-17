//
//  AppDelegate.swift
//  ДЗ UIImage + UIScrollView
//
//  Created by dream.one on 16.08.2020.
//  Copyright © 2020 Yura Fomin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
     
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let firstVC = ViewController()
        let secondVC = SecondViewController()
        
        let navFirstVC = UINavigationController(rootViewController: firstVC)
        let navSecondVC = UINavigationController(rootViewController: secondVC)
        let tabBar = UITabBarController()
        tabBar.setViewControllers([navFirstVC, navSecondVC], animated: false)
        
        firstVC.tabBarItem = UITabBarItem(title: "Фото", image: UIImage(named: "picture"), tag: 0)
        secondVC.tabBarItem = UITabBarItem(title: "Анкета", image: UIImage(named: "moon"), tag: 0)
            
        
        window?.rootViewController = tabBar
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }


}

