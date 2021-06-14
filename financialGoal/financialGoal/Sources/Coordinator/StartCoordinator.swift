//
//  StartCoordinator.swift
//  financialGoal
//
//  Created by Moacir Lamego on 14/06/21.
//

import Foundation
import UIKit

public class StartCoordinator: Coordinator {
    let navigationController: UINavigationController
   
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let loggedOutViewController = LoggedOutViewController()
        self.navigationController.pushViewController(loggedOutViewController, animated: true)
    }
   
}
