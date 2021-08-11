//
//  LoginViewController.swift
//  Login
//
//  Created by Nabin Shrestha on 6/12/21.
//

import UIKit

public protocol LoginCoordinatorDelegate: AnyObject {
    func dashboard(with name: String)
}

public final class LoginViewController: UIViewController {
    
    public weak var loginCoordinatorDelegate: LoginCoordinatorDelegate?
    
    lazy var dashboardButton: UIButton = {
        let button = UIButton()
        button.setTitle("Goto Dashboard", for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(dashboardButton)
        NSLayoutConstraint.activate([
            dashboardButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dashboardButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dashboardButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc
    func loginButtonTapped() {
        loginCoordinatorDelegate?.dashboard(with: "Nabin Shrestha")
    }
    
}
