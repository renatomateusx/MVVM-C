//
//  ApplicationCoordinator.swift
//  MVVM-C
//
//  Created by Renato Mateus on 08/06/21.
//

import UIKit

class ApplicationCoordinator: Coordinator {
    
    private let window: UIWindow
    private let rootViewController: UINavigationController
    private var viewController: LoginCoordinator?
    
    
    init(window: UIWindow){
        self.window = window
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        
        viewController = LoginCoordinator(presenter: rootViewController)
    }
    
    func start() {
        window.rootViewController = rootViewController
        viewController?.start()
        window.makeKeyAndVisible()
    }
    
}
