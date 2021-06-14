//
//  SignInView.swift
//  financialGoal
//
//  Created by Jonattan Moises Sousa on 14/06/21.
//

import UIKit

class SignInView: UIView {
    
    // MARK: - Attributes
    
    // label
    let lbSubtitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.frame = .zero
        label.text = "Coisas desse tipo"
        label.font = UIFont(name: "helvetica", size: 30)
        return label
    }()
    
    let lbDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.frame = .zero
        label.text = "Descrição do campo"
        label.font = UIFont(name: "helvetica", size: 16)
        return label
    }()
    
    //TextField
    let txtField: UITextField = {
       let tField = UITextField()
        tField.translatesAutoresizingMaskIntoConstraints = false
        tField.frame = .zero
        tField.borderStyle = UITextField.BorderStyle.roundedRect
        tField.layer.shadowOpacity = 1
        tField.layer.shadowRadius = 3.0
        tField.layer.shadowColor = UIColor.textColor.cgColor
        tField.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        tField.layer.shadowOpacity = 0.2
        tField.placeholder = "algo a ser digitado"
        return tField
    }()
    
    let bttnContinue: UIButton = {
        let bttn = UIButton()
        bttn.translatesAutoresizingMaskIntoConstraints = false
        bttn.frame = .zero
        bttn.backgroundColor = .red
        bttn.layer.cornerRadius = 10
        bttn.setTitleColor(.backgroundColor, for: .normal)
        bttn.setTitle("Continue", for: .normal)
        return bttn
    }()
    
    // MARK: - Methods/ Functions
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createView() {
        self.backgroundColor = .backgroundColor
        alignLbSubtitle()
        alignLbDescription()
        alignTxtField()
        alignBttnContinue()
    }
    func alignLbSubtitle() {
        self.addSubview(lbSubtitle)
        NSLayoutConstraint.activate([
            lbSubtitle.safeAreaLayoutGuide.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            lbSubtitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
        ])
    }
    func alignLbDescription() {
        self.addSubview(lbDescription)
        NSLayoutConstraint.activate([
            lbDescription.topAnchor.constraint(equalTo: lbSubtitle.bottomAnchor, constant: 20),
            lbDescription.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
        ])
    }
    func alignTxtField() {
        self.addSubview(txtField)
        NSLayoutConstraint.activate([
            txtField.topAnchor.constraint(equalTo: lbDescription.bottomAnchor, constant: 20),
            txtField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            txtField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            txtField.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    func alignBttnContinue() {
        self.addSubview(bttnContinue)
        NSLayoutConstraint.activate([
            bttnContinue.topAnchor.constraint(equalTo: txtField.bottomAnchor, constant: 20),
            bttnContinue.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            bttnContinue.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            bttnContinue.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
