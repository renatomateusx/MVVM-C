//
//  LoginViewModel.swift
//  MVVM-C
//
//  Created by Renato Mateus on 08/06/21.
//

import Foundation

protocol LoginNavigationDelegate: AnyObject {
  func didTapCad()
  func didLogin()
}

protocol LoginViewModelProtocol: AnyObject {
  func didTapCad()
  func didTapLogin()
}

final class LoginViewModel{
  private let service: LoginService
  weak var navDelegate: LoginNavigationDelegate?
  init(service: LoginService){
    self.service = service
  }
  
}


extension LoginViewModel: LoginViewModelProtocol {
  func didTapLogin(){
    print("Tapped Login")
    if self.service.doLogin(){
      navDelegate?.didLogin()
    }
  }
  
  func didTapCad(){
    print("Tapped Cad")
    navDelegate?.didTapCad()
  }
}
