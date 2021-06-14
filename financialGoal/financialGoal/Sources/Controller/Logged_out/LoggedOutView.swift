//
//  LoggedOutView.swift
//  financialGoal
//
//  Created by Renilson Moreira Ferreira on 14/06/21.
//

import UIKit

class LoggedOutView: UIView {
    
    //MARK: Actions
    
    
    //MARK: BUTTONS
    let buttonCreateAccount: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = .zero
        button.layer.cornerRadius = 6
        button.backgroundColor = .systemGreen
        button.setTitle("CRIAR CONTA", for: .normal)
        button.tintColor = .gray
        return button
    }()
    
    let buttonLogin: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = .zero
        button.layer.cornerRadius = 6
        button.backgroundColor = .black
        button.setTitle("Login", for: .normal)
        button.tintColor = .gray
        return button
    }()
    
    //MARK: Constraints
    
    func setButtonCreateAccount(){
       buttonCreateAccount.addTarget(self, action: #selector(createAccountActionButton), for: .touchUpInside)
      
       addSubview(buttonCreateAccount)
       NSLayoutConstraint.activate([
           buttonCreateAccount.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -144),
           buttonCreateAccount.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
           buttonCreateAccount.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
           buttonCreateAccount.heightAnchor.constraint(equalToConstant: 48)
       ])
   }
    
    func setButtonLogin() {
       buttonLogin.addTarget(self, action: #selector(loginActionButton), for: .touchUpInside)
        
       addSubview(buttonLogin)
       NSLayoutConstraint.activate([
           buttonLogin.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -77),
           buttonLogin.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
           buttonLogin.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
           buttonLogin.heightAnchor.constraint(equalToConstant: 48)
       ])
   }
   
   
    
    //MARK: Actions
    @objc
    func createAccountActionButton(sender: UIButton!) {
        print("Button create account acionado")
    }
    
    @objc
    func loginActionButton(sender: UIButton!) {
        print("Button login acionado")

    }
    
    
    //MARK: Cria e seta os buttons
    override init(frame: CGRect) {
        super.init(frame: frame)
        createViewButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createViewButton(){
        self.backgroundColor = .gray
        setButtonCreateAccount()
        setButtonLogin()

    }
    
}
