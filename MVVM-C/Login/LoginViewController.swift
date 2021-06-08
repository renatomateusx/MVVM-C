//
//  LoginViewController.swift
//  MVVM-C
//
//  Created by Renato Mateus on 08/06/21.
//

import UIKit

class LoginViewController: UIViewController {
  
  //MARK: Properties
  let viewModel: LoginViewModelProtocol
  
  private lazy var label: UILabel = {
    let label = UILabel()
    label.text = "Click on Button"
    label.font = UIFont.systemFont(ofSize: 16)
    label.textColor = .black
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var button: UIButton = {
    let button = UIButton()
    button.setTitle("Login", for: .normal)
    button.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
    button.layer.cornerRadius = 5
    button.backgroundColor = .red
    button.titleLabel?.textColor = .white
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private lazy var cadButton: UIButton = {
    let button = UIButton()
    button.setTitle("Sign Up", for: .normal)
    button.addTarget(self, action: #selector(didTapCad), for: .touchUpInside)
    button.layer.cornerRadius = 5
    button.backgroundColor = .orange
    button.titleLabel?.textColor = .white
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  //MARK: Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureView()
  }
  
  override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      navigationController?.setNavigationBarHidden(true, animated: animated)
  }

  
  init(viewModel: LoginViewModelProtocol){
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: .main)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: Helpers
  
  func configureView(){
    view.backgroundColor = .white
    
    view.addSubview(label)
    view.addSubview(button)
    view.addSubview(cadButton)
    
    NSLayoutConstraint.activate([
      label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
      label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
      label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
      label.heightAnchor.constraint(equalToConstant: 40),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
      
      button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 150),
      
      button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
      button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
      button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      button.heightAnchor.constraint(equalToConstant: 42),
      
      
      cadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      cadButton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 80),
      cadButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
      cadButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
      cadButton.heightAnchor.constraint(equalToConstant: 42)
    ])
  }
  
  //MARK: Selectors
  @objc func didTapLogin(){
    viewModel.didTapLogin()
  }
  
  @objc func didTapCad(){
    viewModel.didTapCad()
  }
  
  
}
