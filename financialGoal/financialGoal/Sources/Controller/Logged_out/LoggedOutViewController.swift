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
      
        
        loggedOutView.addToViewControllerPageControl(view: view)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
    }
    
    override func loadView() {
        self.view = loggedOutView
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loggedOutView.setFramePageScroll(view: view)
    }
}
