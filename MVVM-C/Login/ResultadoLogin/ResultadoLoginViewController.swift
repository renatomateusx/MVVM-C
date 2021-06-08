//
//  ResultadoLoginViewController.swift
//  MVVM-C
//
//  Created by Renato Mateus on 08/06/21.
//

import UIKit

class ResultadoLoginViewController: UIViewController {
  
  //MARK: Properties
  let viewModel: ResultadoLoginViewModelProtocol
  
  private lazy var label: UILabel = {
    let label = UILabel()
    label.text = "Login Successfull!"
    label.font = UIFont.systemFont(ofSize: 16)
    label.textColor = .black
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var voltarButton: UIButton = {
    let button = UIButton()
    button.setTitle("Voltar", for: .normal)
    button.addTarget(self, action: #selector(didTapVoltar), for: .touchUpInside)
    button.layer.cornerRadius = 5
    button.backgroundColor = .green
    button.titleLabel?.textColor = .white
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  //MARK: Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
  }
  
  
  init(viewModel: ResultadoLoginViewModelProtocol){
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
    view.addSubview(voltarButton)
   
    
    NSLayoutConstraint.activate([
      label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
      label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
      label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
      label.heightAnchor.constraint(equalToConstant: 40),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
      
      voltarButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 150),
      voltarButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
      voltarButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
      voltarButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      voltarButton.heightAnchor.constraint(equalToConstant: 42),
    
    ])
  }
  
  //MARK: Selectors
  
  @objc func didTapVoltar(){
    viewModel.didTapVoltar()
  }
}
