//
//  DashboardViewController.swift
//  Dashboard
//
//  Created by Nabin Shrestha on 7/28/21.
//

import UIKit

public protocol DashboardCoordinatorDelegate: AnyObject {
    func backToMain()
}

public final class DashboardViewController: UIViewController {
    
    public weak var dashboardCoordinatorDelegate: DashboardCoordinatorDelegate?
    
    lazy var goToMainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Goto Main", for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(goToMainButtonTapped), for: .touchUpInside)
        return button
    }()
    
    public var name: String?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print(name as Any)
        view.backgroundColor = .gray
        
        view.addSubview(goToMainButton)
        NSLayoutConstraint.activate([
            goToMainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToMainButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            goToMainButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc
    func goToMainButtonTapped() {
        dashboardCoordinatorDelegate?.backToMain()
    }
    
}
