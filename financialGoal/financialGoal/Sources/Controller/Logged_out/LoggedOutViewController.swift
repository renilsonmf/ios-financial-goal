//
//  LoggedOutViewController.swift
//  financialGoal
//
//  Created by Renilson Moreira Ferreira on 14/06/21.
//

import UIKit

class LoggedOutViewController: UIViewController {
    
    let loggedOutView = LoggedOutView(frame: .zero)
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    override func loadView() {
        self.view = loggedOutView
    }
}
