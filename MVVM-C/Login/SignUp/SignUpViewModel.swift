//
//  SignUpViewModel.swift
//  MVVM-C
//
//  Created by Renato Mateus on 08/06/21.
//


import Foundation

protocol SignUpNavigationDelegate: AnyObject {
  func didAccountAlready()
}

protocol SignUpViewModelProtocol: AnyObject {
  func didAccountAlready()
}

final class SignUpViewModel{
  private let service: LoginService
  weak var navDelegate: SignUpNavigationDelegate?
  init(service: LoginService){
    self.service = service
  }  
}


extension SignUpViewModel: SignUpViewModelProtocol {
  func didAccountAlready() {
    navDelegate?.didAccountAlready()
  }
}
