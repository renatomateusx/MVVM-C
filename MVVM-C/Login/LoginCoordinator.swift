//
//  LoginCoordinator.swift
//  MVVM-C
//
//  Created by Renato Mateus on 08/06/21.
//

import UIKit

class LoginCoordinator: Coordinator {
  private let presenter: UINavigationController
  private var viewController: LoginViewController?
  
  init(presenter: UINavigationController){
    self.presenter = presenter
  }
  
  func start(){
    let service = LoginService()
    let viewModel = LoginViewModel(service: service)
    viewModel.navDelegate = self
    let viewController = LoginViewController(viewModel: viewModel)
    self.viewController = viewController
    
    self.presenter.pushViewController(viewController, animated: true)
  }
}


extension LoginCoordinator: LoginNavigationDelegate {
  func didTapCad() {
    let service = LoginService()
    let viewModel = SignUpViewModel(service: service)
    viewModel.navDelegate = self
    let viewController = SignUpViewController(viewModel: viewModel)
    self.presenter.pushViewController(viewController, animated: true)
  }
  
  func didLogin() {
    let viewModel = ResultadoLoginViewModel()
    viewModel.navDelegate = self
    let viewController = ResultadoLoginViewController(viewModel: viewModel)
    self.presenter.pushViewController(viewController, animated: true)
  }
}

extension LoginCoordinator: ResultadoLoginNavigationDelegate {
  func didTapVoltar() {
    self.presenter.popViewController(animated: true)
  }
}


extension LoginCoordinator: SignUpNavigationDelegate {
  func didAccountAlready() {
    self.presenter.popViewController(animated: true)
  }
}
