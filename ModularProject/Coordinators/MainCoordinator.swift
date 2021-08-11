//
//  MainCoordinator.swift
//  ModularProject
//
//  Created by Nabin Shrestha on 7/28/21.
//

import UIKit
import Login

final class MainCoordinator: Coordinator, ViewControllerCoordinatorDelegate {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as! ViewController
        viewController.viewControllerCoordinatorDelegate = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func login() {
        let coordinator = LoginCoordinator(navigationController: navigationController)
        childCoordinators.append(coordinator)
        coordinator.start()
    }
}
