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
  var applicationCoordinator: ApplicationCoordinator?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let window = UIWindow()
    window.makeKeyAndVisible()
    let appCorodinator = ApplicationCoordinator(window: window)
    self.window = window
    self.applicationCoordinator = appCorodinator
    appCorodinator.start()
    
    return true
  }



}

