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
           
       //window?.rootViewController = OnboardingContainerViewController()
       loginViewController.delegate = self
       onboardingContainerViewController.delegate = self
       
       window?.rootViewController = loginViewController
       
//       window?.rootViewController = onboardingContainerViewController
       return true
   }

}

extension AppDelegate: LoginViewControllerDelegate{
    func didLogin() {
        setRootViewController(onboardingContainerViewController)
    }
    
    
}

extension AppDelegate: OnboardingContainerViewControllerDelegate{
    func didFinishOnboarding() {
        print("foo - finished Onbaording page")
    }
}
    

extension AppDelegate{
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
            guard animated, let window = self.window else {
                self.window?.rootViewController = vc
                self.window?.makeKeyAndVisible()
                return
            }

            window.rootViewController = vc
            window.makeKeyAndVisible()
            UIView.transition(with: window,
                              duration: 0.8,
                              options: .transitionCrossDissolve,
                              animations: nil,
                              completion: nil)
        }
}

    
    


