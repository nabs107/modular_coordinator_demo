//
//  Coordinator.swift
//  ModularProject
//
//  Created by Nabin Shrestha on 7/28/21.
//

import UIKit

public protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
