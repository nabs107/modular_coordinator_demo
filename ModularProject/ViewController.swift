//
//  ViewController.swift
//  ModularProject
//
//  Created by Nabin Shrestha on 6/12/21.
//

import UIKit

protocol ViewControllerCoordinatorDelegate: AnyObject {
    func login()
}

class ViewController: UIViewController {
    
    public weak var viewControllerCoordinatorDelegate: ViewControllerCoordinatorDelegate?

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    @objc
    func loginButtonTapped(_ sender: UIButton) {
        viewControllerCoordinatorDelegate?.login()
    }
}

