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
    
    let loginViewController = LoginViewController()
    let onboardingContainerViewController = OnboardingContainerViewController()
    
       
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
       window = UIWindow(frame: UIScreen.main.bounds)
       window?.makeKeyAndVisible()
       window?.backgroundColor = .orange
//           window?.rootViewController = LoginViewController()
       //window?.rootViewController = OnboardingContainerViewController()
       loginViewController.delegate = self
       onboardingContainerViewController.delegate = self
       
       window?.rootViewController = onboardingContainerViewController
       return true
   }

}

extension AppDelegate: LoginViewControllerDelegate{
    func didLogin() {
        print("foo - Did login")
    }
    
    
}

extension AppDelegate: OnboardingContainerViewControllerDelegate{
    func didFinishOnboarding() {
        print("foo - finished Onbaording page")
    }
    

}

