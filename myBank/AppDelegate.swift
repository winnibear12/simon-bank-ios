//
//  AppDelegate.swift
//  myBank
//
//  Created by Simon Lee on 2023-05-23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
       
       func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
           
           window = UIWindow(frame: UIScreen.main.bounds)
           window?.makeKeyAndVisible()
           window?.backgroundColor = .orange
//           window?.rootViewController = LoginViewController()
           window?.rootViewController = OnboardingContainerViewController()

           return true
       }

    

}

