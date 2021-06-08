//
//  LoginViewModel.swift
//  MVVM-C
//
//  Created by Renato Mateus on 08/06/21.
//

import Foundation

protocol ResultadoLoginNavigationDelegate: AnyObject {
  func didTapVoltar()
}

protocol ResultadoLoginViewModelProtocol {
  func didTapVoltar()
}

final class ResultadoLoginViewModel {
  weak var navDelegate: ResultadoLoginNavigationDelegate?
  init(){
    
  }
}


extension ResultadoLoginViewModel: ResultadoLoginViewModelProtocol {
  func didTapVoltar() {
    navDelegate?.didTapVoltar()
  }
}
