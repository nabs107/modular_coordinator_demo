//
//  DashboardCoordinator.swift
//  ModularProject
//
//  Created by Nabin Shrestha on 7/28/21.
//

import UIKit
import Dashboard

final class DashboardCoordinator: Coordinator, DashboardCoordinatorDelegate {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
    func start(with name: String) {
        let viewController = DashboardViewController()
        viewController.dashboardCoordinatorDelegate = self
        viewController.name = name
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func backToMain() {
        if let viewController = navigationController.viewControllers.filter( { $0.isKind(of: ViewController.self ) }).first {
            navigationController.popToViewController(viewController, animated: true)
        }
    }
    
}
