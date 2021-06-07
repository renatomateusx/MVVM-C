//
//  AppDelegate.swift
//  MVVM-C
//
//  Created by Renato Mateus on 07/06/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    window = UIWindow()
    window?.makeKeyAndVisible()
    window?.rootViewController = UINavigationController(rootViewController: ViewController())
    
    return true
  }



}

