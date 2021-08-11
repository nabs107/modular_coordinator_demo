//
//  LoginCoordinator.swift
//  ModularProject
//
//  Created by Nabin Shrestha on 7/28/21.
//

import UIKit
import Login

final class LoginCoordinator: Coordinator, LoginCoordinatorDelegate {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        viewController.loginCoordinatorDelegate = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func dashboard(with name: String) {
        let coordinator = DashboardCoordinator(navigationController: navigationController)
        childCoordinators.append(coordinator)
        coordinator.start(with: name)
    }
}
